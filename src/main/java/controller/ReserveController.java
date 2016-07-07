package controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import logic.Reserve;
import logic.ReserveService;
import logic.Item;
import logic.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import dao.ReserveDao;
import utils.WebConstants;

@Controller
public class ReserveController {


	@Autowired
	private ReserveService reserveService;

	@RequestMapping(value = "/reserve/reserveAdd")
	public String reserveAdd(@ModelAttribute Reserve reserve, HttpServletRequest request, HttpSession session) {
		System.out.println("1");
		// 추가 상품 정보를 취득
		String[] times= request.getParameterValues("r_time");
		System.out.println("1");
		// 로그인 유저를 취득
		User loginUser = (User) session.getAttribute(WebConstants.USER_KEY);
		List<Item> room_info = reserveService.selectRoom(reserve.getRoom_id());
		List<Reserve> rList = new ArrayList<Reserve>();
		System.out.println("1");
		for(int i=0; i < times.length; i++){
			Reserve newR = new Reserve();
			newR.setRoom_name(reserve.getRoom_name());
			newR.setBooker(loginUser.getUserId());
			newR.setPrice(reserve.getPrice());
			newR.setReserve_option("없음");
			newR.setReserve_status("예약대기");
			newR.setReserve_date(reserve.getReserve_date());
			newR.setReserve_time(Integer.parseInt(times[i]));
			newR.setRoom_id(reserve.getRoom_id());
			rList.add(newR);
		}
		System.out.println("1");
		this.reserveService.add(rList);
		System.out.println("1");
		
		
		return "redirect:/reserve/reserveConfirm.html";
	}

	@RequestMapping(value = "/reserve/reserveClear")
	public ModelAndView clear(HttpSession session) {

		// 로그인 유저를 취득
		User loginUser = (User) session.getAttribute(WebConstants.USER_KEY);
		String userId = loginUser.getUserId();
		this.reserveService.destroy(userId);
		// 메시지를 설정
		ModelAndView modelAndView = new ModelAndView("reserve/reserve");
		modelAndView.addObject("message", "예약내역을 삭제했습니다.");

		if (loginUser != null) {
			modelAndView.addObject("loginUser", loginUser);
		}
		return modelAndView;
	}

	@RequestMapping(value = "/reserve/reserveConfirm")
	public ModelAndView confirm(HttpSession session) {

		// 로그인 유저를 취득
		User loginUser = (User) session.getAttribute(WebConstants.USER_KEY);
		String userId = loginUser.getUserId();
		List<Reserve> rList = this.reserveService.select(userId);

		// 카트 정보를 설정
		ModelAndView modelAndView = new ModelAndView("reserve/reserve");
		modelAndView.addObject("rList", rList);

		
		if (loginUser != null) {
			modelAndView.addObject("loginUser", loginUser);
		}
		return modelAndView;
	}
	
	@RequestMapping
	public ModelAndView checkout(HttpSession session) {

		// 카트 정보를 설정
		ModelAndView modelAndView = new ModelAndView("reserve/checkout");
		
		return modelAndView;
	}
	
	
}