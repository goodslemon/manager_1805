package com.mr.service.impl;

import com.mr.mapper.AttrMapper;
import com.mr.model.TMallAttrVO;
import com.mr.model.TMallValueVO;
import com.mr.service.AttrService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Wy on 2018/10/30.
 */
@Service
public class AttrServiceImpl implements AttrService {

    @Autowired
    private AttrMapper attrMapper;

    public void saveAttr(TMallAttrVO attrVO, Integer flbh2) {

        //获取 前台传递来的 属性集合
        List<TMallValueVO> attrList = attrVO.getAttrList();

        for (int i = 0; i < attrList.size(); i++) {
            //获取一个对象
            TMallValueVO attr = attrList.get(i);
            //把 分类编号 放到对象中
            attr.setFlbh2(flbh2);
            //新增属性对象
            attrMapper.saveAttr(attr);

            Map<String , Object> map = new HashMap<String , Object>();
            //将新增后的 属性Id 放到 map中
            map.put("shxmId",attr.getId());
            //将要新增的属性名属性值放到map中
            map.put("valueList",attr.getValueList());

            attrMapper.saveAttrValue(map);
        }
    }

    public List<TMallValueVO> selectAttrList(Integer flbh2) {
        return attrMapper.selectAttrList(flbh2);
    }
}
