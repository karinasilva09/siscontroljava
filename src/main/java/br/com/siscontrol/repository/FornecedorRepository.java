package br.com.siscontrol.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.siscontrol.model.Fornecedores;

@Repository
public interface FornecedorRepository extends JpaRepository<Fornecedores, Long>{
	List<Fornecedores> findAll();
}
