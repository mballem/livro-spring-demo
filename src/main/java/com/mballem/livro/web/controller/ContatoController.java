package com.mballem.livro.web.controller;

import com.github.dandelion.datatables.core.ajax.DataSet;
import com.github.dandelion.datatables.core.ajax.DatatablesCriterias;
import com.github.dandelion.datatables.core.ajax.DatatablesResponse;
import com.github.dandelion.datatables.extras.spring3.ajax.DatatablesParams;
import com.mballem.livro.entity.Contato;
import com.mballem.livro.entity.Endereco.TipoEndereco;
import com.mballem.livro.service.ContatoService;
import com.mballem.livro.util.ContatoDatatable;
import com.mballem.livro.web.converter.TipoEnderecoConverter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 * Created by Ballem on 01/03/2017.
 */
@Controller
@RequestMapping("/{tenantId}/contato")
public class ContatoController {

	@Autowired
	private ContatoService contatoService;

	@InitBinder("contato")
	public void initBinder(WebDataBinder binder) {

		binder.registerCustomEditor(TipoEndereco.class, new TipoEnderecoConverter());
	}

	@PostMapping("/salvar")
	public String salvar(@ModelAttribute Contato contato, RedirectAttributes attributes) {

        if (contato.getId() == null) {
        	
            contatoService.salvar(contato);
            attributes
                    .addFlashAttribute("mensagem", "Contato '" + contato.getNome() + "' foi inserido.")
                    .addFlashAttribute("status", 1);
        } else {
        	
            contatoService.alterar(contato);
            attributes
                    .addFlashAttribute("mensagem", "Contato id=" + contato.getId() + " foi alterado.")
                    .addFlashAttribute("status", 1);
        }
		return "redirect:/{tenantId}/contato";
	}

	@GetMapping("/edit")
	public @ResponseBody Contato edit(@RequestParam("id") Long id) {

		return contatoService.buscaPorId(id);
	}

	@GetMapping("/delete/{id}")
	public String remover(@PathVariable Long id, RedirectAttributes attributes) {

		contatoService.excluir(id);
        attributes
                .addFlashAttribute("mensagem", "Contato id="+ id +" foi excluído.")
                .addFlashAttribute("status", 1);
		return "redirect:/{tenantId}/contato";
	}

	@GetMapping("/dandelion")
	public @ResponseBody DatatablesResponse<Contato> findAll(@DatatablesParams DatatablesCriterias criterias) {

		DataSet<Contato> dataSet = new ContatoDatatable(criterias, contatoService).execute();
		
		return DatatablesResponse.build(dataSet, criterias);
	}
}
