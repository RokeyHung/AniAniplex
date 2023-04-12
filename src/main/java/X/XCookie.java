package X;

import jakarta.servlet.http.Cookie;

public class XCookie {
    /**
     * Tạo và gửi cookie về client
     *
     * @param name  tên cookie
     * @param value giá trị cookie
     * @param hours thời hạn cookie (giờ)
     * @return Cookie đã gửi về client
     */
    public static void add(String name, String value, int hours) {
        Cookie cookie = new Cookie(name, value);
        cookie.setMaxAge(hours * 60 * 60);
        cookie.setPath("/");
        RRSharer.response().addCookie(cookie);
    }

    /**
     * Đọc giá trị cookie
     *
     * @param name   tên cookie cần đọc
     * @param defval giá trị mặc định
     * @return Giá trị cookie hoặc defval nếu cookie không tồn tại
     */
    public static String get(String name, String defaultValue) {
        Cookie[] cookies = RRSharer.request().getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equalsIgnoreCase(name)) {
                    return cookie.getValue();
                }
            }
        }
        return defaultValue;
    }
}