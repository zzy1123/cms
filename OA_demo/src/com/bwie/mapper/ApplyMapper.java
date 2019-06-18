package com.bwie.mapper;

import java.util.List;
import java.util.Map;
import com.bwie.entity.Reimbursement;

public interface ApplyMapper {
    
    int deleteByPrimaryKey(Integer id);
    
    int insert(Reimbursement record);
    
    int insertSelective(Reimbursement record);
    
    Reimbursement selectByPrimaryKey(Integer id);
    
    int updateByPrimaryKeySelective(Reimbursement record);
    
    int updateByPrimaryKey(Reimbursement record);

    /**

     * 
     */
	List<Map<String, Object>> selectList(int uid);

	/**

	 * 
	 */
	void present(Map<String, Object> map);

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
	int updateApply(Reimbursement reimbursement);
}