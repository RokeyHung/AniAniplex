package entity;

import javax.persistence.*;
import java.sql.Date;

@Entity
@Table(name = "MOVIE_EPISODE")
public class CreateEpisodeEntity {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "movie_id")
    private Integer movieId;

    @Column(name = "movie_episode_number")
    private Integer movieEpisodeNumber;

    @Column(name = "movie_episode_link")
    private String movieEpisodeLink;

    @Column(name = "movie_episode_date")
    private Date movieEpisodeDate;

    public CreateEpisodeEntity() {
    }

    public CreateEpisodeEntity( Integer movieId, Integer movieEpisodeNumber, String movieEpisodeLink, Date movieEpisodeDate) {
        this.movieId = movieId;
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

    public Integer getMovieId() {
        return movieId;
    }

    public void setMovieId(Integer movieId) {
        this.movieId = movieId;
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
        return "CreateEpisodeEntity{" +
                "id=" + id +
                ", movieId=" + movieId +
                ", movieEpisodeNumber=" + movieEpisodeNumber +
                ", movieEpisodeLink='" + movieEpisodeLink + '\'' +
                ", movieEpisodeDate=" + movieEpisodeDate +
                '}';
    }
}
