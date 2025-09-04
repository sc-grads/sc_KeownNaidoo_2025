using Microsoft.AspNetCore.Mvc;


namespace Web.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class CalculateController : ControllerBase
    {

        [HttpGet("Add/{x}/{y}")]
        public int Get(int x, int y)
        {
            throw new NotImplementedException();
        }
    }
}
