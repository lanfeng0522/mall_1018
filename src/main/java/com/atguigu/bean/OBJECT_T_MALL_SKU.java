package com.atguigu.bean;

import lombok.Data;

@Data
public class OBJECT_T_MALL_SKU extends T_MALL_SKU{

	private T_MALL_PRODUCT spu;
	private T_MALL_TRADE_MARK tm;
}
