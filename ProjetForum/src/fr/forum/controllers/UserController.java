package fr.forum.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import fr.forum.entities.ERole;
import fr.forum.entities.Utilisateur;

@Controller
@RequestMapping("/utilisateur")
public class UserController {

    @Autowired
    // private IUtilisateurJpaRepository utilisateurRepo;

    @GetMapping("/home")
    public String accueil() {
	return "accueil";
    }

    @PostMapping("/modifier")
    public String modifier(@Valid @ModelAttribute(value = "usr") Utilisateur utilisateur, BindingResult result,
	    Model model) {
	if (!result.hasErrors()) {
	    // encodePassword(utilisateur);
	    // utilisateurRepo.save(utilisateur);
	}
	return "modifierUtilisateur";
    }

    @GetMapping("/goToCreer")
    public String goToCreer(Model model) {
	model.addAttribute("usr", new Utilisateur());
	model.addAttribute("roles", ERole.values());
	return "creerCompte";
    }

    @PostMapping("/creer")
    public String creer(@Valid @ModelAttribute(value = "usr") Utilisateur utilisateur, BindingResult result,
	    Model model) {
	if (!result.hasErrors()) {
	    // encodePassword(utilisateur);
	    // utilisateurRepo.save(utilisateur);
	    model.addAttribute("usr", new Utilisateur());
	}
	return "creerCompte";
    }
}
