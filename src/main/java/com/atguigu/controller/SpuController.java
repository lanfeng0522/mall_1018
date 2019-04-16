package com.atguigu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.atguigu.bean.T_MALL_PRODUCT;
import com.atguigu.service.T_MALL_PRODUCT_service;
import com.atguigu.util.MyFileUpload;

@Controller
public class SpuController {

	@Autowired
	private T_MALL_PRODUCT_service t_MALL_PRODUCT_service;
	
	@RequestMapping("get_spu_list")
	@ResponseBody
	public List<T_MALL_PRODUCT> get_spu_list(int pp_id,int flbh2){
		
		List<T_MALL_PRODUCT> list_spu = t_MALL_PRODUCT_service.get_spu_list(pp_id,flbh2);
		
		return list_spu;
	}
	
	@RequestMapping("goto_spu_add")
	public String goto_spu(ModelMap map,T_MALL_PRODUCT spu){
		
		map.put("spu", spu);
		return "spuAdd";
	}
	
	@RequestMapping("spu_add")
	public ModelAndView spu_add(@RequestParam("files") MultipartFile[] files,T_MALL_PRODUCT spu){
		
		//上传图片
		List<String> list_image = MyFileUpload.upload_image(files);
		
		
		//保存商品信息
		t_MALL_PRODUCT_service.insert_spu(spu,list_image);
		
		ModelAndView mv = new ModelAndView("redirect:/goto_spu_add.do");
		
		mv.addObject("flbh1", spu.getFlbh1());
		mv.addObject("flbh2", spu.getFlbh2());
		mv.addObject("pp_id", spu.getPp_id());
		return mv;
	}
}
