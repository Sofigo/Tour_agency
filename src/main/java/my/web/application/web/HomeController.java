package my.web.application.web;

import my.web.application.model.Hotel;
import my.web.application.service.ICityService;
import my.web.application.service.ITourService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

@Controller
@RequestMapping({ "/", "homepage", "index", "home" })
public class HomeController {
    private final ITourService tourService;
    private final ICityService cityService;

    @Autowired
    public HomeController(ITourService tourService, ICityService cityService) {
        this.tourService = tourService;
        this.cityService = cityService;
    }

    @RequestMapping(method=GET)
    public ModelAndView home() {
        List<String> departureAirports = tourService.getAllDepartureAirports();
        List<String> foodTypes = tourService.getAllFoodTypes();
        List<String> cityNames = cityService.getAllCityNames();

        ModelAndView modelAndView = new ModelAndView("index");
        modelAndView.addObject("departureAirports", departureAirports);
        modelAndView.addObject("foodTypes", foodTypes);
        modelAndView.addObject("cityNames", cityNames);


        return modelAndView;
    }
}