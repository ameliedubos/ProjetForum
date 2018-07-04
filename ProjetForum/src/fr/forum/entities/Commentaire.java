package fr.forum.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Commentaire {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String texte;

    @ManyToOne
    private Utilisateur utilisateur;

    public Commentaire() {

    }

    public Long getId() {
	return id;
    }

    public void setId(Long id) {
	this.id = id;
    }

    public String getTexte() {
	return texte;
    }

    public void setTexte(String texte) {
	this.texte = texte;
    }

    public Utilisateur getUtilisateur() {
	return utilisateur;
    }

    public void setUtilisateur(Utilisateur utilisateur) {
	this.utilisateur = utilisateur;
    }

    @Override
    public String toString() {
	return "Commentaire [id=" + id + ", texte=" + texte + ", utilisateur=" + utilisateur + "]";
    }

}
