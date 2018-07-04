package fr.forum.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

@Entity
public class Utilisateur {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String pseudo;
    @NotEmpty(message = "{error.utilisateur.email.obligatoire}")
    @Email(message = "{error.utilisateur.email.malforme}")
    @Column(unique = true, nullable = false)
    private String email;
    @NotEmpty(message = "{error.utilisateur.password.obligatoire}")
    private String password;

    @NotNull(message = "{error.utilisateur.role.obligatoire}")
    @Enumerated(EnumType.STRING)
    private ERole role;

    public Utilisateur() {

    }

    public Long getId() {
	return id;
    }

    public void setId(Long id) {
	this.id = id;
    }

    public String getPseudo() {
	return pseudo;
    }

    public void setPseudo(String pseudo) {
	this.pseudo = pseudo;
    }

    public String getEmail() {
	return email;
    }

    public void setEmail(String email) {
	this.email = email;
    }

    public String getPassword() {
	return password;
    }

    public void setPassword(String password) {
	this.password = password;
    }

    public ERole getRole() {
	return role;
    }

    public void setRole(ERole role) {
	this.role = role;
    }

    @Override
    public String toString() {
	return "Utilisateur [id=" + id + ", pseudo=" + pseudo + ", email=" + email + ", password=" + password + "]";
    }

}
