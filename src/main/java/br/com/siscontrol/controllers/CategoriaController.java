package br.com.siscontrol.controllers;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import br.com.siscontrol.model.Categorias;
import br.com.siscontrol.repository.CategoriasRepository;

@RestController
@RequestMapping({"/categorias"})
public class CategoriaController {
	
	@Autowired
	private CategoriasRepository repository;
	
	CategoriaController(CategoriasRepository categoriaRepository){
		this.repository = categoriaRepository;
	}
	
	@GetMapping
	public List<Categorias> findAll(){
		return repository.findAll();
	}
	
	@GetMapping(path = {"/{id}"})
	public Categorias findById(@PathVariable Long id) {
		return repository.findById(id).orElseThrow();
	}
	
	@DeleteMapping(path = {"/delete/{id}"})
	public void deleteById(@PathVariable Long id) {
		repository.deleteById(id);
	}
	
	@PostMapping(value = "/salvar")
	public Categorias create(@RequestBody Categorias categoria) {
		System.out.println("ok");
		return repository.save(categoria);
	}
}
