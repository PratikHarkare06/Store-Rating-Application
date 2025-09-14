# Store Rating Application

A modern full-stack web application for rating and managing stores with role-based access control.

## 🚀 Features

- **User Authentication** - Secure login/registration with JWT tokens
- **Role-Based Access** - Admin, Store Owner, and Customer roles
- **Store Management** - Complete CRUD operations for stores
- **Rating System** - Users can rate and review stores
- **Admin Dashboard** - Advanced management interface
- **Advanced Features** - Pagination, filtering, search, and data export

## 🛠️ Tech Stack

- **Frontend**: React.js with Material-UI
- **Backend**: Node.js with Express.js
- **Database**: SQLite (development) / MySQL (production)
- **Authentication**: JWT tokens
- **Validation**: Express-validator with custom validation utils

## 🏃‍♂️ Quick Start

1. **Clone the repository**
   ```bash
   git clone https://github.com/PratikHarkare06/Store-Rating-Application.git
   cd Store-Rating-Application
   ```

2. **Start the application**
   ```bash
   chmod +x start_app.sh
   ./start_app.sh
   ```

3. **Access the application**
   - Frontend: http://localhost:3000
   - Backend: http://localhost:3001

## 🔐 Default Admin Credentials

- **Email**: admin@storerating.com
- **Password**: Admin@123

## 📁 Project Structure

```
Store Rating Application/
├── frontend/                 # React frontend application
├── store-rating-app/
│   ├── backend/             # Node.js backend API
│   ├── frontend/            # Alternative frontend build
│   └── README.md
├── start_app.sh             # Quick start script
└── README.md               # This file
```

## 🔧 Manual Setup

### Backend Setup
```bash
cd store-rating-app/backend
npm install
cp .env.example .env
npm run migrate
npm run seed
npm start
```

### Frontend Setup
```bash
cd frontend
npm install
npm start
```

## 📝 API Documentation

Basic API documentation is available in `store-rating-app/backend/API_TESTING.md`

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Push to the branch
5. Open a Pull Request

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

## 🎯 Development Status

✅ **Core Features Complete**  
✅ **Authentication & Authorization**  
✅ **Store Management**  
✅ **Rating System**  
✅ **Admin Dashboard**  
✅ **Advanced Features**  
✅ **Production Ready**  

---

**Made with ❤️ by [Pratik Harkare](https://github.com/PratikHarkare06)**
