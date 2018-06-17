package io.intercom.android.sdk.models;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.auto.value.AutoValue;
import io.intercom.android.sdk.utilities.NullSafety;

@AutoValue
public abstract class Location
  implements Parcelable
{
  public static final Parcelable.Creator<Location> CREATOR = new Parcelable.Creator()
  {
    public final Location createFromParcel(Parcel paramAnonymousParcel)
    {
      String str1 = paramAnonymousParcel.readString();
      String str2 = paramAnonymousParcel.readString();
      if (paramAnonymousParcel.readByte() == 0) {}
      for (paramAnonymousParcel = null;; paramAnonymousParcel = Integer.valueOf(paramAnonymousParcel.readInt())) {
        return Location.create(str1, str2, paramAnonymousParcel);
      }
    }
    
    public final Location[] newArray(int paramAnonymousInt)
    {
      return new Location[paramAnonymousInt];
    }
  };
  
  public static Location create(String paramString1, String paramString2, Integer paramInteger)
  {
    return new AutoValue_Location(paramString1, paramString2, paramInteger);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public abstract String getCityName();
  
  public abstract String getCountryName();
  
  public abstract Integer getTimezoneOffset();
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(getCityName());
    paramParcel.writeString(getCountryName());
    Integer localInteger = getTimezoneOffset();
    if (localInteger == null)
    {
      paramParcel.writeByte((byte)0);
      return;
    }
    paramParcel.writeByte((byte)1);
    paramParcel.writeInt(localInteger.intValue());
  }
  
  public static final class Builder
  {
    String city_name;
    String country_name;
    Integer timezone_offset;
    
    public final Location build()
    {
      return Location.create(NullSafety.valueOrEmpty(this.city_name), NullSafety.valueOrEmpty(this.country_name), this.timezone_offset);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/models/Location.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */