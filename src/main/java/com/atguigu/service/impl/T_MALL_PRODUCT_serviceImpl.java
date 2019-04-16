package com.atguigu.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.atguigu.bean.T_MALL_PRODUCT;
import com.atguigu.mapper.T_MALL_PRODUCT_mapper;
import com.atguigu.service.T_MALL_PRODUCT_service;

@Service
public class T_MALL_PRODUCT_serviceImpl implements T_MALL_PRODUCT_service{

	@Autowired
	private T_MALL_PRODUCT_mapper mapper;
	
	
	public void insert_spu(T_MALL_PRODUCT t_MALL_PRODUCT,List<String> list_image) {
		
		//插入spu信息，返回生成的主键值
		t_MALL_PRODUCT.setShp_tp(list_image.get(0));
		mapper.insert_spu(t_MALL_PRODUCT);
		
		//根据spu信息，批量插入spu图片
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("shp_id", t_MALL_PRODUCT.getId());
		map.put("list_image", list_image);
		
		mapper.insert_image(map);
		
	}


	@Override
	public List<T_MALL_PRODUCT> get_spu_list(int pp_id, int flbh2) {
		Map<String,Object> param = new HashMap<String,Object>();
		param.put("pp_id", pp_id);
		param.put("flbh2", flbh2);
		List<T_MALL_PRODUCT> spu_list = mapper.select_spu_list(param);
		
		return spu_list;
	}

}
