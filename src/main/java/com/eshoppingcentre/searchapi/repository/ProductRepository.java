package com.eshoppingcentre.searchapi.repository;

import com.eshoppingcentre.searchapi.entity.Product;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public interface ProductRepository  extends JpaRepository<Product, Long> {

    final static String SEARCH_QUERY = "SELECT\n" +
            "    p.*\n" +
            "FROM\n" +
            "    products p\n" +
            "WHERE\n" +
            "    MATCH(\n" +
            "        p.name,\n" +
            "        p.short_description,\n" +
            "        p.full_description\n" +
            "    ) AGAINST(CONCAT('*',:query,'*') IN BOOLEAN MODE) OR id IN(\n" +
            "    SELECT\n" +
            "        p.id\n" +
            "    FROM\n" +
            "        products p,\n" +
            "        product_categories pc,\n" +
            "        categories c,\n" +
            "        product_tags pt,\n" +
            "        tags t\n" +
            "    WHERE\n" +
            "        (\n" +
            "            p.id = pc.product_id AND pc.category_id = c.id AND MATCH(c.name) AGAINST(CONCAT('*',:query,'*') IN BOOLEAN MODE)\n" +
            "        ) OR(\n" +
            "            p.id = pt.product_id AND pt.tag_id = t.id AND MATCH(t.name) AGAINST(CONCAT('*',:query,'*') IN BOOLEAN MODE)\n" +
            "        )\n" +
            "    GROUP BY\n" +
            "        p.name\n" +
            ")";
    @Query(value = SEARCH_QUERY, countQuery = "SELECT count(*) from ("+SEARCH_QUERY + ")", nativeQuery = true)
    List<Product> searchProducts(String query, Pageable pageable);
}
