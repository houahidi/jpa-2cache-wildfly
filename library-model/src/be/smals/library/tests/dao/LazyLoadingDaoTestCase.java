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
import javax.persistence.PersistenceUnitUtil;
import javax.persistence.Query;

import org.hibernate.FlushMode;
import org.hibernate.Hibernate;
import org.hibernate.Session;
import org.junit.After;
import org.junit.Before;
import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runners.MethodSorters;

import be.smals.library.model.Category;
import be.smals.library.model.Title;


@FixMethodOrder(MethodSorters.NAME_ASCENDING)
public class LazyLoadingDaoTestCase {
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
	public void testLazyLoading() {
		try {
			
			 System.out.println("test association lazy loading");
			 Category category = entityManager.find(Category.class, 1L);
			 entityManager.detach(category);
			 entityManager.close();
			 entityManager = factory.createEntityManager();
			 category = entityManager.merge(category);
			 System.out.println("=====titles lazy loading");
			
			 assertNotNull(category.getTitles());
			 assertEquals(1, category.getTitles().size());
			 

		}catch(Exception e) {
			fail(e.getMessage());
		}
		
	}
	
	
	@Test
	public void testEagerWithFetchLoading() {
		try {
			
			 System.out.println("test association lazy loading");
			 List<Category> categories = entityManager.createQuery("select c from Category c join fetch c.titles").getResultList();
			 
			 
			 System.out.println("=====titles lazy loading");
			 for(Category categoy : categories){
				 assertNotNull(categoy.getTitles());
				 assertEquals(1, categoy.getTitles().size());
			 }

		}catch(Exception e) {
			fail(e.getMessage());
		}
		
	}
}
