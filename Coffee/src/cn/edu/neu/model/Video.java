package cn.edu.neu.model;

import java.util.List;

import javax.xml.crypto.Data;

public class Video {

	private int videoId;
	
	private int userId;
	
	private String videoContent;
	
	private String videoDisc;
	
	private String videoDate;
	
	private String videoPic;
	
	private String videoName;
	
	private String videoUser;
	
	private String videoDesc;
	
	private List<Comment> comment;

	public String getVideoUser() {
		return videoUser;
	}

	public void setVideoUser(String videoUser) {
		this.videoUser = videoUser;
	}

	public String getVideoDesc() {
		return videoDesc;
	}

	public void setVideoDesc(String videoDesc) {
		this.videoDesc = videoDesc;
	}

	public String getVideoPic() {
		return videoPic;
	}

	public void setVideoPic(String videoPic) {
		this.videoPic = videoPic;
	}

	public String getVideoName() {
		return videoName;
	}

	public void setVideoName(String videoName) {
		this.videoName = videoName;
	}

	public int getVideoId() {
		return videoId;
	}

	public void setVideoId(int videoId) {
		this.videoId = videoId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getVideoContent() {
		return videoContent;
	}

	public void setVideoContent(String videoContent) {
		this.videoContent = videoContent;
	}

	public String getVideoDisc() {
		return videoDisc;
	}

	public List<Comment> getComment() {
		return comment;
	}

	public void setComment(List<Comment> comment) {
		this.comment = comment;
	}

	public void setVideoDisc(String videoDisc) {
		this.videoDisc = videoDisc;
	}

	public String getVideoDate() {
		return videoDate;
	}

	public void setVideoDate(String videoDate) {
		this.videoDate = videoDate;
	}


}
