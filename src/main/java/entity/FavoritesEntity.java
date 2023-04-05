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
    private Date FavoriteDate;

    @ManyToOne
    @JoinColumn(name = "favorite_user")
    private UsersEntity user;

    @ManyToOne
    @JoinColumn(name = "favorite_movie")
    private MoviesEntity movies;

    public FavoritesEntity() {
    }

    public FavoritesEntity(int favoriteId, Date favoriteDate, UsersEntity user, MoviesEntity movies) {
        this.favoriteId = favoriteId;
        FavoriteDate = favoriteDate;
        this.user = user;
        this.movies = movies;
    }

    public int getFavoriteId() {
        return favoriteId;
    }

    public void setFavoriteId(int favoriteId) {
        this.favoriteId = favoriteId;
    }

    public UsersEntity getUser() {
        return user;
    }

    public void setUser(UsersEntity user) {
        this.user = user;
    }

    public MoviesEntity getMovies() {
        return movies;
    }

    public void setMovies(MoviesEntity movies) {
        this.movies = movies;
    }

    public Date getFavoriteDate() {
        return FavoriteDate;
    }

    public void setFavoriteDate(Date favoriteDate) {
        FavoriteDate = favoriteDate;
    }

    @Override
    public String toString() {
        return "FavoritesEntity{" +
                "favoriteId=" + favoriteId ;
    }
}
