package com.mr.controller;

import com.mr.model.TMSkuVO;
import com.mr.model.TMallProduct;
import com.mr.model.TMallValueVO;
import com.mr.service.AttrService;
import com.mr.service.SkuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by Wy on 2018/10/31.
 */
@Controller
public class SkuController {

    @Autowired
    private SkuService skuService;

    @Autowired
    private AttrService attrService;


    @RequestMapping("toAddSkuPage")
    public String toAddSkuPage(Integer flbh1, Integer flbh2, ModelMap map) {

        List<TMallValueVO> list = attrService.selectAttrList(flbh2);

        map.put("flbh1", flbh1);
        map.put("flbh2", flbh2);
        map.put("list",list);

        return "addSkuPage";
    }

    @RequestMapping("selectTmList")
    @ResponseBody
    public List<TMallProduct> selectTmList(TMallProduct spu){
        List<TMallProduct> list = skuService.selectTmList(spu);
        return list;
    }

    @RequestMapping("saveSku")
    public ModelAndView saveSku(TMSkuVO skuVO,Integer flbh1,Integer flbh2){
        skuService.saveSku(skuVO);

        ModelAndView mv =new ModelAndView();

        mv.addObject("flbh1");
        mv.addObject("flbh2");
        mv.setViewName("redirect:toAddSkuPage.do");
        return mv;
    }









}
