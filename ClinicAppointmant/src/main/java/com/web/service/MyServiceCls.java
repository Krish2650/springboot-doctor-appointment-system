package com.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.model.MyModel;
import com.web.repo.MyRepo;

@Service
public class MyServiceCls implements MyServiceInf {

    @Autowired
    private MyRepo repository;

    @Override
    public MyModel saveAppointment(MyModel appointment) {
        appointment.setStatus("Pending");
        return repository.save(appointment);
    }

    @Override
    public List<MyModel> getAllAppointments() {
        return repository.findAll();
    }

    @Override
    public MyModel confirmAppointment(Long id) {
        MyModel appointment = repository.findById(id).orElse(null);
        if (appointment != null) {
            appointment.setStatus("Confirmed");
            return repository.save(appointment);
        }
        return null;
    }

    @Override
    public void cancelAppointment(Long id) {
        repository.deleteById(id);
    }
}
