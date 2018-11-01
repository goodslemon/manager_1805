package com.mr.service;

import com.mr.model.TMSkuVO;
import com.mr.model.TMallProduct;

import java.util.List;

/**
 * Created by Wy on 2018/10/31.
 */
public interface SkuService {
    List<TMallProduct> selectTmList(TMallProduct spu);

    void saveSku(TMSkuVO skuVO);
}
