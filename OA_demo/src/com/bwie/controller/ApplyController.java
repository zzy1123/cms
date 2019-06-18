/**
 * 
 */
package com.bwie.controller;

import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.bwie.entity.ApplyType;
import com.bwie.entity.Reimbursement;
import com.bwie.service.ApplyService;
import com.bwie.utils.CacheUtils;
/**
 * 
 */
@Controller
@RequestMapping("/apply")
public class ApplyController {
	
	@Autowired
	ApplyService applyService;
	
	//查询列表
	@RequestMapping("selectList")
	public String selectList(Map<String, Object> map,HttpServletRequest request){
		
		//从session中获取map中的user对象
		Map<String, Object> userMap = (Map<String, Object>)request.getSession().getAttribute("user");
		if(null != userMap)
		{int uid = (Integer) userMap.get("uid");}
		
		//根据该对象的id去查找要报销的事务
		/*List<Map<String, Object>> applyList = applyService.selectList(uid);
		map.put("applyList", applyList);*/
		
		return "apply/apply_list";
	}
	
	//报销和审批
	@RequestMapping("/present")
	public String present(Map<String, Object> map,HttpServletRequest request,
			Integer reistate,@RequestParam(defaultValue="0",value="flag")Integer flag,
			Integer id,Integer[] ids){
		//从session中获取map中的user对象
		Map<String, Object> userMap = (Map<String, Object>)request.getSession().getAttribute("user");
		int rid = (Integer) userMap.get("rid");
		int uid = (Integer) userMap.get("uid");
		
		if(ids != null){
			
			for (int i = 0; i < ids.length; i++) {
				applyService.present(reistate, rid, uid, flag, ids[i]);
			}
			
		}else{
			applyService.present(reistate,rid,uid,flag,id);
		}
		
		if(reistate == 1){
			String redirectUrl = "apply/selectList";
			map.put("redirectUrl", redirectUrl);
		}else {
			String redirectUrl = "apply/approval";
			map.put("redirectUrl", redirectUrl);
		}
		
		return "closeLayer";

	}
	
	//查询审批列表
	@RequestMapping("approval")
	public String approval(Map<String, Object> map,HttpServletRequest request){
		//从session中获取map中user对象,
		Map<String, Object> userMap = (Map<String, Object>)request.getSession().getAttribute("user");
		int rid = (Integer) userMap.get("rid");
		List<Map<String, Object>> approvalList = applyService.approval(rid);
		System.out.println(approvalList);
		map.put("approvalList", approvalList);
		return "apply/approval_list";
	}
	//去添加报销项的页面
	@RequestMapping("toAddApply")
	public String toAddApply(Map<String, Object> map){
		List<ApplyType> applyTypeList = CacheUtils.getReimbursementNameList();
		map.put("applyTypeList", applyTypeList);
		return "apply/addapply";
	}
	//添加报销项
	@RequestMapping("addApply")
	public String addApply(Reimbursement reimbursement,HttpServletRequest request,
			int reiname,Map<String, Object> mm){
		Map<String, Object> map = (Map<String, Object>)request.getSession().getAttribute("user");		
		int uid = (Integer) map.get("uid");
		reimbursement.setUid(uid);
		int i = applyService.addApply(reimbursement);
		String redirectUrl = "apply/selectList";
		mm.put("redirectUrl", redirectUrl);
		return "closeLayer";
	}
	//删除报销项
	@RequestMapping("deleteApply")
	@ResponseBody
	public String deleteApply(Integer id,Integer[] ids){
		int i=0;
		if(ids!=null){
			for (int j = 0; j < ids.length; j++) {
				 i = applyService.deleteApply(ids[j]);
			}
		}else {
			 i = applyService.deleteApply(id);
		}
		if(i > 0){
			return "1";
		}
		return "0";
	}
	//去修改报销页面
	@RequestMapping("toUpdatApply")
	public String toUpdatApply(Map<String, Object> map,int id){
		Reimbursement reimbursementByid = applyService.selectById(id);
		List<ApplyType> applyTypeList = CacheUtils.getReimbursementNameList();
		map.put("applyTypeList", applyTypeList);
		map.put("reimbursementByid", reimbursementByid);
		return "apply/updateapply";
	}
	//修改报销项
	@RequestMapping("updateApply")
	public String updateApply(Reimbursement reimbursement,Map<String, Object> mm){
		int i = applyService.updateApply(reimbursement);
		String redirectUrl="apply/selectList";
		mm.put("redirectUrl", redirectUrl);
		return "closeLayer";
	}
}
