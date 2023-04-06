package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {
    @GetMapping("/example")
    public String example(@RequestParam("param1") String param1, @RequestParam("param2") String param2) {
        System.out.println("param1: " + param1);
        System.out.println("param2: " + param2);
        // do something with param1 and param2
        return "example";
    }
}
