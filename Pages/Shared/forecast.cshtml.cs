using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace Forecast_Team8.Pages
{
    public class forecastModel : PageModel
    {
        private readonly ILogger<IndexModel> _logger;

        public forecastModel(ILogger<forecastModel> logger)
        {
            _logger = (ILogger<IndexModel>?)logger;
        }

        public void OnGet()
        {

        }
    }
}