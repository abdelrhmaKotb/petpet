package gov.iti.jets;


import org.mindrot.jbcrypt.BCrypt;


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
