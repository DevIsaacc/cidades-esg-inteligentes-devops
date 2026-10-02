var builder = WebApplication.CreateBuilder(args);
var app = builder.Build();

app.MapGet("/", () => "API Cidades ESG Inteligentes funcionando!");

app.Run();