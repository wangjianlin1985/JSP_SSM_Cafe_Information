package cn.edu.neu.action;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cn.edu.neu.core.common.Page;
import cn.edu.neu.model.Message;
import cn.edu.neu.service.MessageService;

@Controller
@RequestMapping("/admin/message")
public class AdminMessageAction extends BaseAction{
	@Autowired
	MessageService messageService;
	@RequestMapping("/getAdminMessages")
	  public String getAdminMessages(@RequestParam(required = false) String messageId, @RequestParam(required = false) String messageName,
			    Map<String, Object> m) {
		Page<Message> messages=messageService.getAdminSearchMessages( messageId,messageName);
		m.put("messages", messages);
		return "/admin/message/messageList";
	}
	@RequestMapping("/delMessage")
	  public String delMessage(String messageId,Map<String, Object> m, @RequestParam(required = false) String messageName) {
		messageService.delete(messageId);
		Page<Message> messages=messageService.getAdminSearchMessages(messageId,messageName);
		m.put("messages", messages);
		return "/admin/message/messageList";
	}
	@RequestMapping("/doHandleMessage")
	  public String doHandleMessage(Message message) {
		messageService.doHandleMessage(message);
		System.out.println("~~~~~~");
		//System.out.println(messageName+"messageName");
		//System.out.println(messageId+"messageId");
	//	System.out.println("~~~~~~");
	    return "redirect:/admin/message/getAdminMessages";
	  }
	 @RequestMapping("/handleMessage")
	  public String handleMessage(@RequestParam(required = false) String messageId, Map<String, Object> m) {
	    if (messageId != null && !messageId.equals("")) {
	      Message message = messageService.getMessageById(messageId);
	      m.put("message", message);
	    }
	   
	    return "/admin/message/handleMessage";
}
	
}
