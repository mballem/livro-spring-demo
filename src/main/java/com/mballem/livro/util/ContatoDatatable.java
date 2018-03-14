package com.mballem.livro.util;

import com.github.dandelion.datatables.core.ajax.ColumnDef;
import com.github.dandelion.datatables.core.ajax.DataSet;
import com.github.dandelion.datatables.core.ajax.DatatablesCriterias;
import com.mballem.livro.entity.Contato;
import com.mballem.livro.service.ContatoService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Sort;

/**
 * Created by Ballem on 01/03/2017.
 */
public class ContatoDatatable {

	private ContatoService service;
	private Sort sort;
	private int start;
	private int size;
	private String filter;

	public ContatoDatatable(DatatablesCriterias criterias, ContatoService service) {
		this.service = service;
		this.size = criterias.getDisplaySize();
		this.start = getStart(criterias);
		this.sort = getSort(criterias);
		this.filter = getFilter(criterias);
	}
	
	private int getStart(DatatablesCriterias criterias) {
		if (criterias.getDisplayStart() == 0) {
			return 0;
		}
		return criterias.getDisplayStart() / criterias.getDisplaySize();
	}
	
	private Sort getSort(DatatablesCriterias criterias) {
		String order= "";
		String orderByFiled = "";
		
		for (ColumnDef c : criterias.getSortingColumnDefs()) {		
			order = c.getSortDirection().name();
			orderByFiled = c.getName();
		}
		return new Sort(new Sort.Order(
				Sort.Direction.fromString(order), 
				orderByFiled));
	}

	private String getFilter(DatatablesCriterias criterias) {

        return (criterias.getSearch().isEmpty()) ? "" : criterias.getSearch();
    }

    private Page<Contato> query() {
        //filtro geral
        if (!filter.isEmpty()) {        	
        	if (filter.matches("[0-9]+")) {        		
    	    	Integer iFilter = Integer.valueOf(filter);
                return service.filterByIdade(start, size, sort, iFilter);
            } else {            	
            	String sFilter = filter.toUpperCase();
	          	return service.paginar(start, size, sort, sFilter);
            }
        }
        //sem filtro
        return service.paginar(start, size, sort);
    }

	public DataSet<Contato> execute() {
		Page<Contato> contatos = query();
		Long totalItensPagina = (long) contatos.getNumberOfElements();
        Long totalGeral = contatos.getTotalElements();
        return new DataSet<Contato>(
	        		contatos.getContent(), 
	        		totalItensPagina, 
	        		totalGeral);
	}

}
