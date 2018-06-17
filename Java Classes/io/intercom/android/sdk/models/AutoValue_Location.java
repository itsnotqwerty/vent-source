package io.intercom.android.sdk.models;

final class AutoValue_Location
  extends Location
{
  private final String cityName;
  private final String countryName;
  private final Integer timezoneOffset;
  
  AutoValue_Location(String paramString1, String paramString2, Integer paramInteger)
  {
    if (paramString1 == null) {
      throw new NullPointerException("Null cityName");
    }
    this.cityName = paramString1;
    if (paramString2 == null) {
      throw new NullPointerException("Null countryName");
    }
    this.countryName = paramString2;
    this.timezoneOffset = paramInteger;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof Location)) {
        break label79;
      }
      paramObject = (Location)paramObject;
      if ((!this.cityName.equals(((Location)paramObject).getCityName())) || (!this.countryName.equals(((Location)paramObject).getCountryName()))) {
        break;
      }
      if (this.timezoneOffset != null) {
        break label63;
      }
    } while (((Location)paramObject).getTimezoneOffset() == null);
    label63:
    while (!this.timezoneOffset.equals(((Location)paramObject).getTimezoneOffset())) {
      return false;
    }
    return true;
    label79:
    return false;
  }
  
  public final String getCityName()
  {
    return this.cityName;
  }
  
  public final String getCountryName()
  {
    return this.countryName;
  }
  
  public final Integer getTimezoneOffset()
  {
    return this.timezoneOffset;
  }
  
  public final int hashCode()
  {
    int j = this.cityName.hashCode();
    int k = this.countryName.hashCode();
    if (this.timezoneOffset == null) {}
    for (int i = 0;; i = this.timezoneOffset.hashCode()) {
      return i ^ ((j ^ 0xF4243) * 1000003 ^ k) * 1000003;
    }
  }
  
  public final String toString()
  {
    return "Location{cityName=" + this.cityName + ", countryName=" + this.countryName + ", timezoneOffset=" + this.timezoneOffset + "}";
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/models/AutoValue_Location.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */