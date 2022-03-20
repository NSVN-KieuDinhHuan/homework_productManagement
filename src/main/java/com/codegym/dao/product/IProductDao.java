package com.codegym.dao.product;

import com.codegym.dao.IGeneralDao;
import com.codegym.model.Product;

import java.util.List;

public interface IProductDao extends IGeneralDao<Product> {
    List<Product> findAll();
    List<Product> findAllProductByName(String name);
    List<Product> findAllProductByCategoryId(int categoryId);
    boolean create(Product product);
    boolean updateById(int id, Product product);
    boolean deleteById(int id);


}
