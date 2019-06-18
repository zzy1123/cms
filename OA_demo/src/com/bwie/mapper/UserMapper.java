package com.bwie.mapper;

import java.util.List;
import java.util.Map;
import com.bwie.entity.Address;
import com.bwie.entity.Role;
import com.bwie.entity.User;

public interface UserMapper {
 
    int deleteByPrimaryKey(Integer uid);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer uid);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

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
	Map<String, Object> selectById(Integer uid);

	/**

	 * 
	 */
	int deleteUser_role(int uid);

	/**

	 * 
	 */
	
	int updatePassword(User user);

	/**

	 * 
	 */
	List<User> only(String username);



	List<Address> listAddressId(Integer uid);

	
	
}