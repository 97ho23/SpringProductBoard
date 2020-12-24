package com.yjh.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.yjh.domain.ProductVO;
import com.yjh.service.ProductService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/product/*")
public class ProductController {

	@Setter(onMethod_ = { @Autowired })
	private ProductService service;

	@GetMapping("/list")
	public void list(Model model) {
		log.info("ProductController list.............................");
		model.addAttribute("list", service.getList());
	}

	@GetMapping("/register")
	public void register() {
		log.info("ProductController register Get.............................");
	}

	@PostMapping("/register")
	public String register(ProductVO product, RedirectAttributes rttr) {
		log.info("ProductController register Post.............................");
		service.register(product);
		rttr.addFlashAttribute("result", product.getPid());
		return "redirect:/product/list";
	}

	@GetMapping({"/get", "/modify"})
	public void get(@RequestParam("pid") Long pid, Model model) {
		log.info("ProductController get.............................");
		model.addAttribute("product", service.get(pid));

	}

	@PostMapping("/modify")
	public String modify(ProductVO product, RedirectAttributes rttr) {
		log.info("ProductController modify.............................");
		if (service.modify(product)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/product/list";
	}

	@PostMapping("/remove")
	public String remove(@RequestParam("pid") Long pid, RedirectAttributes rttr) {
		log.info("ProductController remove.............................");
		if (service.remove(pid)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/product/list";
	}
}
