package com.dabong.shop.user.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.dabong.shop.user.vo.UserVO;

@Repository
public interface UserDAO {
	
	public List<UserVO> selectUserList(); 
}
