#include "protocol.h"

#include <string>
#include <vector>

std::vector<char> Message::serialize_message() {
  std::vector<char> data;

  data.insert(data.end(), reinterpret_cast<const char *>(&msg_t),
              reinterpret_cast<const char *>(&msg_t) + sizeof(msg_t));

  uint32_t username_length = username.size();
  data.insert(data.end(), reinterpret_cast<const char *>(&username_length),
              reinterpret_cast<const char *>(&username_length) +
                  sizeof(username_length));

  data.insert(data.end(), username.begin(), username.end());

  uint32_t text_length = text.size();
  data.insert(data.end(), reinterpret_cast<const char *>(&text_length),
              reinterpret_cast<const char *>(&text_length) +
                  sizeof(text_length));

  data.insert(data.end(), text.begin(), text.end());

  return data;
}

Message Message::deserialize_message(const std::vector<char> &data) {
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
