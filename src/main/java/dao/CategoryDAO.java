package dao;

import entity.CategoryEntity;
import utils.JPAUtil;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import java.util.List;

public class CategoryDAO {
    private static final EntityManager entityManager = JPAUtil.getEntityManagerFactory().createEntityManager();

    public static void main(String[] args) {
        findCategoryByMovie(3859001).forEach(category -> {
            System.out.println(category.toString());
        });
    }

    public static List<CategoryEntity> findCategoryByMovie(int movieId) {
        String jpql = "SELECT c FROM CategoryEntity c WHERE c.movie.movieId = :movieId";
        TypedQuery<CategoryEntity> query = entityManager.createQuery(jpql, CategoryEntity.class);
        query.setParameter("movieId", movieId);
        return query.getResultList();
    }

}
