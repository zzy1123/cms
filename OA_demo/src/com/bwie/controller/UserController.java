/**
 * 
 */
package com.bwie.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.alibaba.fastjson.JSONArray;
import com.bwie.entity.Address;
import com.bwie.entity.Role;
import com.bwie.entity.User;
import com.bwie.service.UserService;
import com.bwie.utils.CacheUtils;
import com.bwie.utils.MD5Util;

/**

 */
@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;

	// ��¼
	@RequestMapping("/login")
	public String login(User user, HttpServletRequest request) {
		// �жϴ������������Ƿ�Ϊ��
		if (user.getPassword() != null) {
			String md = user.getPassword();
			String md5 = MD5Util.MD5(md);
			user.setPassword(md5);
		}
		User user2 = userService.login(user);
		HttpSession session = request.getSession();
		// �ж��û����Ĳ�������û��Ƿ�Ϊ��
		if (user2 != null) {
			Map<String, Object> userMap = userService.loginPassword(user);
			// �ж������������û��Ƿ�Ϊ��
			if (userMap != null) {
				session.setAttribute("user", userMap);
				request.setAttribute("uname", userMap.get("uname"));
				return "index";
			} else {
				request.setAttribute("info", "�������");
				return "forward:/admin/toLogin";
			}
		} else {
			request.setAttribute("info", "�˺Ŵ���");
			return "forward:/admin/toLogin";
		}
	}

	// �鿴�û���Ϣ
	@RequestMapping("selectUserList")
	public String selUserList(Map<String, Object> map) {
		List<Map<String, Object>> UserList = userService.selectUserList();
		map.put("UserList", UserList);
		return "users/list";
	}

	// ȥ��ӵ�ҳ��
	@RequestMapping("/toAddUser")
	public String toadd(Map<String, Object> map, HttpServletRequest request) {
		Map<String, Object> user = (Map<String, Object>)request.getSession().getAttribute("user");
		String rid = user.get("rid").toString();
		List<Address> addressList = CacheUtils.getAddress();
		JSONArray jsonArray = (JSONArray) JSONArray.toJSON(addressList);
		String string = jsonArray.toString();
		List<Role> roleList = userService.selectRole(rid);
		map.put("addressList", string);
		map.put("roleList", roleList);
		return "users/addUser";
	}

	// ɾ���û�
	@RequestMapping("/deleteUser")
	@ResponseBody
	public String deleteUser(Integer id) {
		int i = userService.deleteUser(id);
		if (i > 0) {
			return "1"; 
		} else {
			return "0";
		}
	}

	// ��ӵ��û�
	@RequestMapping("/addUser")
	public String addUser(User user, int rid, Map<String, Object> map, 
			int aid1,int aid2, int aid3) {
		String a1 = userService.selectAddressById(aid1);
		String a2 = userService.selectAddressById(aid2);
		String a3 = userService.selectAddressById(aid3);
		String aname = "";
		aname += a1 += a2 += a3;
		user.setAddress(aname);
		Map<String, Object> map1 = new HashMap<String, Object>();
		map1.put("rid", rid);
		String password = user.getPassword();
		String md5 = MD5Util.MD5(password);
		user.setPassword(md5);
		int i = userService.addUser(user);
		map1.put("uid", user.getUid());
		int j = userService.addUser_role(map1);
		String redirectUrl = "user/selectUserList";
		map.put("redirectUrl", redirectUrl);
		return "closeLayer";
	}

	// ȥ�޸��û�ҳ��
	@RequestMapping("/toUpdateUser")
	public String toUpdateUser(Integer uid, Map<String, Object> map,
			HttpServletRequest request) {
		Map<String, Object> userMap = userService.selectById(uid);
		Map<String, Object> user = (Map<String, Object>)request.getSession().getAttribute("user");
		String rid = user.get("rid") + "";
		List<Role> roleList = userService.selectRole(rid);
		List<Address> addressList = CacheUtils.getAddress();
		JSONArray jsonArray = (JSONArray) JSONArray.toJSON(addressList);
		String string = jsonArray.toString();
		List<Address> listAddressId = userService.listAddressId(uid);
		System.out.println(listAddressId);
		int pid = listAddressId.get(0).getAid();
		int cid = listAddressId.get(1).getAid();
		int xid = listAddressId.get(2).getAid();
		map.put("addressList", string);
		map.put("userMap", userMap);
		map.put("roleList", roleList);
		map.put("pid", pid);
		map.put("cid", cid);
		map.put("xid", xid);
		return "users/updateUser";
	}

	// �޸��û�
	@RequestMapping("updateUser")
	public String updateUser(Map<String, Object> map, User user, int rid,
			int aid1, int aid2, int aid3) {
		String a1 = userService.selectAddressById(aid1);
		String a2 = userService.selectAddressById(aid2);
		String a3 = userService.selectAddressById(aid3);
		String aname = "";
		aname += a1 += a2 += a3;
		user.setAddress(aname);
		int i = userService.updateUser(user, rid);
		String redirectUrl = "user/selectUserList";
		map.put("redirectUrl", redirectUrl);
		return "closeLayer";
	}

	// ȥ�޸�����ҳ��
	@RequestMapping("toUpdatePassword")
	public String toUpdatePassWord(Map<String, Object> map,
			HttpServletRequest request) {
		Map<String, Object> user = (Map<String, Object>)request.getSession().getAttribute("user");;
		String userName = user.get("username") + "";
		String password = user.get("password") + "";
		map.put("userName", userName);
		return "users/updatePassword";
	}

	// �޸�����
	@RequestMapping("updatePassword")
	public String updatePassword(User user, HttpServletRequest request) {
		String password = user.getPassword();
		String md5 = MD5Util.MD5(password);
		user.setPassword(md5);
		Map<String, Object> use = (Map<String, Object>)request.getSession().getAttribute("user");
		int uid = (Integer) use.get("uid");
		user.setUid(uid);
		int i = userService.updatePassword(user);
		String redirectUrl = "admin/toLogin";
		request.setAttribute("redirectUrl", redirectUrl);
		return "closeLayer";
	}

	// ��֤�û���Ψһ
	@RequestMapping("only")
	@ResponseBody
	public String only(String username) {
		List<User> UserListByUserName = userService.only(username);
		if (UserListByUserName.size() != 0) {
			return "1";
		}
		return "0";
	}
}
