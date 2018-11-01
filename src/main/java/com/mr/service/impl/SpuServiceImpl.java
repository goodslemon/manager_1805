package com.mr.service.impl;

import com.mr.mapper.SpuMapper;
import com.mr.model.TMallProduct;
import com.mr.service.SpuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Wy on 2018/10/29.
 */
@Service
public class SpuServiceImpl implements SpuService {

    @Autowired
    private SpuMapper spuMapper;

    public void saveSpu(TMallProduct spu, List<String> url) {

        spuMapper.saveSpu(spu);

        //获取返回的Id
        Integer id = spu.getId();

        //把参数方到Map中
        Map<String,Object> map = new HashMap();

        map.put("url",url);

        map.put("shpId",id);

        spuMapper.saveSpuImg(map);



    }
}
