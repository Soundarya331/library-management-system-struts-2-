package com.training.library_management.action;
import java.util.List;

import org.apache.struts2.interceptor.validation.SkipValidation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.training.library_management.dao.BookDAO;
import com.training.library_management.entity.Book;
import org.springframework.context.annotation.Scope;

@Component("librarySystemAction")
@Scope("prototype")
public class LibrarySystemAction extends ActionSupport implements ModelDriven<Book> {

    @Autowired
    private BookDAO bookDAO;

    private Book book = new Book();
    private List<Book> books;  

    public Book getBook() { return book; }
    public void setBook(Book book) { this.book = book; }
    public List<Book> getBooks() { return books; }  

    public String saveBook() {
        bookDAO.addBook(book);
        addActionMessage("✔ Book added successfully!");
        return SUCCESS;
    }

    @SkipValidation
    public String getAllBooks() {
        books = bookDAO.fetchBook();  
        return SUCCESS;
    }

    public String getBookByName() {
        books = bookDAO.findByName(book.getName()); 
        return SUCCESS;
    }

    public String updateBook() {
        bookDAO.updateBook(book.getName(), book.getAuthor(), book.getPrice(), book.getGenre());
        return SUCCESS;
    }

    public String deleteBookByName() {
        bookDAO.deleteBookByName(book.getName());
        return SUCCESS;
    }

    @Override
    public Book getModel() {
        return book;
    }
}