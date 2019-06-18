package com.bwie.mapper;

import com.bwie.entity.Address;

/**
 * 
 */
public interface AddressMapper {
	
    /**
     * @param aid
     * @return
     */
    int deleteByPrimaryKey(Integer aid);

    int insert(Address record);
    
    int insertSelective(Address record);
    
    String selectByPrimaryKey(Integer aid);
    
    int updateByPrimaryKeySelective(Address record);
   
    int updateByPrimaryKey(Address record);
	
}