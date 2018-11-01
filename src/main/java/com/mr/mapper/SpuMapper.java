package com.mr.mapper;

import com.mr.model.TMallProduct;

import java.util.Map;

/**
 * Created by Wy on 2018/10/29.
 */
public interface SpuMapper {
    void saveSpu(TMallProduct spu);

    void saveSpuImg(Map<String, Object> map);
}
