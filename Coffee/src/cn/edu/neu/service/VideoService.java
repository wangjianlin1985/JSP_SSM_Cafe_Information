package cn.edu.neu.service;

import java.util.List;

import cn.edu.neu.model.Comment;
import cn.edu.neu.model.Video;


public interface VideoService {
	public List<Video> getAllVideo();

	public Video getVideoDetailById(String videoId);

	public void addFavoriteVideo(String videoId, String typId, int loginUserId);

//	public Video getVideoCommentById(String videoId);
	
//	public List<Comment> getVideoCommentById(String videoId);
}
