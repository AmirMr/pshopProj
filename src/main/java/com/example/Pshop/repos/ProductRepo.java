package com.example.Pshop.repos;

import com.example.Pshop.domain.Product;
import org.springframework.data.jpa.repository.JpaRepository;


public interface ProductRepo extends JpaRepository<Product, Long> {

}
