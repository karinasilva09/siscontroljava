package br.com.siscontrol.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.siscontrol.model.Categorias;

@Repository
public interface CategoriasRepository extends JpaRepository<Categorias, Long>{
	List<Categorias> findAll();
}
