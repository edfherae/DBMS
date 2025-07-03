using MVC_1.Services;
using MVC_1.Services.Implementations;

namespace MVC_1
{
    //
    public class Program
    {
        public static void Main(string[] args)
        {
            var builder = WebApplication.CreateBuilder(args);

            builder.Services.AddControllers();

			builder.Services.AddSingleton<IGreetingService, GreetingService>();

            var app = builder.Build();

            //default и другие
            app.MapControllerRoute("default", "{controller=Home}/{action=Index}/{id?}");

            app.Run();
        }
    }
}
