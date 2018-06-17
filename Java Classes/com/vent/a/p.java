package com.vent.a;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import org.json.JSONObject;

public final class p
  extends b<p>
{
  public static final Parcelable.Creator<p> CREATOR = new a.a(p.class);
  public String name;
  
  public p(Parcel paramParcel)
  {
    super(paramParcel);
    this.name = paramParcel.readString();
  }
  
  public p(JSONObject paramJSONObject)
  {
    super(paramJSONObject);
    try
    {
      this.name = com.vent.d.b.d(paramJSONObject, "name");
      return;
    }
    catch (Exception paramJSONObject)
    {
      paramJSONObject.printStackTrace();
    }
  }
  
  public final String toString()
  {
    if (this.name == null) {
      return super.toString();
    }
    return this.name;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeString(this.name);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/a/p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */