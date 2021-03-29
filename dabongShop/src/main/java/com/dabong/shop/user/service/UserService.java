package com.dabong.shop.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dabong.shop.user.dao.UserDAO;
import com.dabong.shop.user.service.impl.UserServiceImpl;
import com.dabong.shop.user.vo.UserVO;

@Service
public class UserService implements UserServiceImpl{

	@Autowired
	UserDAO userDao;

	@Override
	public List<UserVO> selectUserList() throws Exception {
		return userDao.selectUserList();
	}
	
}
