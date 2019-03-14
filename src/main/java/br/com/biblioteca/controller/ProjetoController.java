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

import br.com.biblioteca.model.Projeto;
import br.com.biblioteca.service.PessoaService;
import br.com.biblioteca.service.ProjetoService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/projeto")
public class ProjetoController {

	// == fields ==
	private ProjetoService projetoService;
	private PessoaService pessoaService;
	
	// == constructors == 
	@Autowired
	public ProjetoController(ProjetoService projetoService, PessoaService pessoaService) {
		this.projetoService = projetoService;
		this.pessoaService = pessoaService;
	}
	
	// == public methods ==
	@GetMapping("")
	public String home(Model model) {
		log.info("GetMapping /projeto/ on ProjetoController");
		model.addAttribute("projetos", projetoService.getAll());
		return "projeto/index";
	}
	
	@GetMapping("/novo")
	public ModelAndView novo() {
		log.info("GetMapping /projeto/novo on ProjetoController");
		return new ModelAndView("projeto/novo", "projeto", new Projeto())
				.addObject("pessoas", pessoaService.getAllWithoutProjeto())
				.addObject("funcionarios", pessoaService.getAllFuncionarios());
	}
	
	@PostMapping("/salvar")
	public String salvar(@ModelAttribute Projeto projeto){
		log.info("PostMapping /projeto/salvar on ProjetoController");
		projetoService.create(projeto);
        return "redirect:/projeto";
    }
	
	@GetMapping("/{id}/editar")
	public ModelAndView editar(@PathVariable("id") Long id) {
		log.info("GetMapping /projeto/{id}/excluir on ProjetoController");
        Optional<Projeto> projeto = projetoService.findOne(id);
        return new ModelAndView("projeto/editar", "projeto", projeto.get())
        		.addObject("pessoas", pessoaService.getAllWithoutProjeto())
				.addObject("funcionarios", pessoaService.getAllFuncionarios());
    }
	
	@PostMapping("/atualizar")
	public String atualizar(@ModelAttribute Projeto projeto) {
		log.info("PostMapping /projeto/atualizar on ProjetoController");
		projetoService.update(projeto);
		return "redirect:/projeto";
	}
	
	@GetMapping("/{id}/excluir")
	public String excluir(@PathVariable("id") Long id) {
		log.info("GetMapping /projeto/{id}/excluir on ProjetoController");
		if(!projetoService.findOne(id).get().getStatus().equals("iniciado"))
			if(!projetoService.findOne(id).get().getStatus().equals("em_andamento"))
				if(!projetoService.findOne(id).get().getStatus().equals("encerrado"))
					projetoService.delete(id);
		return "redirect:/projeto";
	}
}
