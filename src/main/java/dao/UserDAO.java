package dao;


import entity.UsersEntity;
import utils.JPAUtil;

import javax.persistence.*;
import java.util.List;

public class UserDAO {
    private static EntityManager entityManager;

    public UserDAO() {
        entityManager = JPAUtil.getEntityManagerFactory().createEntityManager();
    }

    public static List<UsersEntity> findAll() {
        TypedQuery<UsersEntity> query = entityManager.createQuery("SELECT u FROM USERS u", UsersEntity.class);
        return query.getResultList();
    }

    public void createUser(UsersEntity user) {
        EntityTransaction transaction = entityManager.getTransaction();
        transaction.begin();
        entityManager.persist(user);
        transaction.commit();
    }

    public UsersEntity findUser(String userId) {
        return entityManager.find(UsersEntity.class, userId);
    }

    public UsersEntity findUserByJPQL(String username) {
        String jpql = "SELECT u FROM UsersEntity u WHERE u.userAccount = :username";
        TypedQuery<UsersEntity> query = entityManager.createQuery(jpql, UsersEntity.class);
        query.setParameter("username", username);
        return query.getSingleResult();
    }

    public void updateUser(UsersEntity user) {
        EntityTransaction transaction = entityManager.getTransaction();
        transaction.begin();
        entityManager.merge(user);
        transaction.commit();
    }

    public void deleteUser(UsersEntity user) {
        EntityTransaction transaction = entityManager.getTransaction();
        transaction.begin();
        entityManager.remove(entityManager.contains(user) ? user : entityManager.merge(user));
        transaction.commit();
    }

    public void closeEntityManager() {
        entityManager.close();
    }
}
