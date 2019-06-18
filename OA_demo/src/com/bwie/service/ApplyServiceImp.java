/**
 * 
 */
package com.bwie.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bwie.entity.Reimbursement;
import com.bwie.mapper.ApplyMapper;
/**
 * 
 */
@Service
public class ApplyServiceImp implements ApplyService{
	@Autowired
	ApplyMapper applyMapper;

	/* (non-Javadoc)
	 * @see com.bwie.service.ReimbursementService#selectList(int)
	 */
	public List<Map<String, Object>> selectList(int uid) {
		// TODO Auto-generated method stub
		return applyMapper.selectList(uid);
	}

	/* (non-Javadoc)
	 * @see com.bwie.service.ReimbursementService#present(java.lang.Integer, int)
	 */
	public int present(Integer reistate, int rid,int uid,int flag,int id) {

		//根据当前用户的角色判断提交报销或者同意（不同意）的状态改变	
		if(rid == 1){
			if(reistate == 1){
				reistate += 1;
			}else if(reistate < 7 && reistate > 1){
				reistate += flag;
			}
		}else if(rid == 2){
			if(reistate == 1){
				reistate += 3;
			}else if(reistate < 7 && reistate > 1){
				reistate += flag;
			}
		}else if(rid == 3){
			if(reistate == 1){
				reistate += 5;
			}else if(reistate < 7 && reistate > 1){
				reistate += flag;
			}
		}else if(rid == 4){
			if(reistate < 7 && reistate > 1){
				reistate += flag;
			}
		}
		//根据同意（不同意）的情况判断审批权
		if(flag != 1){		
			rid += 1;		
		}else {
			rid = 0;
		}
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("reistate", reistate);
		map.put("rid", rid);
		map.put("uid", uid);
		map.put("id", id);
		applyMapper.present(map);
		return 0;
	}

	/* (non-Javadoc)
	 * @see com.bwie.service.ReimbursementService#approval(int)
	 */
	public List<Map<String, Object>> approval(int rid) {
		// TODO Auto-generated method stub

		return applyMapper.approval(rid);
	}

	/* (non-Javadoc)
	 * @see com.bwie.service.ReimbursementService#addReimbursement(com.bwie.entity.Reimbursement)
	 */
	public int addApply(Reimbursement reimbursement) {
		// TODO Auto-generated method stub

		return applyMapper.addApply(reimbursement);
	}

	/* (non-Javadoc)
	 * @see com.bwie.service.ReimbursementService#deleteReimbursementById(int)
	 */
	public int deleteApply(int id) {
		// TODO Auto-generated method stub
		return applyMapper.deleteByPrimaryKey(id);
	}

	/* (non-Javadoc)
	 * @see com.bwie.service.ReimbursementService#selectById(int)
	 */
	public Reimbursement selectById(int id) {
		// TODO Auto-generated method stub
		return applyMapper.selectByPrimaryKey(id);
	}

	/* (non-Javadoc)
	 * @see com.bwie.service.ReimbursementService#updateReimbursement(com.bwie.entity.Reimbursement)
	 */
	public int updateApply(Reimbursement reimbursement) {
		// TODO Auto-generated method stub
		return applyMapper.updateApply(reimbursement);
	}

}
