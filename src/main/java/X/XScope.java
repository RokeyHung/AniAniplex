package X;

import jakarta.servlet.ServletContext;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

/**
 * Cung cấp các phương thức đọc/ghi attribute trong các scope
 */
public class XScope {
    public static HttpServletRequest request() {
        return RRSharer.request();
    }

    public static HttpSession session() {
        return request().getSession();
    }

    public static ServletContext application() {
        return request().getServletContext();
    }

    /**
     * Tạo attribute trong request scope
     *
     * @param name  tên attribute
     * @param value giá trị của attribute
     */
    public static void setRequest(String name, Object value) {
        request().setAttribute(name, value);
    }

    /**
     * Đọc attribute trong request scope
     *
     * @param name tên attribute
     * @return Giá trị của attribute hoặc null nếu không tồn tại
     */
    @SuppressWarnings("unchecked")
    public static <T> T getRequest(String name) {
        return (T) request().getAttribute(name);
    }

    /**
     * Xóa attribute trong request scope
     *
     * @param name tên attribute cần xóa
     */
    public static void removeRequest(String name) {
        request().removeAttribute(name);
    }

    /**
     * Tạo attribute trong session scope
     *
     * @param name  tên attribute
     * @param value giá trị của attribute
     */
    public static void setSession(String name, Object value) {
        session().setAttribute(name, value);
    }

    /**
     * Đọc attribute trong session scope
     *
     * @param name tên attribute
     * @return Giá trị của attribute hoặc null nếu không tồn tại
     */
    @SuppressWarnings("unchecked")
    public static <T> T getSession(String name) {
        return (T) session().getAttribute(name);
    }

    /**
     * Xóa attribute trong session scope
     *
     * @param name tên attribute cần xóa
     */
    public static void removeSession(String name) {
        session().removeAttribute(name);
    }

    /**
     * Tạo attribute trong application scope
     *
     * @param name  tên attribute
     * @param value giá trị của attribute
     */
    public static void setApplication(String name, Object value) {
        application().setAttribute(name, value);
    }

    /**
     * Đọc attribute trong application scope
     *
     * @param name tên attribute
     * @return Giá trị của attribute hoặc null nếu không tồn tại
     */
    @SuppressWarnings("unchecked")
    public static <T> T getApplication(String name) {
        return (T) application().getAttribute(name);
    }

    /**
     * Xóa attribute trong application scope
     *
     * @param name tên attribute cần xóa
     */
    public static void removeApplication(String name) {
        application().removeAttribute(name);
    }
}
