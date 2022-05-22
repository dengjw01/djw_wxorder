package com.order.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.order.entity.Product;
import com.order.mapper.ProductMapper;
import com.order.service.IProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 商品Service实现
 */
@Service("productService")
public class IProductServiceImpl extends ServiceImpl<ProductMapper,Product> implements IProductService {

    @Autowired
    private ProductMapper productMapper;
}
