package com.vent.a;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import org.json.JSONObject;

public final class u
  extends b<u>
{
  public static final Parcelable.Creator<u> CREATOR = new a.a(u.class);
  public String ckK;
  public int ckL;
  
  public u(Parcel paramParcel)
  {
    super(paramParcel);
    this.ckK = paramParcel.readString();
    this.ckL = paramParcel.readInt();
  }
  
  public u(JSONObject paramJSONObject)
  {
    super(paramJSONObject);
    try
    {
      this.ckK = com.vent.d.b.d(paramJSONObject, "report_reason");
      this.ckL = paramJSONObject.optInt("object_type", -1);
      return;
    }
    catch (Exception paramJSONObject)
    {
      paramJSONObject.printStackTrace();
    }
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeString(this.ckK);
    paramParcel.writeInt(this.ckL);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/a/u.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */