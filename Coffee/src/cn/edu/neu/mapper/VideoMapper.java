package cn.edu.neu.mapper;

import java.util.List;

import javax.annotation.Resource;

import cn.edu.neu.model.Video;

public interface VideoMapper {

	@Resource
	 List<Video> getAllVideo();

	Video getVideoDetailById(String videoId);

	void addFavoriteVideo(int loginUserId, String videoId, String typId);

}
