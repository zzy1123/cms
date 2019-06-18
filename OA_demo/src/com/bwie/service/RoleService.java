/**
 * 
 */
package com.bwie.service;

import java.util.List;
import java.util.Map;
import com.bwie.entity.Resource;
import com.bwie.entity.Role;

/**

 * 
 */
public interface RoleService {

	/**

	 * 
	 */
	List<Map<String, Object>> selectRoleList();

	/**

	 * 
	 */
	Role selectRoleById(Integer rid);

	/**

	 * 
	 */
	List<Resource> selectResourceByRid(Integer rid);

	/**

	 * 
	 */
	List<Resource> selectResource();

	/**

	 * 
	 */
	int updateRole(Map<String, Object> map2);

	


}
