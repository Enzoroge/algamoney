package com.example.algamoney.api.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.algamoney.api.model.Categoria;

// INTERFACE RESPONSÁVEL POR FORNECER METODOS
public interface CategoriaRepository extends JpaRepository<Categoria, Long>{

}
