package be.smals.library.tests.dao;



import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.fail;

import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.FlushModeType;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.junit.After;
import org.junit.Before;
import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runners.MethodSorters;

import be.smals.library.model.Category;
import be.smals.library.model.Title;


@FixMethodOrder(MethodSorters.NAME_ASCENDING)
public class CategoryDaoTestCase {
	private EntityManager entityManager;
	private EntityManagerFactory factory;
	


	@Before
	public void setUp() throws Exception {
		System.out.println("Initialise an EntityManager from the persistence unit : library-model-pu ");
		//use singleton  design pattern to manage the factory
		 factory = Persistence.createEntityManagerFactory("library-model-pu");
		 entityManager = factory.createEntityManager();
	}

	@After
	public void tearDown() throws Exception {
		 System.out.println("close the EntityManager");
		 entityManager.close();
		 entityManager = null;
		 System.out.println("close the EntityManagerFactory");
		 factory.close();
		 factory = null;
	}

	
	@Test
	public void test1Create() {
		try {
			 System.out.println("persiste a new category");
			 Category categoy = new Category(0, "Voyages") ;
			 entityManager.getTransaction().begin();
			 entityManager.persist(categoy);
			 entityManager.getTransaction().commit();
		}catch(Exception e) {
			fail(e.getMessage());
		}
		
	}
	
	@Test
	public void test2FindAll() {
		try {
			 System.out.println("find all categories ");
			 Query queryJPQL = entityManager.createQuery("select c from Category c ",Category.class);
			 queryJPQL.setFirstResult(0);
			 queryJPQL.setMaxResults(2);
			 List<Category> items = queryJPQL.getResultList();
			 assertNotNull(items);
			 System.out.println(items);
			 assertEquals(1, items.size());
			 
		}catch(Exception e) {
			fail(e.getMessage());
		}
		
	}
	
	@Test
	public void test2FindById() {
		try {
			 System.out.println("find category with id = 1");
			 //entityManager.getTransaction().begin();
			 Category item = entityManager.find(Category.class, 1L);
			 assertNotNull(item);
			 System.out.println(item);
			 assertEquals("Informatique", item.getName());
			 //entityManager.getTransaction().commit();
		}catch(Exception e) {
			fail(e.getMessage());
		}
		
	}
	
	@Test
	public void test3Update() {
		try {
			 System.out.println("update category with id = 1L");
			 //Category item = entityManager.find(Category.class, 1L);
			 //item.setName("update name");
			 Category item = new Category(1L, "update name");
			 entityManager.getTransaction().begin();
			 entityManager.merge(item);
			 entityManager.getTransaction().commit();
		}catch(Exception e) {
			fail(e.getMessage());
		}
		
	}
	
	@Test
	public void test4Remove() {
		try {
			 System.out.println("remove category with id = 1L");
			 //Category item = entityManager.find(Category.class, 1L);
			 Category item = entityManager.getReference(Category.class, 1L);
			 entityManager.getTransaction().begin();
			 entityManager.remove(item);
			 entityManager.getTransaction().commit();
		}catch(Exception e) {
			fail(e.getMessage());
		}
		
	}
}
