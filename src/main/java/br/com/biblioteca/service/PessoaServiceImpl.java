package br.com.biblioteca.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.com.biblioteca.model.Pessoa;
import br.com.biblioteca.repository.PessoaRepository;

@Service
public class PessoaServiceImpl implements PessoaService{
	
	// == fields ==
	private PessoaRepository pessoaRepository;

	// == constructors ==
	@Autowired
	public PessoaServiceImpl(PessoaRepository pessoaRepository) {
		this.pessoaRepository = pessoaRepository;
	}
	
	// == override methods ==
	@Override
	public List<Pessoa> getAll() {
		return pessoaRepository.findAll();
	}
	
	@Override
	public List<Pessoa> getAllWithoutProjeto(){
		List<Pessoa> pessoas = pessoaRepository.findAll();
		for(Pessoa pessoa : pessoas) {
			pessoa.setProjetos(null);
		}
		return pessoas;
	}
	
	@Override
	public List<Pessoa> getAllFuncionarios() {
		List<Pessoa> pessoas = pessoaRepository.findByFuncionario(true);
		for(Pessoa pessoa : pessoas) {
			pessoa.setProjetos(null);
		}
		return pessoas;
	}

	@Override
	public Optional<Pessoa> findOne(Long id) {
		return pessoaRepository.findById(id);
	}

	@Override
	public Pessoa create(Pessoa pessoa) {
		return pessoaRepository.save(pessoa);
	}

	@Override
	public Pessoa update(Pessoa pessoa) {
		return pessoaRepository.save(pessoa);
	}

	@Override
	public void delete(Long id) {
		pessoaRepository.deleteById(id);
	}	
}
