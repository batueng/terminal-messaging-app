#include "Session.h"
#include "protocol.h"
#include <iostream>

Session::Session(std::string &_name) : name(_name), id(id_count++) {}

void Session::handle_session() {
  while (true) {
    boost::unique_lock<boost::mutex> msg_lock(msg_mtx);
    while (messages.empty()) {
      msg_cv.wait(msg_lock);
    }

    broadcast_msg();
  }
}

void Session::broadcast_msg() {
  boost::unique_lock<boost::shared_mutex> brdcst_lock(usr_mtx);
  std::cout << "Broadcasting messages!" << std::endl;
  Message msg;
  {
    boost::unique_lock<boost::mutex> msg_lock(msg_mtx);
    msg = messages.front();
    messages.pop();
  }

  const std::vector<char> serialized_msg = msg.serialize_message(msg);

  for (auto &user : users) {
    tcp_hdr_t chat_hdr;
    chat_hdr.method = tcp_method::CHAT;
    chat_hdr.data_len = sizeof(serialized_msg);
    std::memcpy(chat_hdr.session_name, name.c_str(), MAX_SESSION_NAME);
    std::memcpy(chat_hdr.username, user->name.c_str(), MAX_USERNAME);

    user->send_len(&chat_hdr, sizeof(chat_hdr));
    // TODO: Think I still need to actually send message also
    user->send_len(serialized_msg.data(), sizeof(serialized_msg)); 
  }
}

void Session::queue_msg(Message &msg) {
  boost::unique_lock<boost::mutex> msg_lock(msg_mtx);
  std::cout << "Queuing message: " << msg.text << std::endl;
  messages.push(msg);
  msg_cv.notify_one();
}

void Session::add_user(std::shared_ptr<UserSocket> user) {
  boost::unique_lock<boost::shared_mutex> brdcst_lock(usr_mtx);
  std::cout << "User added to session " << name << ": " << user->get_name() << std::endl;
  users.insert(user);
}

Message Message::deserialize_message(const std::vector<char>& data) {
  Message msg;

  size_t offset = 0;

  memcpy(&msg.msg_t, data.data() + offset, sizeof(msg.msg_t));
  offset += sizeof(msg.msg_t);

  uint32_t username_length;
  memcpy(&username_length, data.data() + offset, sizeof(username_length));
  offset += sizeof(username_length);

  msg.username = std::string(data.data() + offset, username_length);
  offset += username_length;

  uint32_t text_length;
  memcpy(&text_length, data.data() + offset, sizeof(text_length));
  offset += sizeof(text_length);

  msg.text = std::string(data.data() + offset, text_length);

  return msg;
}

std::vector<char> Message::serialize_message(const Message& msg) {
  std::vector<char> data;

  data.insert(data.end(),
              reinterpret_cast<const char*>(&msg.msg_t),
              reinterpret_cast<const char*>(&msg.msg_t) + sizeof(msg.msg_t));
        
  uint32_t username_length = msg.username.size();
  data.insert(data.end(),
              reinterpret_cast<const char*>(&username_length),
              reinterpret_cast<const char*>(&username_length) + sizeof(username_length));

  data.insert(data.end(), msg.username.begin(), msg.username.end());

  uint32_t text_length = msg.text.size();
  data.insert(data.end(),
              reinterpret_cast<const char*>(&text_length),
              reinterpret_cast<const char*>(&text_length) + sizeof(text_length));

  data.insert(data.end(), msg.text.begin(), msg.text.end());

  return data;
} 
