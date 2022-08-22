package com.javaproject.aaj.weekendwalkers.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.javaproject.aaj.weekendwalkers.models.Club;
import com.javaproject.aaj.weekendwalkers.models.User;
import com.javaproject.aaj.weekendwalkers.services.ClubService;
import com.javaproject.aaj.weekendwalkers.services.UserService;

@Controller
public class ClubController {
	
	@Autowired
	private ClubService clubServ;
	
	@Autowired
	private UserService userServ;
	
	//create
	@PostMapping("/clubs/new")
	public String createClub(@Valid @ModelAttribute("club") Club club, BindingResult result, HttpSession session) {
		if(result.hasErrors()) {
			return "create_club.jsp";
		}
		Long id = (Long) session.getAttribute("user_id");
		User user = userServ.getOne(id);
		Club newClub = clubServ.createClub(club);
		user.setClub(newClub);
		userServ.update(user);
	
		return "redirect:/clubs";
	}
	
	//Read
	@GetMapping("/clubs/new")
	public String newclub(@ModelAttribute("club") Club club, Model model, HttpSession session) {
		Long id = (Long) session.getAttribute("user_id");
		User user = userServ.getOne(id);
		model.addAttribute("user", user);
		return "create_club.jsp";		
	}
	
	@GetMapping("/clubs")
	public String showClubs(Model model, HttpSession session) {
		User user = userServ.getOne((Long) session.getAttribute("user_id"));
		model.addAttribute("clubs", clubServ.allClubs());
		model.addAttribute("user", user);
		return "view_clubs.jsp";
	}
	
	@GetMapping("/clubs/show")

	public String oneClub(@PathVariable("id") Long id, Model model) {
	model.addAttribute("club", clubServ.findClub(id));	
		return "one_club.jsp";
	}
	
	@GetMapping("/clubs/{id}/edit")
	public String editClub(@PathVariable("id") Long id, Model model) {
		model.addAttribute("club", clubServ.findClub(id));
		return "edit_club.jsp";
	}
	
	//Edit
	@PutMapping("/clubs/{id}/edit")
	public String updateClub(@PathVariable("id") Long id, @Valid  @ModelAttribute("club") Club club, BindingResult result, HttpSession session) {
		if(result.hasErrors()) {
			return "edit_club.jsp";
		}else {
			clubServ.update(club);
			return "redirect:/events";
		}
		
	}
	
	//Delete
	@GetMapping("/clubs/{id}/delete")
	public String deleteClub(@PathVariable("id") Long id) {
		clubServ.delete(id);
		return "redirect:/events";
	}
	
}
