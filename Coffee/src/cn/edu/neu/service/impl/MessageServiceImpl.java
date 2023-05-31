package cn.edu.neu.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.edu.neu.core.common.Page;
import cn.edu.neu.mapper.MessageMapper;
import cn.edu.neu.model.Message;
import cn.edu.neu.service.MessageService;

@Service
@Transactional
public class MessageServiceImpl implements MessageService {
  @Autowired
  private MessageMapper mapper;

  @Override
  public List<Message> getAllMessage() {
    List<Message> messages = mapper.findAllMessage();
    return messages;
  }

  @Override
  public void insert(Message message) {
    // TODO Auto-generated method stub
    mapper.insert(message);

  }

@Override
public Page<Message> getAdminSearchMessages(String messageId, String messageName) {
	   String[] messageNames = null;
	    if (messageName != null)
	      messageNames = messageName.split(" ");
	    Page<Message> page = new Page<Message>(15);
	    Map<String, Object> m = new HashMap<String, Object>();
	    m.put("messageId", messageId);
	    m.put("messageNames",messageNames);
	    System.out.println("=========="+m);
	    page.setParams(m);
	    List<Message> messageList = mapper.findMessageBySearchKeyword(page);
	    page.setList(messageList);
	    return page;
}

@Override
public void delete(String messageId) {
	// TODO Auto-generated method stub
	mapper.delete(messageId);
}

@Override
public void doHandleMessage(Message message) {
	// TODO Auto-generated method stub
	mapper.doHandleInformation(message);
}

@Override
public Message getMessageById(String messageId) {
	// TODO Auto-generated method stub
	return mapper.findMessageById(messageId);
}

}
