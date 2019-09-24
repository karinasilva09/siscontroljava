package br.com.siscontrol.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import br.com.siscontrol.model.Fornecedores;
import br.com.siscontrol.repository.FornecedorRepository;

@RestController
@RequestMapping({"/fornecedores"})
public class FornecedorController {
	
	@Autowired
	private FornecedorRepository repository;
	
	public FornecedorController(FornecedorRepository repository) {
		this.repository = repository;
	}
	
	@GetMapping
	public List<Fornecedores> findAll(){
		return repository.findAll();
	}
	
	@PostMapping(value="/salvar")
	public Fornecedores create(@RequestBody Fornecedores fornecedor) {
		return repository.save(fornecedor);
	}
}
