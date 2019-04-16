package com.atguigu.service;

import java.util.List;

import com.atguigu.bean.MODEL_T_MALL_ATTR;
import com.atguigu.bean.OBJECT_T_MALL_ATTR;

public interface AttrServiceInf {

	public void save_attr(int flbh2, List<OBJECT_T_MALL_ATTR> list_attr);

	public List<OBJECT_T_MALL_ATTR> get_attr_list(int flbh2);

}
