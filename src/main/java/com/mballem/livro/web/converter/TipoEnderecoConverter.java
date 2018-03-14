package com.mballem.livro.web.converter;

import com.mballem.livro.entity.Endereco.TipoEndereco;

import java.beans.PropertyEditorSupport;

/**
 * Created by Ballem on 01/03/2017.
 * 
 * Converte o valor do estado recebido da página em um enum.
 */
public class TipoEnderecoConverter extends PropertyEditorSupport {

	@Override
	public void setAsText(String text) throws IllegalArgumentException {
		
		super.setValue(text.equals("RESIDENCIAL") ? TipoEndereco.RESIDENCIAL : TipoEndereco.COMERCIAL);
	}
}
