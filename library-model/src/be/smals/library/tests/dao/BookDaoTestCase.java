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

import org.junit.After;
import org.junit.Before;
import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runners.MethodSorters;

import be.smals.library.model.AudioRecord;
import be.smals.library.model.Book;
import be.smals.library.model.Title;


@FixMethodOrder(MethodSorters.NAME_ASCENDING)
public class BookDaoTestCase {
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
			 System.out.println("persiste a new title");
			 Book book = new Book(3, "Web services", "SMALS", new Date(2017, 11, 20), "12-89-09-99", 1001) ;
			 AudioRecord audioRecord = new AudioRecord(4, "MJ", "Universal", new Date(2017, 11, 20), 4, 10);
			 entityManager.getTransaction().begin();
			 entityManager.persist(book);
			 entityManager.persist(audioRecord);
			 entityManager.getTransaction().commit();
		}catch(Exception e) {
			fail(e.getMessage());
		}
		
	}
	
	
	
	
	@Test
	public void test2FindAll() {
		try {
			 System.out.println("find all titles ");
			 Query queryJPQL = entityManager.createQuery("select t from Title t ",Title.class);
			 queryJPQL.setFirstResult(0);
			 queryJPQL.setMaxResults(2);
			 List<Title> titles = queryJPQL.getResultList();
			 assertNotNull(titles);
			 System.out.println(titles);
			 assertEquals(2, titles.size());
			 
		}catch(Exception e) {
			fail(e.getMessage());
		}
		
	}
	/*
	@Test
	public void test2FindById() {
		try {
			 System.out.println("find title with id = 1");
			 //entityManager.getTransaction().begin();
			 Title title = entityManager.find(Title.class, 1L);
			 assertNotNull(title);
			 System.out.println(title);
			 assertEquals("Hibernate with JPA", title.getName());
			 //entityManager.getTransaction().commit();
		}catch(Exception e) {
			fail(e.getMessage());
		}
		
	}
	
	@Test
	public void test3Update() {
		try {
			 System.out.println("update title with id = 1L");
			 //Title title = new Title(1, "Hibernate with JPA update", "Orsys update", null) ;
			 Title title = entityManager.find(Title.class, 1L);
			 title.setAuthor("new author");
			 entityManager.getTransaction().begin();
			 //entityManager.merge(title);
			 
			 entityManager.getTransaction().commit();
		}catch(Exception e) {
			fail(e.getMessage());
		}
		
	}
	
	@Test
	public void test4Remove() {
		try {
			 System.out.println("remove title with id = 1L");
			 Title title = entityManager.find(Title.class, 1L);
			 entityManager.getTransaction().begin();
			 entityManager.remove(title);
			 entityManager.getTransaction().commit();
		}catch(Exception e) {
			fail(e.getMessage());
		}
		
	}*/
}
