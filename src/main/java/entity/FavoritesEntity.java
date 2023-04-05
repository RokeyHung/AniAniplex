package entity;

import javax.persistence.*;

import java.sql.Date;

@Entity
@Table(name = "FAVORITES", schema = "dbo", catalog = "AniAniplex")
public class FavoritesEntity {
    @Id
    @Column(name = "favorite_id")
    private int favoriteId;

    @Column(name = "favorite_date")
    private Date favoriteDate;

    @Column(name = "favorite_user")
    private String favoriteUser;

    @Column(name = "favorite_movie")
    private String favoriteMovie;

    public FavoritesEntity() {
    }

    public FavoritesEntity(int favoriteId, Date favoriteDate, String favoriteUser, String favoriteMovie) {
        this.favoriteId = favoriteId;
        this.favoriteDate = favoriteDate;
        this.favoriteUser = favoriteUser;
        this.favoriteMovie = favoriteMovie;
    }

    @Override
    public String toString() {
        return "FavoritesEntity{" +
                "favoriteId=" + favoriteId +
                ", favoriteDate=" + favoriteDate +
                ", favoriteUser='" + favoriteUser + '\'' +
                ", favoriteMovie='" + favoriteMovie + '\'' +
                '}';
    }

    public int getFavoriteId() {
        return favoriteId;
    }

    public void setFavoriteId(int favoriteId) {
        this.favoriteId = favoriteId;
    }

    public Date getFavoriteDate() {
        return favoriteDate;
    }

    public void setFavoriteDate(Date favoriteDate) {
        this.favoriteDate = favoriteDate;
    }

    public String getFavoriteUser() {
        return favoriteUser;
    }

    public void setFavoriteUser(String favoriteUser) {
        this.favoriteUser = favoriteUser;
    }

    public String getFavoriteMovie() {
        return favoriteMovie;
    }

    public void setFavoriteMovie(String favoriteMovie) {
        this.favoriteMovie = favoriteMovie;
    }
}
