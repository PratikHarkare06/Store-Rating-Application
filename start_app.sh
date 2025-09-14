#!/bin/bash

echo "🔍 Checking for existing servers..."

# Kill any existing processes on ports 3000 and 3001
echo "🛑 Stopping existing servers on ports 3000 and 3001..."
lsof -ti:3000 | xargs kill -9 2>/dev/null || echo "No process found on port 3000"
lsof -ti:3001 | xargs kill -9 2>/dev/null || echo "No process found on port 3001"

# Wait for ports to be freed
sleep 3

echo "🚀 Starting servers..."

# Start backend server in background
echo "📡 Starting backend server on port 3001..."
cd "/Users/pratik/Desktop/Store Applications/store-rating-app/backend"
npm start > backend.log 2>&1 &
BACKEND_PID=$!
echo "Backend PID: $BACKEND_PID"

# Wait for backend to initialize
echo "⏳ Waiting for backend to start..."
sleep 8

# Check if backend is running
if curl -s http://localhost:3001/api/v1/health > /dev/null 2>&1; then
    echo "✅ Backend server is running on http://localhost:3001"
else
    echo "❌ Backend server failed to start. Check store-rating-app/backend/backend.log for errors."
    exit 1
fi

# Start frontend server in background
echo "🌐 Starting frontend server on port 3000..."
cd "/Users/pratik/Desktop/Store Applications/frontend"
npm start > frontend.log 2>&1 &
FRONTEND_PID=$!
echo "Frontend PID: $FRONTEND_PID"

# Wait for frontend to compile
echo "⏳ Waiting for frontend to compile..."
sleep 15

# Check if frontend is running
if curl -s http://localhost:3000 > /dev/null 2>&1; then
    echo "✅ Frontend server is running on http://localhost:3000"
else
    echo "❌ Frontend server failed to start. Check frontend/frontend.log for errors."
    exit 1
fi

echo ""
echo "🎉 Both servers are running successfully!"
echo "📱 Frontend: http://localhost:3000"
echo "🔧 Backend: http://localhost:3001"
echo "🔑 Admin Login: admin@storerating.com / Admin@123"
echo ""
echo "📋 To stop servers:"
echo "kill $BACKEND_PID $FRONTEND_PID"
echo ""
echo "📄 Logs:"
echo "Backend: store-rating-app/backend/backend.log"
echo "Frontend: frontend/frontend.log"