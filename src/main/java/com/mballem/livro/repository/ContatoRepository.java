package com.mballem.livro.repository;

import com.mballem.livro.entity.Contato;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

/**
 * Created by Ballem on 01/03/2017.
 */
public interface ContatoRepository extends JpaRepository<Contato, Long> {

    @Query("select c from Contato c "
    		+ "where UPPER(c.nome) like %?1% "
    		+ "or UPPER(c.endereco.logradouro )like %?1% "
    		+ "or UPPER(c.endereco.cidade) like %?1%")
    Page<Contato> findByFiltros(String sFilter, Pageable pageable);

    Page<Contato> findByIdade(Integer idade, Pageable pageable);
}
