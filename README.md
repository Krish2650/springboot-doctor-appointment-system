# 🏥 Hara Krishna Hospital - Spring Boot Doctor Appointment System

A Doctor Appointment System for **Hara Krishna Hospital**, built using **Spring Boot** and **JSP**. This app allows patients to view doctor details, book appointments, and confirm bookings. It follows the **MVC architecture**, using controllers, services, repositories, and JSP views.

---

## 🚀 Features

- 👨‍⚕️ View Doctor Details  
- 📅 Book Appointments  
- ✅ Confirm Bookings  
- 📋 List All Appointments  
- 💡 MVC + Service + Repository Layers  

---

## 🛠 Tech Stack

- ⚙️ Spring Boot (Java)
- 🌐 JSP (JavaServer Pages)
- 💼 Spring MVC
- 📦 Spring Data (JPA-style)
- 🗃️ Maven
- ☕ Java 8 or 11+

---

## 📂 Folder Structure

hara-krishna-hospital-appointment-system/
├── src/
│ └── main/
│ ├── java/
│ │ └── com/example/yourproject/
│ │ ├── Application.java # Spring Boot main class
│ │ ├── MyController.java # Handles HTTP requests (web layer)
│ │ ├── MyModel.java # Entity/model class
│ │ ├── MyServiceInf.java # Service interface
│ │ ├── MyServiceCls.java # Service implementation
│ │ └── MyRepo.java # Repository interface
│ └── webapp/
│ └── WEB-INF/
│ ├── book.jsp # Appointment form
│ ├── confirm.jsp # Confirmation page
│ ├── doctorDetails.jsp # Doctor info
│ ├── home.jsp # Homepage
│ └── list.jsp # Appointment listing
├── application.properties # Configuration
└── pom.xml # Maven build file

yaml

---

## ▶️ How to Run

1. 📥 Clone the repository:
   ```bash
   git clone https://github.com/yourusername/hara-krishna-hospital-appointment-system.git
🔧 Navigate into the project folder:


cd hara-krishna-hospital-appointment-system
🚀 Run the app:

./mvnw spring-boot:run
Or run Application.java directly in your IDE.

🌐 Access the app:
http://localhost:8084/

🤝 Contributing
Contributions are welcome! Fork this repo and submit a pull request. ✨
