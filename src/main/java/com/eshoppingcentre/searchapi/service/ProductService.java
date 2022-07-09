package com.eshoppingcentre.searchapi.service;

import com.eshoppingcentre.searchapi.entity.Product;

import java.util.List;

public interface ProductService {

    List<Product> searchProducts(String query);

    List<Product> searchProducts(String query, Integer page, Integer size, String sortOrder);
}
