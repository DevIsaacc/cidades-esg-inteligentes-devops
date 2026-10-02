# Estágio 1: Build
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /app

# Copia os arquivos do projeto e restaura as dependências
COPY src/ ./src/
RUN dotnet restore ./src/MeuProjeto.csproj

# Compila a aplicação
RUN dotnet publish ./src/MeuProjeto.csproj -c Release -o /out

# Estágio 2: Execução (Produção)
FROM mcr.microsoft.com/dotnet/aspnet:8.0
WORKDIR /app
COPY --from=build /out .

# Expõe a porta que a aplicação vai rodar
EXPOSE 8080
ENV ASPNETCORE_URLS=http://+:8080

# Comando para iniciar a aplicação (ajuste o nome da DLL)
ENTRYPOINT ["dotnet", "SeuProjeto.dll"]