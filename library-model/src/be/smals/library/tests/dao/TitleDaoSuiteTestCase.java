package be.smals.library.tests.dao;



import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.fail;

import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runners.MethodSorters;

import be.smals.library.model.Title;


@FixMethodOrder(MethodSorters.NAME_ASCENDING)
public class TitleDaoSuiteTestCase {
	
	private static EntityManager entityManager;
	private static EntityManagerFactory factory;

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		System.out.println("Initialise an EntityManager from the persistence unit : library-model-pu ");
		//use singleton  design pattern to manage the factory
		 factory = Persistence.createEntityManagerFactory("library-model-pu");
		 entityManager = factory.createEntityManager();
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
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
			 System.out.println("persiste a new title");
			 Title title = new Title(2, "Web services", "SMALS", new Date(2017, 11, 20)) ;
			 entityManager.getTransaction().begin();
			 entityManager.persist(title);
			 entityManager.getTransaction().commit();
		}catch(Exception e) {
			fail(e.getMessage());
		}
		
	}
	
	@Test
	public void test2FindById() {
		try {
			 System.out.println("find title with id = 2");
			 //entityManager.getTransaction().begin();
			 //entityManager.clear();
			 System.out.println(">>>>>cl;ear cache") ;
			 Title title = entityManager.find(Title.class, 2L);
			
			 assertNotNull(title);
			 System.out.println(title);
			 assertEquals("Web services", title.getName());
			 //entityManager.getTransaction().commit();
		}catch(Exception e) {
			fail(e.getMessage());
		}
		
	}
	
	@Test
	public void test2FindAll() {
		try {
			 System.out.println("find all titles ");
			 Query queryJPQL = entityManager.createQuery("select t from Title t ",Title.class);
			 queryJPQL.setFirstResult(1);
			 queryJPQL.setMaxResults(2);
			 List<Title> titles = queryJPQL.getResultList();
			 assertNotNull(titles);
			 System.out.println(titles);
			 assertEquals(2, titles.size());
			 
		}catch(Exception e) {
			fail(e.getMessage());
		}
		
	}
	
	@Test
	public void test3Update() {
		try {
			 System.out.println("update title with id = 1L");
			 Title title = new Title(2, "Web services", "Orsys", null) ;
			 entityManager.getTransaction().begin();
			 entityManager.merge(title);
			 entityManager.getTransaction().commit();
		}catch(Exception e) {
			fail(e.getMessage());
		}
		
	}
	
	@Test
	public void test4Remove() {
		try {
			 System.out.println("remove title with id = 2L");
			 Title title = entityManager.find(Title.class, 2L);
			 entityManager.getTransaction().begin();
			 entityManager.remove(title);
			 entityManager.getTransaction().commit();
		}catch(Exception e) {
			fail(e.getMessage());
		}
		
	}
	
	

}
