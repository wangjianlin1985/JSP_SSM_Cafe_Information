package cn.edu.neu.mapper;

import java.util.List;

import cn.edu.neu.core.common.Page;
import cn.edu.neu.model.Message;

public interface MessageMapper {
  List<Message> findAllMessage();

  int insert(Message message);

List<Message> findMessageBySearchKeyword(Page<Message> page);

void delete(String messageId);

void doHandleInformation(Message message);

Message findMessageById(String messageId);
}
