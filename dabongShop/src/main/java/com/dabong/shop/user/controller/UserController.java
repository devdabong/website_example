package com.dabong.shop.user.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dabong.shop.user.service.UserService;
import com.dabong.shop.user.vo.UserVO;


@Controller
public class UserController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("/user")
	public String user(Model model) {
		
		try {
			List<UserVO> list = userService.selectUserList();
			
			for (int i = 0; i < list.size(); i++) {
				logger.info(list.get(i).getUserId());
			}
			
			model.addAttribute("userlist", list);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "user";
	}
	
	@RequestMapping("/header")
	public String header(Model model) {
		return "header";
	} 
	
	@RequestMapping("/footer")
	public String footer(Model model) {
		return "footer";
	} 
	
	@RequestMapping("/list")
	public String list(Model model) {
		return "list";
	} 
	
	@RequestMapping("/slide")
	public String slide(Model model) {
		return "slide";
	} 
	
}
