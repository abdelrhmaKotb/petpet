package gov.iti.jets;

import java.util.List;

import org.mindrot.jbcrypt.BCrypt;

import gov.iti.jets.persistent.dao.CartDaoImpl;
import gov.iti.jets.persistent.dao.RepositoryImpl;
import gov.iti.jets.persistent.entity.Cart;
import gov.iti.jets.persistent.entity.Category;
import gov.iti.jets.persistent.entity.Product;
import gov.iti.jets.persistent.entity.User;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

public class Main {
    public static void main(String[] args) {

        // EntityManagerFactory emf = Persistence.createEntityManagerFactory("default");
        // EntityManager qq = emf.createEntityManager();

        // CartDaoImpl ds = new CartDaoImpl();
        // ds.getUserCart(12);
        // User user = new User();
        // user.setId(12);
        // List<Cart> cart = qq.createQuery("from Cart c where c.user = ?1", Cart.class)
        //         .setParameter(1, user).getResultList();

        // System.out.println(cart);
        String salt = BCrypt.gensalt(10); // generate a random salt
        String hashedPassword = BCrypt.hashpw("123", salt); // hash the password
        System.out.println("Hashed Password " + hashedPassword);

    }
}
