package entity;

import javax.persistence.*;

@Entity
@Table(name = "CATEGORY", schema = "dbo", catalog = "AniAniplex")
public class CategoryEntity {
    @Id
    @Column(name = "id")
    private int id;

    @ManyToOne
    @JoinColumn(name = "movie_id_category")
    private MoviesEntity movie;

    @Column(name = "category_name")
    private String categoryName;

    public CategoryEntity() {
    }

    public CategoryEntity(int id, MoviesEntity movie, String categoryName) {
        this.id = id;
        this.movie = movie;
        this.categoryName = categoryName;
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

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    @Override
    public String toString() {
        return "CategoryEntity{" +
                "id=" + id +
                ", movie=" + movie +
                ", categoryName='" + categoryName + '\'' +
                '}';
    }
}
