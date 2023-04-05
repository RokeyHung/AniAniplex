package entity;

import javax.persistence.*;

import java.sql.Date;

@Entity
@Table(name = "MOVIES", schema = "dbo", catalog = "AniAniplex")
public class MoviesEntity {
    @Id
    @Column(name = "movie_id")
    private String movieId;

    @Column(name = "movie_nameVN")
    private String movieNameVn;

    @Column(name = "movie_nameJP")
    private String movieNameJp;

    @Column(name = "movie_image")
    private String movieImage;

    @Column(name = "movie_poster")
    private String moviePoster;

    @Column(name = "movie_description")
    private String movieDescription;

    @Column(name = "movie_showtimes")
    private String movieShowtimes;

    @Column(name = "movie_status")
    private String movieStatus;

    @Column(name = "movie_director")
    private String movieDirector;

    @Column(name = "movie_country")
    private String movieCountry;

    @Column(name = "movie_followers")
    private Integer movieFollowers;

    @Column(name = "movie_views")
    private Integer movieViews;

    @Column(name = "movie_episode")
    private Integer movieEpisode;

    @Column(name = "movie_language")
    private String movieLanguage;

    @Column(name = "movie_studio")
    private String movieStudio;

    @Column(name = "movie_season")
    private String movieSeason;

    @Column(name = "movie_year")
    private Date movieYear;

    public MoviesEntity() {
    }

    public MoviesEntity(String movieId, String movieNameVn, String movieNameJp, String movieImage, String moviePoster, String movieDescription, String movieShowtimes, String movieStatus, String movieDirector, String movieCountry, Integer movieFollowers, Integer movieViews, Integer movieEpisode, String movieLanguage, String movieStudio, String movieSeason, Date movieYear) {
        this.movieId = movieId;
        this.movieNameVn = movieNameVn;
        this.movieNameJp = movieNameJp;
        this.movieImage = movieImage;
        this.moviePoster = moviePoster;
        this.movieDescription = movieDescription;
        this.movieShowtimes = movieShowtimes;
        this.movieStatus = movieStatus;
        this.movieDirector = movieDirector;
        this.movieCountry = movieCountry;
        this.movieFollowers = movieFollowers;
        this.movieViews = movieViews;
        this.movieEpisode = movieEpisode;
        this.movieLanguage = movieLanguage;
        this.movieStudio = movieStudio;
        this.movieSeason = movieSeason;
        this.movieYear = movieYear;
    }

    public String getMovieId() {
        return movieId;
    }

    public void setMovieId(String movieId) {
        this.movieId = movieId;
    }

    public String getMovieNameVn() {
        return movieNameVn;
    }

    public void setMovieNameVn(String movieNameVn) {
        this.movieNameVn = movieNameVn;
    }

    public String getMovieNameJp() {
        return movieNameJp;
    }

    public void setMovieNameJp(String movieNameJp) {
        this.movieNameJp = movieNameJp;
    }

    public String getMovieImage() {
        return movieImage;
    }

    public void setMovieImage(String movieImage) {
        this.movieImage = movieImage;
    }

    public String getMoviePoster() {
        return moviePoster;
    }

    public void setMoviePoster(String moviePoster) {
        this.moviePoster = moviePoster;
    }

    public String getMovieDescription() {
        return movieDescription;
    }

    public void setMovieDescription(String movieDescription) {
        this.movieDescription = movieDescription;
    }

    public String getMovieShowtimes() {
        return movieShowtimes;
    }

    public void setMovieShowtimes(String movieShowtimes) {
        this.movieShowtimes = movieShowtimes;
    }

    public String getMovieStatus() {
        return movieStatus;
    }

    public void setMovieStatus(String movieStatus) {
        this.movieStatus = movieStatus;
    }

    public String getMovieDirector() {
        return movieDirector;
    }

    public void setMovieDirector(String movieDirector) {
        this.movieDirector = movieDirector;
    }

    public String getMovieCountry() {
        return movieCountry;
    }

    public void setMovieCountry(String movieCountry) {
        this.movieCountry = movieCountry;
    }

    public Integer getMovieFollowers() {
        return movieFollowers;
    }

    public void setMovieFollowers(Integer movieFollowers) {
        this.movieFollowers = movieFollowers;
    }

    public Integer getMovieViews() {
        return movieViews;
    }

    public void setMovieViews(Integer movieViews) {
        this.movieViews = movieViews;
    }

    public Integer getMovieEpisode() {
        return movieEpisode;
    }

    public void setMovieEpisode(Integer movieEpisode) {
        this.movieEpisode = movieEpisode;
    }

    public String getMovieLanguage() {
        return movieLanguage;
    }

    public void setMovieLanguage(String movieLanguage) {
        this.movieLanguage = movieLanguage;
    }

    public String getMovieStudio() {
        return movieStudio;
    }

    public void setMovieStudio(String movieStudio) {
        this.movieStudio = movieStudio;
    }

    public String getMovieSeason() {
        return movieSeason;
    }

    public void setMovieSeason(String movieSeason) {
        this.movieSeason = movieSeason;
    }

    public Date getMovieYear() {
        return movieYear;
    }

    public void setMovieYear(Date movieYear) {
        this.movieYear = movieYear;
    }
}
