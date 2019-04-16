package com.atguigu.bean;

import java.util.List;

import lombok.Data;

@Data
public class OBJECT_T_MALL_ATTR extends T_MALL_ATTR{
	
	private List<T_MALL_VALUE> list_value;
	
	public List<T_MALL_VALUE> getList_value(){
		return list_value;
	}
	
	
}
