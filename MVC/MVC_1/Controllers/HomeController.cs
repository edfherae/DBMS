using Microsoft.AspNetCore.Mvc;
using MVC_1.Services;

namespace MVC_1.Controllers
{
	public class HomeController : Controller
	{
		public IActionResult Index()
		{
			return Content("Hola");
		}
		[HttpGet]
		public IActionResult Welcome([FromServices] IGreetingService greetingService)
		{
			return Content(greetingService.GetWelcomeMessage());
		}
		public IActionResult Time()
		{
			return Content(DateTime.Now.ToString());
		}
	}
}
