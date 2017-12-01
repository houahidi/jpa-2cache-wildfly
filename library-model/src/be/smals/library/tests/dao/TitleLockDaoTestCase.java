package be.smals.library.tests.dao;



import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.fail;

import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.LockModeType;
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
public class TitleLockDaoTestCase {
	private EntityManager entityManager1;
	private EntityManager entityManager2;
	private EntityManagerFactory factory;
	
	
	
	

	@Before
	public void setUp() throws Exception {
		System.out.println("Initialise an EntityManager from the persistence unit : library-model-pu ");
		//use singleton  design pattern to manage the factory
		 factory = Persistence.createEntityManagerFactory("library-model-pu");
		 entityManager1 = factory.createEntityManager();
		 entityManager2 = factory.createEntityManager();
	}

	@After
	public void tearDown() throws Exception {
		 System.out.println("close the EntityManager");
		 entityManager1.close();
		 entityManager2.close();
		 entityManager1 = null;
		 entityManager2 = null;
		 System.out.println("close the EntityManagerFactory");
		 factory.close();
		 factory = null;
	}

	
	@Test
	public void test1LockRead() {
		try {
			 System.out.println("lock on read");
			 System.out.println("em 2 write title1");
			 entityManager2.getTransaction().begin();
			 Title title1Bis = entityManager2.find(Title.class,1L, LockModeType.PESSIMISTIC_WRITE);
			 entityManager1.getTransaction().begin();
			 System.out.println("em 1 read title1");
			 Title title1 = entityManager1.find(Title.class,1L, LockModeType.PESSIMISTIC_READ);
			 System.out.println("TitleBis 1: "+title1.getName());
			 System.out.println("Title 1: "+title1Bis.getName());
			 title1Bis.setName("new Name");
			 System.out.println("Title 1: "+title1.getName());
			 System.out.println("Title 1: "+title1.getName());
			 System.out.println("TitleBis 1: "+title1Bis.getName());
			 entityManager1.getTransaction().commit();
			 entityManager2.getTransaction().commit();
			 
			 
		}catch(Exception e) {
			e.printStackTrace();
			fail(e.getMessage());
		}
		
	}
	
	
}
