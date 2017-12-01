package be.smals.library.tests.dao;

import static org.junit.Assert.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import be.smals.library.model.Category;
import be.smals.library.model.Title;

public class CategoryTitleDaoTestCase {

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
	public void testAddTitleToCategory() {
		try {
			System.out.println("testAddTitleToCategory");
			Title title2 = entityManager.find(Title.class,2L);
			Category category1 = entityManager.find(Category.class,1L);
			//category1.addTitle(title2);
			title2.addCategory(category1);
			entityManager.getTransaction().begin();
			//entityManager.merge(category1);
			//entityManager.merge(title2);
			entityManager.getTransaction().commit();
			
			assertEquals(1, category1.getTitles().size());
			assertEquals(1, title2.getCategories().size());
		}catch(Exception e) {
			fail(e.getMessage());
		}
		
	}

}
