package com.eshoppingcentre.searchapi.service;

import com.eshoppingcentre.searchapi.entity.Product;
import com.eshoppingcentre.searchapi.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductServiceImpl implements ProductService{

    @Autowired
    private ProductRepository productRepository;

    @Override
    public List<Product> searchProducts(String query) {
        Pageable pageable =
                PageRequest.of(0, 1, Sort.by("base_price").ascending());
        return productRepository.searchProducts(query, pageable);
    }

    @Override
    public List<Product> searchProducts(String query, Integer page, Integer size, String sortBy) {
        Pageable pageable =
                PageRequest.of(page, size, Sort.by(sortBy).ascending());
        return productRepository.searchProducts(query, pageable);
    }
}
