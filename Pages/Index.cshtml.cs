using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace Forecast_Team8.Pages
{
    public class IndexModel : PageModel
    {
        [BindProperty]
        public string City { get; set; } = default!; // City name entered by user
        public IActionResult OnPost()
        {
            if (string.IsNullOrEmpty(City)) // If City is null or empty
            {
                return RedirectToPage("Index"); // Redirect to Index page if City is null or empty
            }
            HttpContext.Session.SetString("City", City); // Store City in session state
            return RedirectToPage("forecast"); // Redirect to forecast page
        }

        private readonly ILogger<IndexModel> _logger;

        public IndexModel(ILogger<IndexModel> logger)
        {
            _logger = logger;
        }

        public void OnGet()
        {

        }
    }
}