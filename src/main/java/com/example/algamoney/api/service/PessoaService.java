package com.example.algamoney.api.service;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Service;

import com.example.algamoney.api.model.Pessoas;
import com.example.algamoney.api.repository.PessoaRepository;

@Service
public class PessoaService {

	@Autowired
	private PessoaRepository pessoaRepository;

	public Pessoas atualizar(Long codigo, Pessoas pessoa) {
		Pessoas pessoaSalva = buscarPessoaPeloCodigo(codigo);

		BeanUtils.copyProperties(pessoa, pessoaSalva, "codigo");
		return pessoaRepository.save(pessoaSalva);

	}

	public void atualizarPropriedadAtivo(Long codigo, Boolean ativo) {
		Pessoas pessoaSalva = buscarPessoaPeloCodigo(codigo);
				pessoaSalva.setAtivo(ativo);
				pessoaRepository.save(pessoaSalva);
	}

	public Pessoas buscarPessoaPeloCodigo(Long codigo) {
		Pessoas pessoaSalva = pessoaRepository.findById(codigo).orElse(null);
	if(pessoaSalva == null) {
		throw new EmptyResultDataAccessException(1);
}
	return pessoaSalva;
	}
}
