package com.mr.model;

import java.util.List;

/**
 * Created by Wy on 2018/10/31.
 */
public class TMSkuVO extends TMallSku{

    private List<TMallSkuAttrValue> list;

    public List<TMallSkuAttrValue> getList() {
        return list;
    }

    public void setList(List<TMallSkuAttrValue> list) {
        this.list = list;
    }
}
