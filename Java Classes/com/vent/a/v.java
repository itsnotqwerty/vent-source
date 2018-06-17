package com.vent.a;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import org.json.JSONObject;

public final class v
  extends b<v>
{
  public static final Parcelable.Creator<v> CREATOR = new a.a(v.class);
  public String value;
  
  public v(Parcel paramParcel)
  {
    super(paramParcel);
    this.value = paramParcel.readString();
  }
  
  public v(JSONObject paramJSONObject)
  {
    super(paramJSONObject);
    try
    {
      this.value = com.vent.d.b.d(paramJSONObject, "value");
      return;
    }
    catch (Exception paramJSONObject)
    {
      paramJSONObject.printStackTrace();
    }
  }
  
  public final String toString()
  {
    return this.value;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeString(this.value);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/a/v.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */