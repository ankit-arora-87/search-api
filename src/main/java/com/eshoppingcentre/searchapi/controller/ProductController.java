package com.eshoppingcentre.searchapi.controller;

import com.eshoppingcentre.searchapi.entity.Product;
import com.eshoppingcentre.searchapi.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.lang.NonNull;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.Valid;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.util.List;

@RestController
@RequestMapping("api/v1/products")
@Validated
public class ProductController {

    @Autowired
    private ProductService productService;

    @GetMapping("/search")
    public ResponseEntity<List<Product>> search(@Valid @RequestParam(name = "query", required = true) @NotNull @NotBlank String query,
                                                @RequestParam(name = "page", defaultValue = "0") Integer page,
                                                @RequestParam(name = "size", defaultValue = "1") Integer size,
                                                @RequestParam(name = "sortBy", defaultValue = "id") String sortBy){
        return ResponseEntity.ok(productService.searchProducts(query, page, size, sortBy));
    }
}
