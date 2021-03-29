package com.dabong.shop.user.service.impl;

import java.util.List;

import com.dabong.shop.user.vo.UserVO;

public interface UserServiceImpl {
	
	public List<UserVO> selectUserList() throws Exception;

}
