package be.smals.library.dao;

import java.util.List;

import javax.ejb.Local;
import javax.ejb.Stateless;
import javax.ejb.TransactionAttribute;
import javax.ejb.TransactionAttributeType;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

//EJB configuration
@Stateless
@Local(EntityDao.class)
@TransactionAttribute(TransactionAttributeType.REQUIRED)
public class EntiteDaoImpl<E, K> implements EntityDao<E, K> {
	
	
	//automatic entitymanager injection
	@PersistenceContext
	private EntityManager  entityManager;

	public EntiteDaoImpl() {
	}
	
	
	public EntiteDaoImpl(EntityManager entityManager) {
		this.entityManager = entityManager;
	}


	@Override
	
	public void create(E t) {
		//entityManager.getTransaction().begin();
		entityManager.persist(t);
		//entityManager.getTransaction().commit();
	}

	@Override
	public void update(E t) {
		//entityManager.getTransaction().begin();
		entityManager.merge(t);
		//entityManager.getTransaction().commit();
	}

	@Override
	public void remove(E t) {
		//entityManager.getTransaction().begin();
		entityManager.remove(t);
		//entityManager.getTransaction().commit();
		
	}


	@Override
	@TransactionAttribute(TransactionAttributeType.SUPPORTS)
	public E findById(Class<E> e, K k) {	
		return (E) entityManager.find(e, k);
	}

	@SuppressWarnings("unchecked")
	@Override
	@TransactionAttribute(TransactionAttributeType.SUPPORTS)
	public List<E> findAll(Class<E> e, int index, int length) {
		
		 String query  = "select e from "+ e.getName() + " e";
		 System.out.println("Query : "+ query);
		 Query queryJPQL = entityManager.createQuery(query);
		 queryJPQL.setFirstResult(index);
		 queryJPQL.setMaxResults(length);
		 queryJPQL.setHint("org.hibernate.cacheable", "true");
		return  queryJPQL.getResultList();
	}

	public EntityManager getEntityManager() {
		return entityManager;
	}

	public void setEntityManager(EntityManager entityManager) {
		this.entityManager = entityManager;
	}

	
	
}
