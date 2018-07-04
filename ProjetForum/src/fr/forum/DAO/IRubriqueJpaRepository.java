package fr.forum.DAO;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.forum.entities.Rubrique;

public interface IRubriqueJpaRepository extends JpaRepository<Rubrique, Long> {

}
