package be.smals.library.tests.dao;

import static org.junit.Assert.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import be.smals.library.model.Category;
import be.smals.library.model.Item;
import be.smals.library.model.Title;

public class TitleItemTestCase {

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
	public void testAddItemToTitle() {
		try {
			 System.out.println("testAddItemToTitle");
			 Title title1 = entityManager.find(Title.class, 1L);
			 Title title2 = entityManager.find(Title.class, 2L);
			 Item item = entityManager.find(Item.class, "item1");
			 title2.addItem(item);
			 //item.setTitle(title2);
			 entityManager.getTransaction().begin();
			 entityManager.merge(item);
			 //entityManager.merge(title2);
			 entityManager.getTransaction().commit();
			 assertEquals(item.getTitle(), title2);
			 assertNotNull(title2.getItems());
			 assertEquals(1, title2.getItems().size());
			 assertEquals(0, title1.getItems().size());
		}catch(Exception e) {
			fail(e.getMessage());
		}
	}

}
