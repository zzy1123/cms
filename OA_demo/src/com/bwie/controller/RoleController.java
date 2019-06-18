/**
 * 
 */
package com.bwie.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.bwie.entity.Resource;
import com.bwie.entity.Role;
import com.bwie.service.RoleService;

/**
 * 
 */
@Controller
@RequestMapping("/role")
public class RoleController {
	@Autowired
	private RoleService roleService;
	//�鿴��ɫ�б�
	@RequestMapping("selectRoleList")
	public String selRoleList(Map<String, Object> map){
		List<Map<String, Object>> roleList = roleService.selectRoleList();
		map.put("roleList", roleList);
		return "roles/role_list";
	}
	//ȥ�޸�ҳ��
	@RequestMapping("toUpdateRole")
	public String toUpdateRole(Map<String, Object> map,Integer rid){
		Role role = roleService.selectRoleById(rid);
		List<Resource> privillegeList = roleService.selectResourceByRid(rid);
		List<Resource> privilleges = roleService.selectResource();
		map.put("role", role);
		map.put("privillegeList", privillegeList);
		map.put("privilleges", privilleges);
		return "roles/updateRole";
	}
	//�޸Ľ�ɫȨ��
	@RequestMapping("updateRole")
	public String updateRole(String pid,Map<String, Object> map,int rid){
		String[] strArray = pid.split(",");
		Map<String, Object> map2 = new HashMap<String, Object>();
		map2.put("strArray", strArray);
		map2.put("rid", rid);
		int i = roleService.updateRole(map2);
		String redirectUrl = "role/selRoleList";
		map.put("redirectUrl", redirectUrl);
		return "closeLayer";
	}
}
