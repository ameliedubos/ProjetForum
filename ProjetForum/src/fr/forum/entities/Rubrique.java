package fr.forum.entities;

import java.util.List;

public class Rubrique {
	private Long id;
	private String nom;
	private List<Sujet> listeSujets;

	public Rubrique() {

	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public List<Sujet> getListeSujets() {
		return listeSujets;
	}

	public void setListeSujets(List<Sujet> listeSujets) {
		this.listeSujets = listeSujets;
	}

	public String toString() {
		return "Rubrique [id=" + id + ", nom=" + nom + "]";
	}

}
