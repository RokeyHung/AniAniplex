package dao;

import entity.MoviesEntity;
import utils.JPAUtil;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;
import java.util.List;

public class MovieDAO {
    private static EntityManager entityManager;

    public MovieDAO() {
        entityManager = JPAUtil.getEntityManagerFactory().createEntityManager();
    }

    public List<MoviesEntity> findAll() {
        TypedQuery<MoviesEntity> query = entityManager.createQuery("SELECT u FROM entity.MoviesEntity u", MoviesEntity.class);
        return query.getResultList();
    }

    public void createMovie(MoviesEntity movie) {
        EntityTransaction transaction = entityManager.getTransaction();
        transaction.begin();
        entityManager.persist(movie);
        transaction.commit();
    }

    public MoviesEntity findMovie(String movieId) {
        return entityManager.find(MoviesEntity.class, movieId);
    }

    public void updateMovie(MoviesEntity movie) {
        EntityTransaction transaction = entityManager.getTransaction();
        transaction.begin();
        entityManager.merge(movie);
        transaction.commit();
    }

    public void deleteMovie(MoviesEntity movie) {
        EntityTransaction transaction = entityManager.getTransaction();
        transaction.begin();
        entityManager.remove(entityManager.contains(movie) ? movie : entityManager.merge(movie));
        transaction.commit();
    }

    public void closeEntityManager() {
        entityManager.close();
    }
}
