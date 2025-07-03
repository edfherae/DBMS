namespace MVC_1.Services.Implementations
{
	public class GreetingService : IGreetingService
	{
		public string GetWelcomeMessage()
		{
			int currentHour = DateTime.Now.Hour;
			if (currentHour > 6 && currentHour < 12) return "Доброе утро!";
			else if (currentHour > 12 && currentHour < 18) return "Добрый день!";
			else if (currentHour > 18 && currentHour < 22) return "Добрый вечер!";
			else return "Доброй ночи!";
		}

	}
}
