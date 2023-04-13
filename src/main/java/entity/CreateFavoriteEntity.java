package entity;

import javax.persistence.*;
import java.sql.Date;

@Entity
@Table(name = "FAVORITES", schema = "dbo", catalog = "AniAniplex")
public class CreateFavoriteEntity {
    @Id
    @Column(name = "favorite_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int favoriteId;

    @Column(name = "favorite_date")
    private Date favoriteDate;

    @Column(name = "favorite_user")
    private int favoriteUser;

    @Column(name = "favorite_movie")
    private int favoriteMovie;

    public CreateFavoriteEntity() {
    }

    public CreateFavoriteEntity(int favoriteId, Date favoriteDate, int favoriteUser, int favoriteMovie) {
        this.favoriteId = favoriteId;
        this.favoriteDate = favoriteDate;
        this.favoriteUser = favoriteUser;
        this.favoriteMovie = favoriteMovie;
    }

    public CreateFavoriteEntity(Date favoriteDate, int favoriteUser, int favoriteMovie) {
        this.favoriteDate = favoriteDate;
        this.favoriteUser = favoriteUser;
        this.favoriteMovie = favoriteMovie;
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

    public int getFavoriteUser() {
        return favoriteUser;
    }

    public void setFavoriteUser(int favoriteUser) {
        this.favoriteUser = favoriteUser;
    }

    public int getFavoriteMovie() {
        return favoriteMovie;
    }

    public void setFavoriteMovie(int favoriteMovie) {
        this.favoriteMovie = favoriteMovie;
    }

    @Override
    public String toString() {
        return "CreateFavoriteEntity{" +
                "favoriteId=" + favoriteId +
                ", favoriteDate=" + favoriteDate +
                ", favoriteUser='" + favoriteUser + '\'' +
                ", favoriteMovie='" + favoriteMovie + '\'' +
                '}';
    }
}
