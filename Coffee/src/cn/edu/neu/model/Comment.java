package cn.edu.neu.model;

public class Comment {
	
	private int commentId;
	
	private int videoId;
	
	private String commentContent;
	
	private String commentDate;
	
	private int userId;
	
	private String userName;
	
	public Comment(int commentId, int videoId, String commentContent, String commentDate, int userId, String userName) {
		super();
		this.commentId = commentId;
		this.videoId = videoId;
		this.commentContent = commentContent;
		this.commentDate = commentDate;
		this.userId = userId;
		this.userName = userName;
	}
	
	public int getCommentId() {
		return commentId;
	}
	public void setCommentId(int commentId) {
		this.commentId = commentId;
	}
	public int getVideoId() {
		return videoId;
	}
	public void setVideoId(int videoId) {
		this.videoId = videoId;
	}
	public String getCommentContent() {
		return commentContent;
	}
	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}
	public String getCommentDate() {
		return commentDate;
	}
	public void setCommentDate(String commentDate) {
		this.commentDate = commentDate;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
}
