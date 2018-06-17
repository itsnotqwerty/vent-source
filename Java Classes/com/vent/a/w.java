package com.vent.a;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.vent.d.b;
import org.json.JSONObject;

public final class w
  extends a
{
  public static final Parcelable.Creator<w> CREATOR = new a.a(w.class);
  public boolean ckM;
  public String description;
  public String type;
  
  public w(Parcel paramParcel)
  {
    this.type = paramParcel.readString();
    this.description = paramParcel.readString();
    if (paramParcel.readInt() != 0) {}
    for (boolean bool = true;; bool = false)
    {
      this.ckM = bool;
      return;
    }
  }
  
  public w(JSONObject paramJSONObject)
  {
    try
    {
      this.type = b.d(paramJSONObject, "type");
      this.description = b.d(paramJSONObject, "description");
      this.ckM = paramJSONObject.optBoolean("status", true);
      return;
    }
    catch (Exception paramJSONObject)
    {
      paramJSONObject.printStackTrace();
    }
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.type);
    paramParcel.writeString(this.description);
    if (this.ckM) {}
    for (paramInt = 1;; paramInt = 0)
    {
      paramParcel.writeInt(paramInt);
      return;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/a/w.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */