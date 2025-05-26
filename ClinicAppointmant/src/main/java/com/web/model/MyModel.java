package com.web.model;
	
	import java.time.LocalDate;

	import jakarta.persistence.Column;
	import jakarta.persistence.Entity;
	import jakarta.persistence.GeneratedValue;
	import jakarta.persistence.GenerationType;
	import jakarta.persistence.Id;
	import jakarta.persistence.Table;

	@Entity
	@Table(name = "appointments")
	public class MyModel {

	    @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private Long id;

	    private String name;
	    private String email;
	    private String phone;

	    @Column(name = "appointment_date")
	    private LocalDate appointmentDate;

	    private String status = "Pending";

	    public MyModel() {}

	    public MyModel(String name, String email, String phone, LocalDate appointmentDate, String status) {
	        this.name = name;
	        this.email = email;
	        this.phone = phone;
	        this.appointmentDate = appointmentDate;
	        this.status = status;
	    }

	    public Long getId() {
	        return id;
	    }

	    public void setId(Long id) {
	        this.id = id;
	    }

	    public String getName() {
	        return name;
	    }

	    public void setName(String name) {
	        this.name = name;
	    }

	    public String getEmail() {
	        return email;
	    }

	    public void setEmail(String email) {
	        this.email = email;
	    }

	    public String getPhone() {
	        return phone;
	    }

	    public void setPhone(String phone) {
	        this.phone = phone;
	    }

	    public LocalDate getAppointmentDate() {
	        return appointmentDate;
	    }

	    public void setAppointmentDate(LocalDate appointmentDate) {
	        this.appointmentDate = appointmentDate;
	    }

	    public String getStatus() {
	        return status;
	    }

	    public void setStatus(String status) {
	        this.status = status;
	    }

	    @Override
	    public String toString() {
	        return "Appointment{" +
	                "id=" + id +
	                ", name='" + name + '\'' +
	                ", email='" + email + '\'' +
	                ", phone='" + phone + '\'' +
	                ", appointmentDate=" + appointmentDate +
	                ", status='" + status + '\'' +
	                '}';
	    }

}
