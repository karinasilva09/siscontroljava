package br.com.siscontrol.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Categorias {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id_categoria")
	private Long id;
	
	@Column(name="nome_categoria")
	private String nomeCategoria;
	
	@Column(name="id_categoria_pai")
	private Long idCategoriaPai;
	
	@Column(name="nome_categoria_pai")
	private String nomeCategoriaPai;
	
	@Column(name="dt_criacao")
	private Date dataCriacao;
	
	@Column(name="dt_alteracao")
	private Date dataAlteracao;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNomeCategoria() {
		return nomeCategoria;
	}

	public void setNomeCategoria(String nomeCategoria) {
		this.nomeCategoria = nomeCategoria;
	}

	public Long getIdCategoriaPai() {
		return idCategoriaPai;
	}

	public void setIdCategoriaPai(Long idCategoriaPai) {
		this.idCategoriaPai = idCategoriaPai;
	}
	
	public String getNomeCategoriaPai() {
		return nomeCategoriaPai;
	}

	public void setNomeCategoriaPai(String nomeCategoriaPai) {
		this.nomeCategoriaPai = nomeCategoriaPai;
	}

	public Date getDataCriacao() {
		return dataCriacao;
	}

	public void setDataCriacao(Date dataCriacao) {
		this.dataCriacao = dataCriacao;
	}

	public Date getDataAlteracao() {
		return dataAlteracao;
	}

	public void setDataAlteracao(Date dataAlteracao) {
		this.dataAlteracao = dataAlteracao;
	}
	
	

}
