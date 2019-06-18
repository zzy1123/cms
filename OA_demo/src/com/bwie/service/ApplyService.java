/**
 * 
 */
package com.bwie.service;

import java.util.List;
import java.util.Map;

import com.bwie.entity.Reimbursement;

/**

 * 
 */
public interface ApplyService {

	/**

	 * 
	 */
	List<Map<String, Object>> selectList(int uid);

	/**

	 */
	int present(Integer reistate, int rid, int uid, int flag, int id);

	/**

	 * 
	 */
	List<Map<String, Object>> approval(int rid);

	/**

	 * 
	 */
	int addApply(Reimbursement reimbursement);

	/**

	 * 
	 */
	int deleteApply(int id);

	/**

	 * 
	 */
	Reimbursement selectById(int id);

	/**

	 * 
	 */
	int updateApply(Reimbursement reimbursement);


}
