package controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import logic.Notice;
import logic.NoticeService;
import logic.User;
import utils.WebConstants;

@Controller
public class NoticeController {

	@Autowired
	private NoticeService noticeService;
	
	@RequestMapping
	public ModelAndView list(HttpSession session) {

		// 상품 목록 정보를 취득
		List<Notice> noticeList = this.noticeService.getNoticeList();

		// 모델 생성
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("noticeList", noticeList);

		// 반환값이 될 ModelAndView 인스턴스 생성
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addAllObjects(model);

		User loginUser = (User) session.getAttribute(WebConstants.USER_KEY);
		if (loginUser != null) {
			modelAndView.addObject("loginUser", loginUser);
		}

		return modelAndView;
	}
	
	@RequestMapping(value = "/notice/content")
	public ModelAndView content(Integer content_id, HttpSession session){
		Notice notice = this.noticeService.getNoticeByContentID(content_id);

		// 모델 생성
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("notice", notice);

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
	
}
