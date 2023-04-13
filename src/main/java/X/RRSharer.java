package X;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.util.HashMap;
import java.util.Map;

public class RRSharer {
    private static final Map<Long, HttpServletRequest> requestMap = new HashMap<>();
    private static final Map<Long, HttpServletResponse> responseMap = new HashMap<>();

    public static void add(HttpServletRequest req, HttpServletResponse resp) {
        requestMap.put(Thread.currentThread().getId(), req);
        responseMap.put(Thread.currentThread().getId(), resp);
    }

    public static void remove() {
        requestMap.remove(Thread.currentThread().getId());
        responseMap.remove(Thread.currentThread().getId());
    }

    public static HttpServletRequest request() {
        return requestMap.get(Thread.currentThread().getId());
    }

    public static HttpServletResponse response() {
        return responseMap.get(Thread.currentThread().getId());
    }
}
