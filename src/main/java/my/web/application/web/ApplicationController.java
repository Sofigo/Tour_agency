package my.web.application.web;

import my.web.application.model.Application;
import my.web.application.service.IApplicationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

@Controller
@RequestMapping({"/applications"})
public class ApplicationController {
    private IApplicationService applicationService;
    private static int counter = 0;

    @Autowired
    public ApplicationController(IApplicationService applicationService) {
        this.applicationService = applicationService;
    }

    @GetMapping("/new")
    public ModelAndView newApplications() {
        List<Application> newApplications = Stream.generate(this::generateApplication).limit(5).collect(Collectors.toList());
        ModelAndView modelAndView = new ModelAndView("new_forms");
        modelAndView.addObject("newApplications", newApplications);
        return modelAndView;
    }

    @GetMapping("/ready")
    public ModelAndView readyApplications() {
        List<Application> readyApplications = Stream.generate(this::generateApplication).limit(5).collect(Collectors.toList());
        ModelAndView modelAndView = new ModelAndView("ready_forms");
        modelAndView.addObject("readyApplications", readyApplications);
        return modelAndView;
    }

    private Application generateApplication() {
        Application application = new Application();
        application.setName("Name " + counter++);
        application.setSurname("Surname " + counter++);
        application.setPatronymic("Patronymic " + counter++);
        application.setPhoneNumber("PhoneNumber " + counter++);
        application.setEmail("Email " + counter++);
        return application;
    }
}