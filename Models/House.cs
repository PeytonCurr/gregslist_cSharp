namespace gregslist_cSharp.Models;

public class House
{
  public int Beds { get; set; }
  public int Baths { get; set; }
  public int Floors { get; set; }
  public int Price { get; set; }
  public string ImgUrl { get; set; }
  public string Address { get; set; }
  public DateTime CreatedAt { get; set; }
  public DateTime UpdatedAt { get; set; }
}
