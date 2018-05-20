package my.web.application.web;

import my.web.application.model.City;
import my.web.application.model.Tour;
import my.web.application.service.ICityService;
import my.web.application.service.ITourService;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.HttpClientErrorException;
import org.springframework.web.servlet.ModelAndView;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

@Controller
@RequestMapping({"/tours"})
public class TourController {
    private static final Logger logger = LogManager.getLogger(TourController.class);
    private SimpleDateFormat formatter = new SimpleDateFormat("MMM dd, yyyy", Locale.ENGLISH);

    private final ITourService tourService;
    private final ICityService cityService;

    @Autowired
    public TourController(ITourService tourService, ICityService cityService) {
        this.tourService = tourService;
        this.cityService = cityService;
    }

    @GetMapping("/all-by-city")
    public ModelAndView allToursByCities() {
        List<City> cities = cityService.getCitiesWithHotelsAndTours();
        ModelAndView modelAndView = new ModelAndView("tours");
        modelAndView.addObject("cities", cities);
        return modelAndView;
    }

    @GetMapping("/searchTours")
    public ModelAndView searchTours(@RequestParam(value = "airport", required = false) String airport,
                                    @RequestParam(value = "city", required = false) String city,
                                    @RequestParam(value = "price", required = false) Integer price,
                                    @RequestParam(value = "stars", required = false) Integer stars,
                                    @RequestParam(value = "food", required = false) String food,
                                    @RequestParam(value = "date", required = false) String dateParam) {
        Date date = null;
        if (!StringUtils.isEmpty(dateParam)) {
            try {
                date = formatter.parse(dateParam);
            } catch (ParseException e) {
                throw new HttpClientErrorException(HttpStatus.BAD_REQUEST);
            }
        }
        List<Tour> tours = tourService.searchTours(airport, city, price, stars, food, date);

        ModelAndView modelAndView = new ModelAndView("tours_search");
        modelAndView.addObject("tours", tours);

        return modelAndView;
    }
}