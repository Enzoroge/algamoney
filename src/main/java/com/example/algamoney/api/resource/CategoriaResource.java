
package com.example.algamoney.api.resource;

import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationEventPublisher;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.algamoney.api.event.RecursoCriadoEvent;
import com.example.algamoney.api.model.Categoria;
import com.example.algamoney.api.repository.CategoriaRepository;

//CLASSE QUE RECEBE REQUISIÇÕES DO POSTMAN

@RestController
@RequestMapping("/categorias")
public class CategoriaResource {
	@Autowired
	private CategoriaRepository categoriaRepository;
	private ApplicationEventPublisher publisher;
	
//Responsavel por buscar categoria
	@GetMapping
	// public ResponseEntity<?>listar(){criando resposta nas requisições
	public List<Categoria> listar() {
		return categoriaRepository.findAll();
		 //categorias = categoriaRepository.findAll();
		//return !categorias.isEmpty()? ResponseEntity.ok(categorias):
		// ResponseEntity.notFound().build();

	}

	// criando categoria pelo postman
	@PostMapping
	// faz com que, apos criar a categoria, retorne a mensagem que foi criado
	public ResponseEntity<Categoria> criar(@Valid @RequestBody Categoria categoria, HttpServletResponse response) {
		Categoria categoriaSalva = categoriaRepository.save(categoria);
		publisher.publishEvent(new RecursoCriadoEvent(this, response, categoriaSalva.getCodigo()));

		return ResponseEntity.status(HttpStatus.CREATED).body(categoriaSalva);
	}

	// buscar categoria pelo codigo
	@GetMapping("/{codigo}")
	public ResponseEntity<Categoria> buscarPeloCodigo(@PathVariable Long codigo) {
		Categoria categoria = categoriaRepository.findById(codigo).orElse(null);
		return categoria != null ? ResponseEntity.ok(categoria): ResponseEntity.notFound().build();
		
		
		
		
			

		
		
	}

	
	
		
	

}
