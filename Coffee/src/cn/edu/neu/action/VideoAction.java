package cn.edu.neu.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.edu.neu.core.common.Page;
import cn.edu.neu.model.Coffee;
import cn.edu.neu.model.Video;
import cn.edu.neu.service.VideoService;

@Controller
@RequestMapping("/video")
public class VideoAction extends BaseAction {

	@Autowired
	private VideoService videoService;

	@ResponseBody
	@RequestMapping("/getAllVideoList")
	public Map<String, List<Video>> getAllVideo() {
		List<Video> video = videoService.getAllVideo();
		Map<String, List<Video>> m = new HashMap<String, List<Video>>();
		m.put("video", video);
		return m;
	}

	@RequestMapping("/getAllVideo")
	public String getAllVideo(Map<String, List<Video>> m) {

		List<Video> videoList = videoService.getAllVideo();

		m.put("videoList", videoList);

		return "video/videoList";
	}

	@RequestMapping("/getVideoDetailById")
	public String getVideoDetailById(@RequestParam String videoId, Map<String, Video> m) {
		Video videoDetail = videoService.getVideoDetailById(videoId);
		m.put("videoDetail", videoDetail);
		return "video/videoDetail";
	}
/*	@RequestMapping("/addFavoriteVideo")
	public String addFavorite(@RequestParam String videoId,@RequestParam String typId,
			Map<String,Page<Coffee>> m){
		try{
			videoService.addFavoriteVideo(videoId,typId,this.getLoginUserId());
			this.addMessage("收藏成功");
			this.addRedirURL("返回", "/wine/getVideoDetailById?videoId="+videoId);
		}
		catch(Exception e){
			e.printStackTrace();
			this.addMessage("已收藏过");
			this.addRedirURL("返回", "@back");
		}
		return EXECUTE_RESULT;
	}
*/
//	@RequestMapping("/getVideoCommentById")
//	public Map<String, List<Comment>> getVideoCommentById(@RequestParam String videoId) {
//
//		List<Comment> videoComment = videoService.getVideoCommentById(videoId);
//		
//		Map<String, List<Comment>> m = new HashMap<String, List<Comment>>();
//		
//		m.put("videoComment", videoComment);
//		
//		System.out.println("#####"+videoComment);
//		return m;
//	}
//	@RequestMapping("/getVideoCommentById")
//	public String getVideoCommentById(@RequestParam String videoId,Map<String, List<Comment>> m) {
//
//		List<Comment> videoComment = videoService.getVideoCommentById(videoId);
//		
//		m.put("videoComment", videoComment);
//		
//		System.out.println("#####"+videoComment);
//		return "video/videoComment";
//	}

}
