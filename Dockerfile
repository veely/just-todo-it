FROM mcr.microsoft.com/dotnet/sdk:6.0
WORKDIR /app
COPY . .
RUN dotnet publish src/JustTodoIt.Api -o output
ENTRYPOINT [ "dotnet", "output/JustTodoIt.Api.dll" ]
