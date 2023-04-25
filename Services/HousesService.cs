namespace gregslist_cSharp.Services;

public class HousesService
{
  private readonly HousesRepository _repo;

  public HousesService(HousesRepository repo)
  {
    _repo = repo;
  }

  internal List<House> GetAll()
  {
    List<House> houses = _repo.GetAll();
    return houses;
  }

  internal House GetOne(int houseId)
  {
    House house = _repo.GetOne(houseId);
    if (house == null)
    {
      throw new Exception($"The house with ID: {houseId} Sucks!");
    }
    return house;
  }
  internal House CreateHouse(House houseData)
  {
    int Id = _repo.CreateHouse(houseData);
    House house = this.GetOne(Id);
    return house;
  }
}
