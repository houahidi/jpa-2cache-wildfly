package be.smals.library.dao;

import java.util.List;


public interface EntityDao<E, K> {
	
	void create(E t);
	void update(E t);
	void remove(E t);
	E findById(Class<E> e, K k);
	List<E> findAll(Class<E> e, int index, int length);

}
