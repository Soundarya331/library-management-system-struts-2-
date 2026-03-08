package com.training.library_management.util;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class JPAUtil {

    private static EntityManagerFactory emf;

    static {
        emf = Persistence.createEntityManagerFactory("library-management");
      
    }

    public static EntityManager getEntityManager() {
        return emf.createEntityManager();
    }
}
