package be.smals.library.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NamedQuery;
import javax.persistence.Query;



@NamedQuery(name="searchtitlesanditems",query="select t from Title t join fetch t.items ")

public class EntiteDaoImpl<E, K> implements EntityDao<E, K> {
	
	private EntityManager  entityManager;

	public EntiteDaoImpl() {
	}
	
	
	public EntiteDaoImpl(EntityManager entityManager) {
		this.entityManager = entityManager;
	}


	@Override
	public void create(E t) {
		entityManager.getTransaction().begin();
		entityManager.persist(t);
		entityManager.getTransaction().commit();
	}

	@Override
	public void update(E t) {
		entityManager.getTransaction().begin();
		entityManager.merge(t);
		
	}

	@Override
	public void remove(Class<E> e, K k){
		entityManager.getTransaction().begin();
		E instance = entityManager.getReference(e, k);
		entityManager.remove(instance);
		entityManager.getTransaction().commit();
		
	}


	@Override
	public E findById(Class<E> e, K k) {	
		return (E) entityManager.find(e, k);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<E> findAll(Class<E> e, int index, int length) {
		
		 String query  = "select e from "+ e.getName() + " e";
		 Query queryJPQL = entityManager.createQuery(query, e);
		 queryJPQL.setFirstResult(index);
		 queryJPQL.setMaxResults(length);
		return  queryJPQL.getResultList();

	}

	public EntityManager getEntityManager() {
		return entityManager;
	}

	public void setEntityManager(EntityManager entityManager) {
		this.entityManager = entityManager;
	}

	
	
}
