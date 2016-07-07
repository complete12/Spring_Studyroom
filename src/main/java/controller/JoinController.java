package controller;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import logic.Comment;
import logic.Join;
import logic.JoinService;
import logic.User;
import utils.WebConstants;

@Controller
public class JoinController {
	
	@Autowired
	private JoinService joinService;
	
	@RequestMapping
	public ModelAndView list(HttpSession session) {

		// 상품 목록 정보를 취득
		List<Join> joinList = this.joinService.getNoticeList();

		// 모델 생성
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("joinList", joinList);

		// 반환값이 될 ModelAndView 인스턴스 생성
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addAllObjects(model);

		User loginUser = (User) session.getAttribute(WebConstants.USER_KEY);
		if (loginUser != null) {
			modelAndView.addObject("loginUser", loginUser);
		}

		return modelAndView;
	}
	
	@RequestMapping(value = "/join/content")
	public ModelAndView content(Integer content_id, HttpSession session){
		this.joinService.clicksUp(content_id);
		Join join = this.joinService.getContentByContentID(content_id);
		List<Comment> commentList = this.joinService.getCommentByContentID(content_id);

		// 모델 생성
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("join", join);
		model.put("commentList", commentList);

		// 반환값이 되는 ModelAndView 인스턴스를 생성
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addAllObjects(model);

		// 로그인 유저 취득
		User loginUser = (User) session.getAttribute(WebConstants.USER_KEY);
		if (loginUser != null) {
			modelAndView.addObject("loginUser", loginUser);
		}
		return modelAndView;
	}
	
	@RequestMapping(value = "/join/modify")
	public ModelAndView modify(Integer content_id, HttpSession session){
		Join join = this.joinService.getContentByContentID(content_id);

		// 모델 생성
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("join", join);

		// 반환값이 되는 ModelAndView 인스턴스를 생성
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addAllObjects(model);

		// 로그인 유저 취득
		User loginUser = (User) session.getAttribute(WebConstants.USER_KEY);
		if (loginUser != null) {
			modelAndView.addObject("loginUser", loginUser);
		}
		return modelAndView;
	}
	
	
	@RequestMapping(value = "/join/delete")
	public String delete(Integer content_id, HttpSession session){		
		this.joinService.delete(content_id);
		return "redirect:/join/list.html";		
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public String write(@ModelAttribute Join join, HttpSession session){
		join.setClicks(0);
		join.setWrite_time(new Date(System.currentTimeMillis()));
		
		this.joinService.create(join);
		
		return "redirect:/join/list.html";
	}
	
	@RequestMapping(value = "/join/update", method = RequestMethod.POST)
	public String update(@ModelAttribute Join join, HttpSession session){		
		System.out.println("control" + join.getContent_id() + join.getTitle()); 
		this.joinService.update(join);
		return "redirect:/join/list.html";
	}
	
	@RequestMapping(method = RequestMethod.POST)
	public String reply(@ModelAttribute Comment comment, HttpSession session){
		comment.setWrite_time(new Date(System.currentTimeMillis()));
		this.joinService.reply(comment);
		
		return "redirect:/join/content.html?content_id=" + comment.getContent_id();
	}
	
	@RequestMapping(value = "/join/reply_delete")
	public String deleteReply(Integer content_id, Integer comment_id, HttpSession session){		
		this.joinService.deleteReply(comment_id);
		return "redirect:/join/content.html?content_id=" + content_id;
	}
}
