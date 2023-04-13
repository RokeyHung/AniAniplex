package dao;

import entity.CreateFavoriteEntity;
import entity.FavoritesEntity;
import entity.UsersEntity;
import utils.JPAUtil;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

public class FavoriteDAO {
    private static final EntityManager entityManager = JPAUtil.getEntityManagerFactory().createEntityManager();

    public static void main(String[] args) {
//        findMovieFavoriteByUsername("hhungnm").forEach(movie -> {
//            System.out.println(movie.toString());
//        });
        System.out.println(find1MovieFavoriteUser(201001, 3859009));
    }

    public static List<FavoritesEntity> findMovieFavoriteByUsername(String username) {
        UsersEntity user = UserDAO.findUserByJPQL(username);
        String jpql = "SELECT DISTINCT f from FavoritesEntity f where f.user.userId = :user order by f.FavoriteDate desc";
        TypedQuery<FavoritesEntity> query = entityManager.createQuery(jpql, FavoritesEntity.class);
        query.setParameter("user", user.getUserId());
        return query.getResultList();
    }

    public static CreateFavoriteEntity find1MovieFavoriteUser(int userId, int movieId) {
        TypedQuery<CreateFavoriteEntity> query = entityManager.createQuery("SELECT f FROM CreateFavoriteEntity f WHERE f.favoriteUser = :userId and f.favoriteMovie = :movieId", CreateFavoriteEntity.class);
        query.setParameter("userId", userId);
        query.setParameter("movieId", movieId);
        return query.getSingleResult();
    }

    public static void createFavorite(CreateFavoriteEntity favorite) {
        EntityTransaction transaction = entityManager.getTransaction();
        transaction.begin();
        entityManager.persist(favorite);
        transaction.commit();
    }

    public static void deleteFavorite(CreateFavoriteEntity favorite) {
        EntityTransaction transaction = entityManager.getTransaction();
        transaction.begin();
        entityManager.remove(entityManager.contains(favorite) ? favorite : entityManager.merge(favorite));
        transaction.commit();
    }

    public void closeEntityManager() {
        entityManager.close();
    }
}
