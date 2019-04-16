package com.atguigu.service;

import java.util.List;

import com.atguigu.bean.T_MALL_PRODUCT;

public interface T_MALL_PRODUCT_service {

	public void insert_spu(T_MALL_PRODUCT t_MALL_PRODUCT,List<String> list_image);

	public List<T_MALL_PRODUCT> get_spu_list(int pp_id, int flbh2);
}
