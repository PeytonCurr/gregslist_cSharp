namespace gregslist_cSharp.Repositories;

public class HousesRepository
{
  private readonly IDbConnection _db;

  public HousesRepository(IDbConnection db)
  {
    _db = db;
  }

  internal List<House> GetAll()
  {
    string sql = "SELECT * FROM houses;";
    List<House> houses = _db.Query<House>(sql).ToList();
    return houses;
  }

  internal House GetOne(int houseId)
  {
    string sql = "SELECT * FROM houses WHERE id = @houseId;";
    House house = _db.Query<House>(sql, new { houseId }).FirstOrDefault();
    return house;
  }
  internal int CreateHouse(House houseData)
  {
    string sql = @"
    INSERT INTO houses (
      Beds, Baths, Floors, Price, ImgUrl, Address
    )
    values (
      @Beds, @Baths, @Floors, @Price, @ImgUrl, @Address
    );
    SELECT LAST_INSERT_ID();";

    int Id = _db.ExecuteScalar<int>(sql, houseData);
    return Id;
  }
}
