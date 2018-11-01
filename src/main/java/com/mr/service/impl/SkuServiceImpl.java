package com.mr.service.impl;

import com.mr.mapper.SkuMapper;
import com.mr.model.TMSkuVO;
import com.mr.model.TMallProduct;
import com.mr.service.SkuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Wy on 2018/10/31.
 */
@Service
public class SkuServiceImpl implements SkuService {

    @Autowired
    private SkuMapper skuMapper;

    public List<TMallProduct> selectTmList(TMallProduct spu) {
        return skuMapper.selectTmList(spu);
    }

    public void saveSku(TMSkuVO skuVO) {
        skuMapper.saveSku(skuVO);

        Map<String,Object> map = new HashMap();
        map.put("shpId",skuVO.getShpId());
        map.put("skuId",skuVO.getId());
        map.put("list",skuVO.getList());

        skuMapper.saveSkuAttr(map);
    }
}
