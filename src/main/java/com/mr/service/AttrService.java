package com.mr.service;

import com.mr.model.TMallAttrVO;
import com.mr.model.TMallValueVO;

import java.util.List;

/**
 * Created by Wy on 2018/10/30.
 */
public interface AttrService {


    void saveAttr(TMallAttrVO attrVO, Integer flbh2);

    List<TMallValueVO> selectAttrList(Integer flbh2);
}
