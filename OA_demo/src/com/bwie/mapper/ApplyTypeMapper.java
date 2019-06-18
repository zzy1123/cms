package com.bwie.mapper;

import java.util.List;
import com.bwie.entity.ApplyType;
public interface ApplyTypeMapper {
   
    int deleteByPrimaryKey(Integer reimid);

    
    int insert(ApplyType record);

   
    int insertSelective(ApplyType record);

    
    ApplyType selectByPrimaryKey(Integer reimid);

   
    int updateByPrimaryKeySelective(ApplyType record);

    
    int updateByPrimaryKey(ApplyType record);

    /**

     */
	List<ApplyType> selReimbursementName();
}