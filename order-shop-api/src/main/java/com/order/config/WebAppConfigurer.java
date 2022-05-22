package com.order.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
/*
web项目配置类
 */
@Configuration
public class WebAppConfigurer implements WebMvcConfigurer {
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/image/swiper/**").addResourceLocations("file:E:\\order-shop-image\\swiperImgs\\");
        registry.addResourceHandler("/image/bigType/**").addResourceLocations("file:E:\\order-shop-image\\bigTypeImgs\\");
        registry.addResourceHandler("/image/product/**").addResourceLocations("file:E:\\order-shop-image\\productImgs\\");
        registry.addResourceHandler("/image/productSwiperImgs/**").addResourceLocations("file:E:\\order-shop-image\\productSwiperImgs\\");
        registry.addResourceHandler("/image/productIntroImgs/**").addResourceLocations("file:E:\\order-shop-image\\productIntroImgs\\");
    }
}
