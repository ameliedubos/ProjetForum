package fr.forum.entities;

public enum ERole {
    MODERATOR, USER, GUEST;

    public String getName() {
	return name();
    }
}
