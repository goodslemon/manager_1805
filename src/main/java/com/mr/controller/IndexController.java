package com.mr.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.rmi.registry.Registry;

/**
 * Created by Wy on 2018/10/29.
 */
@Controller
public class IndexController {

    @RequestMapping("toSpuPage")
    public String toSpuPage(){

        return  "spuPage";
    }

    @RequestMapping("toAttrPage")
    public String toAttrPage(){

        return  "attrPage";
    }

    @RequestMapping("toSkuPage")
    public String toSkuPage(){

        return  "skuPage";
    }

}
