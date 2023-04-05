package dao;

import entity.FavoritesEntity;
import entity.MoviesEntity;
import entity.UsersEntity;
import utils.JPAUtil;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

public class FavoriteDAO {
    private static EntityManager entityManager = JPAUtil.getEntityManagerFactory().createEntityManager();

//    public FavoriteDAO() {
//        entityManager = JPAUtil.getEntityManagerFactory().createEntityManager();
//    }

    public static void main(String[] args) {
        findMovieFavoriteByUsername("hhungnm").forEach(movie -> {
            System.out.println(movie.toString());
        });
    }

    static UserDAO userDAO = new UserDAO();

    public static List<FavoritesEntity> findMovieFavoriteByUsername(String username) {
        UsersEntity user = userDAO.findUserByJPQL(username);
        String jpql = "SELECT DISTINCT f from FavoritesEntity f where f.user.userId = :user order by f.FavoriteDate desc";
        TypedQuery<FavoritesEntity> query = entityManager.createQuery(jpql, FavoritesEntity.class);
        query.setParameter("user", user.getUserId());
        return query.getResultList();
    }

    public static List<FavoritesEntity> findAllFavoriteUser(String username) {
        TypedQuery<FavoritesEntity> query = entityManager.createQuery("SELECT f FROM FavoritesEntity f WHERE f.userId = :userid", FavoritesEntity.class);
        query.setParameter("userid", username);
        return query.getResultList();
    }

    public void createFavorite(FavoritesEntity favorite) {
        EntityTransaction transaction = entityManager.getTransaction();
        transaction.begin();
        entityManager.persist(favorite);
        transaction.commit();
    }

    public void deleteFavorite(FavoritesEntity favorite) {
        EntityTransaction transaction = entityManager.getTransaction();
        transaction.begin();
        entityManager.remove(entityManager.contains(favorite) ? favorite : entityManager.merge(favorite));
        transaction.commit();
    }

    public void closeEntityManager() {
        entityManager.close();
    }
}
