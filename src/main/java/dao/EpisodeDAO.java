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
        findAllEpisodeByMovie(3859004, "asc").forEach(category -> {
            System.out.println(category.toString());
        });
//        System.out.println(findEpisode(3859004, 3).toString());

    }

    public static List<MovieEpisodeEntity> findAllEpisodeByMovie(int movieId, String orderby) {
        String jpql = "SELECT ep FROM MovieEpisodeEntity ep WHERE ep.movie.movieId = :movieId order by ep.movieEpisodeNumber " + orderby;
        TypedQuery<MovieEpisodeEntity> query = entityManager.createQuery(jpql, MovieEpisodeEntity.class);
        query.setParameter("movieId", movieId);
        return query.getResultList();
    }

    public static MovieEpisodeEntity findEpisode(int movieId, int episode) {
        String jpql = "SELECT ep FROM MovieEpisodeEntity ep WHERE ep.movie.movieId = :movieId and ep.movieEpisodeNumber = :episode";
        TypedQuery<MovieEpisodeEntity> query = entityManager.createQuery(jpql, MovieEpisodeEntity.class);
        query.setParameter("movieId", movieId);
        query.setParameter("episode", episode);
        return query.getSingleResult();
    }
}
