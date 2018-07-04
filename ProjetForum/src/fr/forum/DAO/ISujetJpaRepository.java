package fr.forum.DAO;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.forum.entities.Sujet;

public interface ISujetJpaRepository extends JpaRepository<Sujet, Long> {

}
