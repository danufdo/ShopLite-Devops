FROM mcr.microsoft.com/dotnet/sdk:8.0 AS BUILD
WORKDIR /src

COPY . .
RUN dotnet restore
RUN dotnet publish -c Release -o /app/publish

FROM mcr.microsoft.com/dotnet/aspnet:8.0
WORKDIR /app
COPY --from=build /app/publish .

EXPOSE 5000
ENTRYPOINT [ "dotnet" , "ShopLite.API.dll" ]



