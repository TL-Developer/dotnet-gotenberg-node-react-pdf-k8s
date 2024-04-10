using Flurl.Http;
using System.Net.Mime;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();

app.MapGet("/generate-pdf", async () =>
{
    string gotenberg = "http://host.docker.internal:8000/forms/chromium/convert/url";
    string frontend = "http://host.docker.internal:4200/";

    var result = await $"{gotenberg}".PostMultipartAsync(mp => mp.AddString("url", frontend)).Result.GetBytesAsync();

    return Results.File(result, MediaTypeNames.Application.Octet, "arquivo.pdf");
})
.WithName("GeneratePdf")
.WithOpenApi();

app.Run();
