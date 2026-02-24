# Blazor Real-Time Chat App (.NET 9 + SignalR)
This project is a real-time chat application built with 
Blazor Web App (.NET 9) and SignalR.

It demonstrates WebSocket-based communication between 
WebAssembly clients and an ASP.NET Core backend.

## 🚀 Features
- Real-time messaging using SignalR
- WebAssembly interactive render mode
- WebSocket transport
- Response compression enabled
- Clean component-based architecture
- Docker support for containerized deployment

## 🏗 Architecture
Client: Blazor WebAssembly component  
Server: ASP.NET Core (.NET 9)  
Communication: SignalR (WebSockets preferred transport)

## 🛠 Technologies Used
- .NET 9
- Blazor Web App
- SignalR
- WebSockets
- Response Compression Middleware
- Docker

## ⚙️ Run Without Docker 
1. Clone the repository
2. Run the application
3. Open multiple browsers tabs to test real-time messaging.

## 🐳 Run With Docker
1. Build Docker Image
```
docker build -t blazor-chat .
```
2. Run container
```
docker run --name blazor-chat-container -p 8080:8080 blazor-chat
```
3. open in browser



