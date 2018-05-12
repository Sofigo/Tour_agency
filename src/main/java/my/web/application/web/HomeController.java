package my.web.application.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

@Controller
@RequestMapping({ "/", "homepage", "index" })
public class HomeController {

    @RequestMapping(method=GET)
    public String home() {
        return "index";
    }
}