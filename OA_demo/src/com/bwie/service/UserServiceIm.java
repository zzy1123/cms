/**
 * 
 */
package com.bwie.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bwie.entity.Address;
import com.bwie.entity.Role;
import com.bwie.entity.User;
import com.bwie.mapper.AddressMapper;
import com.bwie.mapper.RoleMapper;
import com.bwie.mapper.UserMapper;

/**

 * 
 */
@Service
public class UserServiceIm implements UserService{
	@Autowired
	private UserMapper userMapper;
	@Autowired
	private RoleMapper roleMapper;
	@Autowired
	private AddressMapper addressMapper;
	/* (non-Javadoc)
	 * @see com.bwie.service.UserService#lpgin(com.bwie.entity.User)
	 */
	public User login(User user) {
		// TODO Auto-generated method stub
		return userMapper.login(user);
	}

	/* (non-Javadoc)
	 * @see com.bwie.service.UserService#selUserList()
	 */
	public List<Map<String, Object>> selectUserList() {
		// TODO Auto-generated method stub
		return userMapper.selectUserList();
	}

	/* (non-Javadoc)
	 * @see com.bwie.service.UserService#selAddress()
	 */
	public List<Address> selAddress() {
		// TODO Auto-generated method stub
		return userMapper.selAddress();
	}

	/* (non-Javadoc)
	 * @see com.bwie.service.UserService#loginPass(com.bwie.entity.User)
	 */
	public Map<String, Object> loginPassword(User user) {
		// TODO Auto-generated method stub
		return userMapper.loginPassword(user);
	}

	/* (non-Javadoc)
	 * @see com.bwie.service.UserService#selRole(java.lang.String)
	 */
	public List<Role> selectRole(String rid) {
		// TODO Auto-generated method stub
		return userMapper.selectRole(rid);
	}

	/* (non-Javadoc)
	 * @see com.bwie.service.UserService#addUser(com.bwie.entity.User)
	 */
	public int addUser(User user) {
		// TODO Auto-generated method stub
		return userMapper.addUser(user);
	}

	/* (non-Javadoc)
	 * @see com.bwie.service.UserService#addUser_role(java.util.Map)
	 */
	public int addUser_role(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return userMapper.addUser_role(map);
	}

	/* (non-Javadoc)
	 * @see com.bwie.service.UserService#deleteUser(int)
	 * É¾³ýÓÃ»§
	 */

	public int deleteUser(int uid) {
		// TODO Auto-generated method stub
		return userMapper.deleteByPrimaryKey(uid);
	}

	/* (non-Javadoc)
	 * @see com.bwie.service.UserService#selectById(java.lang.Integer)
	 */
	public Map<String, Object> selectById(Integer uid) {
		// TODO Auto-generated method stub
		return userMapper.selectById(uid);
	}

	/* (non-Javadoc)
	 * @see com.bwie.service.UserService#updateUser(com.bwie.entity.User, int)
	 */
	public int updateUser(User user, int rid) {
		// TODO Auto-generated method stub
		int uid=user.getUid();
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("rid", rid);
		map.put("uid", uid);
		int i=userMapper.updateByPrimaryKeySelective(user);
		int y=userMapper.deleteUser_role(uid);
		int j=userMapper.addUser_role(map);
		return 0;
	}

	/* (non-Javadoc)
	 * @see com.bwie.service.UserService#selectAddressById(int)
	 */
	public String selectAddressById(int aid1) {
		// TODO Auto-generated method stub
		return addressMapper.selectByPrimaryKey(aid1);
	}

	/* (non-Javadoc)
	 * @see com.bwie.service.UserService#updatePassword(com.bwie.entity.User)
	 */
	public int updatePassword(User user) {
		// TODO Auto-generated method stub
		return userMapper.updatePassword(user);
	}

	/* (non-Javadoc)
	 * @see com.bwie.service.UserService#only(java.lang.String)
	 */
	public List<User> only(String username) {
		// TODO Auto-generated method stub
		return userMapper.only(username);
	}

	/* (non-Javadoc)
	 * @see com.bwie.service.UserService#listAddressId(java.lang.Integer)
	 */
	public List<Address> listAddressId(Integer uid) {
		// TODO Auto-generated method stub
		return userMapper.listAddressId(uid);
	}
}
