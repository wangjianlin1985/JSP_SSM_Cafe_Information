package cn.edu.neu.action;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cn.edu.neu.model.Message;
import cn.edu.neu.service.MessageService;

@Controller
@RequestMapping("/message")
public class MessageAction extends BaseAction {
  @Autowired
  private MessageService messageService;

  @RequestMapping("/getAllMessage")
  public String getAllMessageList(Map<String, List<Message>> m) {
    List<Message> messages = messageService.getAllMessage();
    m.put("messages", messages);
    return "/message/messageList";
  }
  @RequestMapping("/insert")
	public String searchWine(HttpServletRequest request,@RequestParam String keyword,Map<String, List<Message>> m) {
		System.out.println(keyword);
		Message message=new Message();
		message.setMessageUserName(getLoginUserName());
		message.setMessageContent(keyword);
		messageService.insert(message);
		List<Message> messages = messageService.getAllMessage();
	    m.put("messages", messages);
		return "/message/messageList";
	}

}
