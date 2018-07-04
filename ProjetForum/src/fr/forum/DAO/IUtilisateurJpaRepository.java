package fr.forum.DAO;

import org.springframework.data.jpa.repository.JpaRepository;
import fr.forum.entities.Utilisateur;

public interface IUtilisateurJpaRepository extends JpaRepository<Utilisateur, Long> {

}
