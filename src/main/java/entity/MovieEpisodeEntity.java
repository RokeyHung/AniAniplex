package entity;

import javax.persistence.*;
import java.sql.Date;

@Entity
@Table(name = "MOVIE_EPISODE", schema = "dbo", catalog = "AniAniplex")
public class MovieEpisodeEntity {
    @Id
    @Column(name = "id")
    private int id;

    @ManyToOne
    @JoinColumn(name = "movie_id")
    private MoviesEntity movie;

    @Column(name = "movie_episode_number")
    private Integer movieEpisodeNumber;

    @Column(name = "movie_episode_link")
    private String movieEpisodeLink;

    @Column(name = "movie_episode_date")
    private Date movieEpisodeDate;

    public MovieEpisodeEntity() {
    }

    public MovieEpisodeEntity(int id, MoviesEntity movie, Integer movieEpisodeNumber, String movieEpisodeLink, Date movieEpisodeDate) {
        this.id = id;
        this.movie = movie;
        this.movieEpisodeNumber = movieEpisodeNumber;
        this.movieEpisodeLink = movieEpisodeLink;
        this.movieEpisodeDate = movieEpisodeDate;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public MoviesEntity getMovie() {
        return movie;
    }

    public void setMovie(MoviesEntity movie) {
        this.movie = movie;
    }

    public Integer getMovieEpisodeNumber() {
        return movieEpisodeNumber;
    }

    public void setMovieEpisodeNumber(Integer movieEpisodeNumber) {
        this.movieEpisodeNumber = movieEpisodeNumber;
    }

    public String getMovieEpisodeLink() {
        return movieEpisodeLink;
    }

    public void setMovieEpisodeLink(String movieEpisodeLink) {
        this.movieEpisodeLink = movieEpisodeLink;
    }

    public Date getMovieEpisodeDate() {
        return movieEpisodeDate;
    }

    public void setMovieEpisodeDate(Date movieEpisodeDate) {
        this.movieEpisodeDate = movieEpisodeDate;
    }

    @Override
    public String toString() {
        return "MovieEpisodeEntity{" +
                "id=" + id +
                ", movie=" + movie +
                ", movieEpisodeNumber=" + movieEpisodeNumber +
                ", movieEpisodeLink='" + movieEpisodeLink + '\'' +
                ", movieEpisodeDate=" + movieEpisodeDate +
                '}';
    }
}
