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

import be.smals.library.model.Item;
import be.smals.library.model.ItemStatus;
import be.smals.library.model.Title;


@FixMethodOrder(MethodSorters.NAME_ASCENDING)
public class ItemDaoTestCase {
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
			 System.out.println("persiste a new item");
			 Item item = new Item("item2", ItemStatus.Available) ;
			 entityManager.getTransaction().begin();
			 entityManager.persist(item);
			 entityManager.getTransaction().commit();
		}catch(Exception e) {
			fail(e.getMessage());
		}
		
	}
	
	@Test
	public void test2FindAll() {
		try {
			 System.out.println("find all items ");
			 Query queryJPQL = entityManager.createQuery("select i from Item i ",Item.class);
			 queryJPQL.setFirstResult(0);
			 queryJPQL.setMaxResults(2);
			 List<Item> items = queryJPQL.getResultList();
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
			 System.out.println("find item with id = item1");
			 Item item = entityManager.find(Item.class, "item1");
			 assertNotNull(item);
			 System.out.println(item);
			 assertEquals(ItemStatus.Available, item.getStatus());
		}catch(Exception e) {
			fail(e.getMessage());
		}
		
	}
	
	@Test
	public void test3Update() {
		try {
			 System.out.println("update item with id = item1");
			 Item item = new Item("item1", ItemStatus.Loaned);
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
			 System.out.println("remove category with id = item1");
			 Item item = entityManager.find(Item.class, "item1");
			 entityManager.getTransaction().begin();
			 entityManager.remove(item);
			 entityManager.getTransaction().commit();
		}catch(Exception e) {
			fail(e.getMessage());
		}
	}
}
