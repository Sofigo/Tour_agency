package my.web.application.web;

import my.web.application.model.Hotel;
import my.web.application.service.IHotelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping({"/hotels"})
public class HotelController {
    private IHotelService hotelService;

    @Autowired
    public HotelController(IHotelService hotelService) {
        this.hotelService = hotelService;
    }

    @GetMapping("/all")
    public ModelAndView allHotels() {
        List<Hotel> hotels = hotelService.getHotelsWithTours();
        ModelAndView modelAndView = new ModelAndView("hotels");
        modelAndView.addObject("hotels", hotels);
        return modelAndView;
    }
}