package com.example.algamoney.api.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.algamoney.api.model.Pessoas;

public interface PessoaRepository extends JpaRepository<Pessoas, Long>{

}
