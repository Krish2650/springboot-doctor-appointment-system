<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <title>Appointment List</title>
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&display=swap');

    body {
      margin: 0;
      padding: 0;
      font-family: 'Open Sans', sans-serif;
      background-image: url('https://www.shutterstock.com/image-photo/doctors-group-meeting-on-tablet-260nw-2449222117.jpg');
      background-size: cover;
      background-position: center;
      background-repeat: no-repeat;
      background-attachment: fixed;
      position: relative;
      min-height: 100vh;
      display: flex;
      flex-direction: column;
      align-items: center;
    }

    body::before {
      content: "";
      position: fixed;
      top: 0; left: 0; right: 0; bottom: 0;
      background: rgba(245, 249, 252, 0.85);
      z-index: -1;
    }

    header {
      width: 100%;
      background-color: #0077b6;
      color: white;
      padding: 20px 0;
      text-align: center;
    }

    header h1 {
      margin: 0;
      font-size: 2rem;
    }

    header p {
      margin: 5px 0 0;
      font-size: 1rem;
    }

    h2 {
      font-weight: 600;
      font-size: 2rem;
      color: #1a3e72;
      margin: 30px 0 20px;
      letter-spacing: 0.05em;
    }

    .table-wrapper {
      width: 95%;
      max-width: 1000px;
      background: white;
      border-radius: 10px;
      border: 1px solid #cbd5e0;
      box-shadow: 0 4px 8px rgb(0 0 0 / 0.1);
      overflow-x: auto;
      margin: 0 auto;
    }

    table {
      width: 100%;
      border-collapse: collapse;
      table-layout: fixed;
      color: #2e3a59;
      font-size: 1rem;
    }

    thead {
      background: #1a3e72;
      color: white;
    }

    th, td {
      padding: 14px 20px;
      border-bottom: 1px solid #e2e8f0;
      text-align: center;
      white-space: nowrap;
      overflow: hidden;
      text-overflow: ellipsis;
    }

    th {
      font-weight: 600;
    }

    tbody tr:hover {
      background-color: #e8f0fe;
    }

    td.status-confirmed {
      font-weight: 600;
      color: #1a8917;
    }

    form {
      display: inline-block;
      margin: 0 5px;
    }

    button {
      font-family: 'Open Sans', sans-serif;
      font-weight: 600;
      cursor: pointer;
      padding: 8px 20px;
      border-radius: 20px;
      font-size: 0.9rem;
      border: none;
      color: white;
      transition: background-color 0.3s ease, box-shadow 0.3s ease;
      user-select: none;
    }

    button.confirm {
      background-color: #1a3e72;
    }
    button.confirm:hover {
      background-color: #16507b;
      box-shadow: 0 0 8px #16507baa;
    }

    button.cancel {
      background-color: #d0454c;
    }
    button.cancel:hover {
      background-color: #a63639;
      box-shadow: 0 0 8px #a63639aa;
    }

    .back-container {
      margin: 30px auto;
      text-align: center;
    }

    a.back {
      font-weight: 600;
      font-size: 1.1rem;
      color: #1a3e72;
      text-decoration: none;
      border: 2px solid #1a3e72;
      padding: 12px 40px;
      border-radius: 25px;
      display: inline-block;
      transition: background-color 0.3s ease, color 0.3s ease;
    }

    a.back:hover {
      background-color: #1a3e72;
      color: white;
    }

    footer {
      margin-top: auto;
      background-color: #0077b6;
      color: white;
      text-align: center;
      padding: 15px;
      font-size: 0.95rem;
    }

    /* Responsive */
    @media (max-width: 640px) {
      th, td {
        padding: 10px 12px;
        font-size: 0.9rem;
      }

      button {
        padding: 6px 14px;
        font-size: 0.85rem;
      }

      a.back {
        padding: 10px 32px;
        font-size: 1rem;
      }
    }
  </style>
</head>
<body>

  <header>
    <h1>Welcome to Hara krishna Hospital</h1>
    <p>Your Health, Our Priority</p>
  </header>

  <h2>Appointment List</h2>

  <div class="table-wrapper">
    <table>
      <thead>
        <tr>
          <th>Name</th>
          <th>Email</th>
          <th>Phone</th>
          <th>Appointment Date</th>
          <th>Status</th>
          <th>Actions</th>
        </tr>
      </thead>
      <tbody>
        <c:forEach var="a" items="${appointments}">
          <tr>
            <td>${a.name}</td>
            <td>${a.email}</td>
            <td>${a.phone}</td>
            <td>${a.appointmentDate}</td>
            <td class="${a.status == 'Confirmed' ? 'status-confirmed' : ''}">${a.status}</td>
            <td>
              <c:if test="${a.status != 'Confirmed'}">
                <form method="post" action="/confirm/${a.id}">
                  <button class="confirm" type="submit">Confirm</button>
                </form>
              </c:if>
              <form method="post" action="/cancel/${a.id}">
                <button class="cancel" type="submit">Cancel</button>
              </form>
            </td>
          </tr>
        </c:forEach>
      </tbody>
    </table>
  </div>

  <div class="back-container">
    <a href="<c:url value='/' />" class="back">Go Back to Home</a>
  </div>

  <footer>
    © 2025 Hara Krishna Hospital | Designed with love for your care
  </footer>

</body>
</html>
