package fr.forum.entities;

public class Commentaire {
	private Long id;
	private String texte;
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

	public String toString() {
		return "Commentaire [id=" + id + ", texte=" + texte + ", utilisateur=" + utilisateur + "]";
	}

}
