/**
 * 
 */
package com.bwie.utils;

import java.util.ArrayList;
import java.util.List;
import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import org.springframework.stereotype.Component;
import com.bwie.entity.Address;
import com.bwie.entity.ApplyType;
import com.bwie.mapper.ApplyTypeMapper;
import com.bwie.mapper.UserMapper;

/**

 * 
 */
@Component
public class CacheUtils {

	private static List<Address> addressList = new ArrayList<Address>();
	private static List<ApplyType> applyTypeLIst = new ArrayList<ApplyType>();
	
	@Resource
	private  UserMapper UserMapper;
	
//	@Resource
//	private ApplyTypeMapper applyTypeMapper;
	
	/**
	 * 
	 */
	@PostConstruct
	public void init(){
		addressList = UserMapper.selAddress();
//		applyTypeLIst = applyTypeMapper.selReimbursementName();
	}
	
	public static List<Address> getAddress(){
		
		return addressList;
	}
	
    public static List<ApplyType> getReimbursementNameList(){
		
		return applyTypeLIst;
	}
}
