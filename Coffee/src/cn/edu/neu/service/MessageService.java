package cn.edu.neu.service;

import java.util.List;

import cn.edu.neu.core.common.Page;
import cn.edu.neu.model.Message;

public interface MessageService {
  List<Message> getAllMessage();

  void insert(Message message);

Page<Message> getAdminSearchMessages(String messageId, String messageName);

void delete(String messageId);

void doHandleMessage(Message message);

Message getMessageById(String messageId);

}
