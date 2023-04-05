package entity;

import javax.persistence.*;

import java.sql.Date;
import java.util.List;

@Entity
@Table(name = "USERS")
public class UsersEntity {
    @Id
    @Column(name = "user_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int userId;

    @Column(name = "user_name")
    private String userName;

    @Column(name = "user_account")
    private String userAccount;

    @Column(name = "user_password")
    private String userPassword;

    @Column(name = "user_email")
    private String userEmail;

    @Column(name = "user_image")
    private String userImage;

    @Column(name = "user_gender")
    private Boolean userGender;

    @Column(name = "user_title")
    private String userTitle;

    @Column(name = "user_description")
    private String userDescription;

    @Column(name = "user_RegistraionDate")
    private Date userRegistraionDate;

    @OneToMany(mappedBy = "user")
    private List<FavoritesEntity> favoritesList;

    public UsersEntity() {
    }

    public UsersEntity(int userId, String userName, String userAccount, String userPassword, String userEmail, String userImage, Boolean userGender, String userTitle, String userDescription, Date userRegistraionDate) {
        this.userId = userId;
        this.userName = userName;
        this.userAccount = userAccount;
        this.userPassword = userPassword;
        this.userEmail = userEmail;
        this.userImage = userImage;
        this.userGender = userGender;
        this.userTitle = userTitle;
        this.userDescription = userDescription;
        this.userRegistraionDate = userRegistraionDate;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserAccount() {
        return userAccount;
    }

    public void setUserAccount(String userAccount) {
        this.userAccount = userAccount;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getUserImage() {
        return userImage;
    }

    public void setUserImage(String userImage) {
        this.userImage = userImage;
    }

    public Boolean getUserGender() {
        return userGender;
    }

    public void setUserGender(Boolean userGender) {
        this.userGender = userGender;
    }

    public String getUserTitle() {
        return userTitle;
    }

    public void setUserTitle(String userTitle) {
        this.userTitle = userTitle;
    }

    public String getUserDescription() {
        return userDescription;
    }

    public void setUserDescription(String userDescription) {
        this.userDescription = userDescription;
    }

    public Date getUserRegistraionDate() {
        return userRegistraionDate;
    }

    public void setUserRegistraionDate(Date userRegistraionDate) {
        this.userRegistraionDate = userRegistraionDate;
    }

    @Override
    public String toString() {
        return "UsersEntity{" +
                "userId='" + userId ;
    }
}
