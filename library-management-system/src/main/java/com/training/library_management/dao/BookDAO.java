package com.training.library_management.dao;

import java.util.List;

import javax.persistence.EntityManager;

import org.springframework.stereotype.Repository;

import com.training.library_management.entity.Book;
import com.training.library_management.util.JPAUtil;
@Repository
public class BookDAO {
	
	 public void addBook(Book book) {
	        EntityManager em = JPAUtil.getEntityManager();
	        try {
	            em.getTransaction().begin();
	            em.persist(book);
	            em.getTransaction().commit();
	        } catch (Exception e) {
	            em.getTransaction().rollback();
	            throw e;
	        } finally {
	            em.close();
	        }
	    }
	 public List<Book> fetchBook() {
		  EntityManager em = JPAUtil.getEntityManager();
		  try {
			  List<Book> bookList = em.createQuery("From Book", Book.class).getResultList();
			  System.out.println("DB size: " + bookList.size());
				return bookList;
			  
		  }catch (Exception e) {
	            em.getTransaction().rollback();
	            throw e;
	        } finally {
	            em.close();
	        }
	 }
	 
	 public List<Book> findByName(String name) {
		    EntityManager em = JPAUtil.getEntityManager();
		    return em.createQuery(
		            "SELECT b FROM Book b WHERE b.name = :name", Book.class)
		            .setParameter("name", name)
		            .getResultList();  // 
		}
	 public void updateBook(String name, String author, double price, String genre) {
		    EntityManager em = JPAUtil.getEntityManager();
		    try {
		        em.getTransaction().begin();
		        em.createQuery("UPDATE Book b SET b.author = :author, b.price = :price, b.genre = :genre WHERE b.name = :name")
		          .setParameter("author", author)
		          .setParameter("price", price)
		          .setParameter("genre", genre)
		          .setParameter("name", name)
		          .executeUpdate();
		        em.getTransaction().commit();
		    } catch(Exception e) {
		        em.getTransaction().rollback();
		        throw e;
		    } finally {
		        em.close();
		    }
		}
	public void deleteBookByName(String name) {

	    EntityManager em = JPAUtil.getEntityManager();

	    try {
	        em.getTransaction().begin();

	        em.createQuery("DELETE FROM Book b WHERE b.name = :name")
	          .setParameter("name", name)
	          .executeUpdate();

	        em.getTransaction().commit();

	    } catch (Exception e) {
	        em.getTransaction().rollback();
	        throw e;
	    } finally {
	        em.close();
	    }
	}
	

}
