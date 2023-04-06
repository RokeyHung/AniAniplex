package dao;

import entity.MovieEpisodeEntity;
import utils.JPAUtil;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import java.util.List;

public class EpisodeDAO {
    private static EntityManager entityManager = JPAUtil.getEntityManagerFactory().createEntityManager();

//    public EpisodeDAO() {
//        entityManager = JPAUtil.getEntityManagerFactory().createEntityManager();
//    }

    public static void main(String[] args) {
        findEpisodeByMovie(3859004).forEach(category -> {
            System.out.println(category.toString());
        });
    }

    public static List<MovieEpisodeEntity> findEpisodeByMovie(int movieId) {
        String jpql = "SELECT ep FROM MovieEpisodeEntity ep WHERE ep.movie.movieId = :movieId order by ep.movieEpisodeNumber desc";
        TypedQuery<MovieEpisodeEntity> query = entityManager.createQuery(jpql, MovieEpisodeEntity.class);
        query.setParameter("movieId", movieId);
        return query.getResultList();
    }
}
