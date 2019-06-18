/**
 * 
 */
package com.bwie.service;

import java.util.List;
import java.util.Map;

import com.bwie.entity.Address;
import com.bwie.entity.Role;
import com.bwie.entity.User;

/**
 * 
 */
public interface UserService {
	/**

	 * 
	 */
	User login(User user);
	/**

	 * 
	 */
	List<Map<String, Object>> selectUserList();

	/**

	 * 
	 */
	List<Address> selAddress();

	/**

	 * 
	 */
	Map<String, Object> loginPassword(User user);

	/**

	 * 
	 */
	List<Role> selectRole(String rid);
	/**

	 * 
	 */
	int addUser(User user);

	/**

	 * 
	 */
	int addUser_role(Map<String, Object> map);

	/**

	 * 
	 */
	int deleteUser(int uid);

	/**

	 * 
	 */
	Map<String, Object> selectById(Integer uid);

	/**

	 * 
	 */
	int updateUser(User user, int rid);
	/**

	 * 
	 */
	String selectAddressById(int aid1);

	/**

	 * 
	 */
	int updatePassword(User user);

	/**

	 * 
	 */
	List<User> only(String username);
	/**

	 * 
	 */
	List<Address> listAddressId(Integer uid);

	

	
	

}
