package dao;

import entity.FavoritesEntity;
import utils.JPAUtil;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

public class FavoriteDAO {
    private static EntityManager entityManager;

    public FavoriteDAO() {
        entityManager = JPAUtil.getEntityManagerFactory().createEntityManager();
    }

    public static void main(String[] args) {
        findAllFavoriteUser("").forEach(movie -> {
            System.out.println(movie.toString());
        });
    }

    public static List<FavoritesEntity> findAllFavoriteUser(String userid) {
        TypedQuery<FavoritesEntity> query = entityManager.createQuery("SELECT f FROM FavoritesEntity f WHERE f.userId = :userid", FavoritesEntity.class);
        query.setParameter("userid", userid);
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
