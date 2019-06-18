/**
 * 
 */
package com.bwie.service;


import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.bwie.entity.Resource;
import com.bwie.entity.Role;
import com.bwie.mapper.RoleMapper;

/**

 * 
 */
@Service
public class RoleServiceImp implements RoleService{
	@Autowired
	private RoleMapper roleMapper;

	/* (non-Javadoc)
	 * @see com.bwie.service.RoleService#selRoleList()
	 */
	public List<Map<String, Object>> selectRoleList() {
		// TODO Auto-generated method stub
		return roleMapper.selectRoleList();
	}

	/* (non-Javadoc)
	 * @see com.bwie.service.RoleService#selectRoleById(java.lang.Integer)
	 */
	public Role selectRoleById(Integer rid) {
		// TODO Auto-generated method stub
		return roleMapper.selectByPrimaryKey(rid);
	}

	/* (non-Javadoc)
	 * @see com.bwie.service.RoleService#selprivillegeByRid(java.lang.Integer)
	 */
	public List<Resource> selectResourceByRid(Integer rid) {
		// TODO Auto-generated method stub
		return roleMapper.selectResourceByRid(rid);
	}

	/* (non-Javadoc)
	 * @see com.bwie.service.RoleService#selprivillege()
	 */
	public List<Resource> selectResource() {
		// TODO Auto-generated method stub
		return roleMapper.selectResource();
	}

	/* (non-Javadoc)
	 * @see com.bwie.service.RoleService#updateRole(java.util.Map)
	 */
	public int updateRole(Map<String, Object> map2) {
		// TODO Auto-generated method stub
		int i = roleMapper.deleteResourceByRoleId(map2);
		String[] strArray = (String[]) map2.get("strArray");
		for (int j = 0; j < strArray.length; j++) {	
			int pid = Integer.parseInt(strArray[j]);
			map2.put("pid", pid);
			int e = roleMapper.insertResourceByRoleId(map2);
		}

		return 0;
	}
}
