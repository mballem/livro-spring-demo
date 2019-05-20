package com.mballem.livro.service;

import com.mballem.livro.entity.Contato;
import com.mballem.livro.entity.Endereco;
import com.mballem.livro.repository.ContatoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;

/**
 * Created by Ballem on 30/01/2017.
 */
@Service
public class ContatoService {

	@Autowired
	private ContatoRepository repository;

	@Transactional
	public void salvar(Contato contato) {
		contato.setDtCadastro(new Date());
		repository.save(contato);
	}

	@Transactional
	public void alterar(Contato contato) {
		Contato c = repository.findOne(contato.getId());
		c.setIdade(contato.getIdade());
		c.setNome(contato.getNome());

		Endereco e = c.getEndereco();
		e.setCidade(contato.getEndereco().getCidade());
		e.setEstado(contato.getEndereco().getEstado());
		e.setLogradouro(contato.getEndereco().getLogradouro());
		e.setTipoEndereco(contato.getEndereco().getTipoEndereco());

		c.setEndereco(e);

		repository.save(c);
	}

	@Transactional
	public void excluir(Long id) {
		repository.delete(id);
	}

	@Transactional(readOnly = true)
	public Contato buscaPorId(Long id) {
		return repository.findOne(id);
	}

	@Transactional(readOnly = true)
	public Page<Contato> paginar(int start, int size, Sort sort) {
		Pageable pageable = new PageRequest(start , size, sort);
		return repository.findAll(pageable);
	}

	@Transactional(readOnly = true)
	public Page<Contato> paginar(int start, int size, Sort sort, String sFilter) {
		Pageable pageable = new PageRequest(start, size, sort);
		return repository.findByFiltros(sFilter, pageable);
	}

	@Transactional(readOnly = true)
	public Page<Contato> filterByIdade(int start, int size, Sort sort, Integer idade) {
		Pageable pageable = new PageRequest(start, size, sort);
		return repository.findByIdade(idade, pageable);
	}
}
