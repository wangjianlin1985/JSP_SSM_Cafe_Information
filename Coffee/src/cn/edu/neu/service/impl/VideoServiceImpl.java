package cn.edu.neu.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.edu.neu.mapper.VideoMapper;
import cn.edu.neu.model.Comment;
import cn.edu.neu.model.Video;
import cn.edu.neu.service.VideoService;


@Service
@Transactional 
public class VideoServiceImpl implements VideoService{

	@Autowired
	private VideoMapper mapper;
	
	@Override
	public List<Video> getAllVideo() {
		// TODO Auto-generated method stub
		List<Video> list=mapper.getAllVideo();
		
		return list;
	}

	@Override
	public Video getVideoDetailById(String videoId) {
		// TODO Auto-generated method stub
		Video videoDetail = mapper.getVideoDetailById(videoId);
		return videoDetail;
	}

	@Override
	public void addFavoriteVideo(String videoId, String typId, int loginUserId) {
		// TODO Auto-generated method stub
		mapper.addFavoriteVideo(loginUserId,videoId,typId);   
	}


}
