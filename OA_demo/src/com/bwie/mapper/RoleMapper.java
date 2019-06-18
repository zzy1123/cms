package com.bwie.mapper;

import java.util.List;
import java.util.Map;
import com.bwie.entity.Resource;
import com.bwie.entity.Role;

public interface RoleMapper {
 
    int deleteByPrimaryKey(Integer rid);

    int insert(Role record);

    int insertSelective(Role record);

    Role selectByPrimaryKey(Integer rid);

    int updateByPrimaryKeySelective(Role record);

    int updateByPrimaryKey(Role record);

    /**

     * 
     */
	List<Map<String, Object>> selectRoleList();

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
	int deleteResourceByRoleId(Map<String, Object> map2);

	/**

	 * 
	 */
	int insertResourceByRoleId(Map<String, Object> map2);
}