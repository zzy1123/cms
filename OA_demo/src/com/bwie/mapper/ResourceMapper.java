package com.bwie.mapper;

import com.bwie.entity.Resource;



/**

 * 
 */
public interface ResourceMapper {
 
    int deleteByPrimaryKey(Integer pid);

    int insert(Resource record);

    int insertSelective(Resource record);

    Resource selectByPrimaryKey(Integer pid);
   
    int updateByPrimaryKeySelective(Resource record);
    
    int updateByPrimaryKey(Resource record);
}