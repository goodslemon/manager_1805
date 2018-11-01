package com.mr.mapper;

import com.mr.model.TMallValueVO;

import java.util.List;
import java.util.Map;

/**
 * Created by Wy on 2018/10/30.
 */
public interface AttrMapper {
    void saveAttr(TMallValueVO attr);

    void saveAttrValue(Map<String, Object> map);

    List<TMallValueVO> selectAttrList(Integer flbh2);
}
