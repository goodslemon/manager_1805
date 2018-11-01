package com.mr.mapper;

import com.mr.model.TMSkuVO;
import com.mr.model.TMallProduct;

import java.util.List;
import java.util.Map;

/**
 * Created by Wy on 2018/10/31.
 */
public interface SkuMapper {


    List<TMallProduct> selectTmList(TMallProduct spu);

    void saveSku(TMSkuVO skuVO);

    void saveSkuAttr(Map<String, Object> map);
}
