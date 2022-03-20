package com.codegym.service.product;

import com.codegym.model.Product;
import com.codegym.service.IGeneralService;

import java.util.List;

public interface IProductService extends IGeneralService<Product> {

    List<Product> findAll();
    List<Product> findAllProductByName(String name);
    List<Product> findAllProductByCategoryId(int categoryId);
    boolean create(Product product);
    boolean updateById(int id, Product product);
    boolean deleteById(int id);
}
