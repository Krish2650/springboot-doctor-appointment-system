package com.web.controller;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.web.model.MyModel;
import com.web.repo.MyRepo;

@Controller
public class MyController {

    @Autowired
    private MyRepo repository;

    @GetMapping({"/", "/home"})
    public String home() {
        return "home";
    }

    @GetMapping("/doctorDetails")
    public String doctorDetails() {
        return "doctorDetails";
    }

    @GetMapping("/book")
    public String book() {
        return "book";
    }

    @PostMapping("/save")
    public String save(@RequestParam String name, @RequestParam String email,
                       @RequestParam String phone, @RequestParam String appointmentDate) {
        // Convert String to LocalDate
        LocalDate date = LocalDate.parse(appointmentDate, DateTimeFormatter.ISO_DATE);

        MyModel appointment = new MyModel(name, email, phone, date, "Pending");
        repository.save(appointment);
        return "redirect:/list";
    }

    @GetMapping("/list")
    public String list(Model model) {
        List<MyModel> appointments = repository.findAll();
        model.addAttribute("appointments", appointments);
        return "list";
    }

    @PostMapping("/confirm/{id}")
    public String confirm(@PathVariable Long id) {
        MyModel appointment = repository.findById(id).orElse(null);
        if (appointment != null) {
            appointment.setStatus("Confirmed");
            repository.save(appointment);
        }
        return "redirect:/confirm";
    }

    @GetMapping("/confirm")
    public String confirmPage() {
        return "confirm";
    }

    @PostMapping("/cancel/{id}")
    public String cancel(@PathVariable Long id) {
        repository.deleteById(id);
        return "redirect:/list";
    }
}
