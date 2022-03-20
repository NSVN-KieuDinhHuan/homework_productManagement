package com.codegym.controller;

import com.codegym.model.Product;
import com.codegym.service.category.ICategoryService;
import com.codegym.service.product.IProductService;
import com.codegym.service.product.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller

public class productController {
    public static final String MSG_ACTION_SUCCESSED = "Thao tac thanh cong";
    public static final String MSG_ACTION_FAILED = "Thao tac that bai!";
    @Autowired
    private IProductService productService;
    private ICategoryService categoryService;
    @RequestMapping("/products")
    public ModelAndView showList(Model model){
        ModelAndView modelAndView = new ModelAndView("/list");
        List<Product> products = productService.findAll();
        modelAndView.addObject("products", products);
        model.addAttribute("categoryService",categoryService);
        return modelAndView;
    }
    @GetMapping("/edit/{id}")
    public ModelAndView showEdit(@PathVariable int id){
        ModelAndView modelAndView = new ModelAndView("/edit");
        Product product = productService.findById(id);
        modelAndView.addObject("product", product);
        return modelAndView;
    }
    @PostMapping("/edit/{id}")
    public  ModelAndView Edit(@PathVariable int id,
                              @RequestParam String name,
                              @RequestParam Long price,
                              @RequestParam int quantity,
                              @RequestParam String color,
                              @RequestParam String description,
                              @RequestParam int  categoryId
    ){
        Product product = new Product(id,name, price, quantity,color,description, categoryId);
        productService.updateById(id, product);
        ModelAndView modelAndView = new ModelAndView("/list");
    return modelAndView;
    }

    @GetMapping("/add")
    public String showAddProductForm(){
        return "create";
    }
    @PostMapping("/add")
    public ModelAndView addNewProduct(
            @RequestParam String name,
            @RequestParam Long price,
            @RequestParam int quantity,
            @RequestParam String color,
            @RequestParam String description,
            @RequestParam int  categoryId
    ){
        ModelAndView modelAndView = new ModelAndView("product/add");
        Product product = new Product(name, price, quantity,color,description, categoryId);
        boolean success = productService.create(product);
        String message = success ? MSG_ACTION_SUCCESSED : MSG_ACTION_FAILED;
        modelAndView.addObject("success", success);
        modelAndView.addObject("message", message);
        return modelAndView;
    }
}
