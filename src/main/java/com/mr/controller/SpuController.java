package com.mr.controller;

import com.mr.model.TMallProduct;
import com.mr.service.SpuService;
import com.mr.util.MyFileUploadUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Map;

/**
 * Created by Wy on 2018/10/29.
 */
@Controller
public class SpuController {

    @Autowired
    private SpuService spuService;

    //toAddSpuPage
    @RequestMapping("toAddSpuPage")
    public String toAddSpuPage(TMallProduct spu,ModelMap map){

        map.put("spu",spu);

        return "addSpuPage";
    }


    /**
     * 增加spu对象
     * @param spu
     * @param imgs
     * @return
     */
    @RequestMapping("saveSpu")
    public ModelAndView saveSpu(TMallProduct spu,
                          @RequestParam MultipartFile [] imgs){
        //通过工具类拼接路径
        List<String> url = MyFileUploadUtil.upload_image(imgs);
        //放到spu对象中
        spu.setShpTp(url.get(0));
        //添加图片，和对象
        spuService.saveSpu(spu,url);

        //重定向返回数据
        ModelAndView map = new ModelAndView();
        map.addObject("flbh1",spu.getFlbh1());
        map.addObject("flbh2",spu.getFlbh2());
        map.addObject("ppId",spu.getPpId());
        map.setViewName("redirect:toAddSpuPage.do");

        return map;
    }


}
