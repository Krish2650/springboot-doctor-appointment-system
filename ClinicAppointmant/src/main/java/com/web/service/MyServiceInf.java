package com.web.service;

import java.util.List;
import com.web.model.MyModel;

public interface MyServiceInf {
    MyModel saveAppointment(MyModel appointment);
    List<MyModel> getAllAppointments();
    MyModel confirmAppointment(Long id);
    void cancelAppointment(Long id);
}
