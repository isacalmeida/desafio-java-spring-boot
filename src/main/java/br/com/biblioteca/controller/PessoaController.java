package br.com.biblioteca.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.biblioteca.model.Pessoa;
import br.com.biblioteca.service.PessoaService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/pessoa")
public class PessoaController {

	// == fields ==
	private PessoaService pessoaService;
	
	// == constructors ==
	@Autowired
	public PessoaController(PessoaService pessoaService) {
		this.pessoaService = pessoaService;
	}
	
	// == public methods ==
	@GetMapping("")
	public String home(Model model) {
		log.info("GetMapping /pessoa/ on PessoaController");
		model.addAttribute("pessoas", pessoaService.getAll());
		return "pessoa/index";
	}
	
	@GetMapping("/novo")
	public ModelAndView novo() {
		log.info("GetMapping /pessoa/novo on PessoaController");
		return new ModelAndView("pessoa/novo", "pessoa", new Pessoa());
	}
	
	@PostMapping("/salvar")
	public String salvar(@ModelAttribute Pessoa pessoa){
		log.info("PostMapping /pessoa/salvar on PessoaController");
        pessoaService.create(pessoa);
        return "redirect:/pessoa";
    }
	
	@GetMapping("/{id}/editar")
	public ModelAndView editar(@PathVariable("id") Long id) {
		log.info("GetMapping /pessoa/{id}/editar on PessoaController");
        Optional<Pessoa> pessoa = pessoaService.findOne(id);
        return new ModelAndView("pessoa/editar", "pessoa", pessoa.get());
    }
	
	@PostMapping("/atualizar")
	public String atualizar(@ModelAttribute Pessoa pessoa){
		log.info("PostMapping /pessoa/atualizar on PessoaController");
		pessoaService.update(pessoa);
		return "redirect:/pessoa";
	}
	
	@GetMapping("/{id}/excluir")
	public String excluir(@PathVariable("id") Long id) {
		log.info("GetMapping /pessoa/{id}/excluir on PessoaController");
		if(pessoaService.findOne(id).get().getProjetos().isEmpty())
			pessoaService.delete(id);
		return "redirect:/pessoa";
	}
}
