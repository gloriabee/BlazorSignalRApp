# Base image (runtime)
FROM mcr.microsoft.com/dotnet/aspnet:9.0 AS base
WORKDIR /app
EXPOSE 8080

# Build image
FROM mcr.microsoft.com/dotnet/sdk:9.0 AS build
WORKDIR /src

# Copy project files (adjusted path)
COPY ["BlazorSignalApp/BlazorSignalApp/BlazorSignalApp.csproj", "BlazorSignalApp/BlazorSignalApp/"]
COPY ["BlazorSignalApp/BlazorSignalApp.Client/BlazorSignalApp.Client.csproj", "BlazorSignalApp/BlazorSignalApp.Client/"]

RUN dotnet restore "BlazorSignalApp/BlazorSignalApp/BlazorSignalApp.csproj"

# Copy everything
COPY . .

WORKDIR "/src/BlazorSignalApp/BlazorSignalApp"
RUN dotnet publish "BlazorSignalApp.csproj" -c Release -o /app/publish /p:UseAppHost=false

# Final image
FROM base AS final
WORKDIR /app
COPY --from=build /app/publish .
ENTRYPOINT ["dotnet", "BlazorSignalApp.dll"]