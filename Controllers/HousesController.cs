namespace gregslist_cSharp.Controllers;

[ApiController]
[Route("api/[controller]")]
public class HousesController : ControllerBase
{
  private readonly HousesService _housesService;

  public HousesController(HousesService housesService)
  {
    _housesService = housesService;
  }

  [HttpGet]
  public ActionResult<List<House>> GetAll()
  {
    try
    {
      List<House> houses = _housesService.GetAll();
      return Ok(houses);
    }
    catch (Exception e)
    {
      return BadRequest(e.Message);
    }
  }
}
