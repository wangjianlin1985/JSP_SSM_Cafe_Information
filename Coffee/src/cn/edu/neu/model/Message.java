package cn.edu.neu.model;

public class Message {
  private int messageId;
  private String messageContent;
  private String messageUserName;
  public int getMessageId() {
    return messageId;
  }

  public void setMessageId(int messageId) {
    this.messageId = messageId;
  }

  public String getMessageContent() {
    return messageContent;
  }

  public void setMessageContent(String messageContent) {
    this.messageContent = messageContent;
  }

  public String getMessageUserName() {
    return messageUserName;
  }

  public void setMessageUserName(String messageUserName) {
    this.messageUserName = messageUserName;
  }

  public Message() {
    super();
    // TODO Auto-generated constructor stub
  }

  public Message(int messageId, String messageContent, String messageUserName) {
    super();
    this.messageId = messageId;
    this.messageContent = messageContent;
    this.messageUserName = messageUserName;
  }

}