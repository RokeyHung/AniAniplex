package entity;

import javax.persistence.*;
import java.sql.Date;

@Entity
@Table(name = "SHARE_SOCIAL", schema = "dbo", catalog = "AniAniplex")
public class ShareSocialEntity {
    @Id
    @Column(name = "share_id")
    private int shareId;

    @Column(name = "share_date")
    private Date shareDate;

    @Column(name = "share_content")
    private String shareContent;

    @Column(name = "share_type")
    private String shareType;

    @Column(name = "share_user")
    private String shareUser;

    @Column(name = "share_movie")
    private String shareMovie;

    public int getShareId() {
        return shareId;
    }

    public void setShareId(int shareId) {
        this.shareId = shareId;
    }

    public Date getShareDate() {
        return shareDate;
    }

    public void setShareDate(Date shareDate) {
        this.shareDate = shareDate;
    }

    public String getShareContent() {
        return shareContent;
    }

    public void setShareContent(String shareContent) {
        this.shareContent = shareContent;
    }

    public String getShareType() {
        return shareType;
    }

    public void setShareType(String shareType) {
        this.shareType = shareType;
    }

    public String getShareUser() {
        return shareUser;
    }

    public void setShareUser(String shareUser) {
        this.shareUser = shareUser;
    }

    public String getShareMovie() {
        return shareMovie;
    }

    public void setShareMovie(String shareMovie) {
        this.shareMovie = shareMovie;
    }

}
