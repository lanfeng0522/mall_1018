package com.atguigu.mapper;


import java.util.List;
import java.util.Map;

import com.atguigu.bean.T_MALL_PRODUCT;

public interface T_MALL_PRODUCT_mapper {

	public void insert_spu(T_MALL_PRODUCT t_MALL_PRODUCT);

	public void insert_image(Map<String, Object> map);

	public List<T_MALL_PRODUCT> select_spu_list(Map<String, Object> param);
}
