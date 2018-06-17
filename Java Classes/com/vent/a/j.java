package com.vent.a;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.vent.d.e;
import org.json.JSONObject;

public final class j
  extends b<j>
{
  public static final Parcelable.Creator<j> CREATOR = new a.a(j.class);
  public m cjQ;
  public String ckg;
  public boolean ckh;
  public String message;
  
  public j(Parcel paramParcel)
  {
    super(paramParcel);
    this.cjQ = m.f(paramParcel);
    this.ckg = paramParcel.readString();
    this.message = paramParcel.readString();
    if (paramParcel.readInt() != 0) {}
    for (boolean bool = true;; bool = false)
    {
      this.ckh = bool;
      return;
    }
  }
  
  public j(JSONObject paramJSONObject)
  {
    super(paramJSONObject);
    try
    {
      this.cjQ = com.vent.d.b.f(paramJSONObject, "emotion_category_id");
      this.ckg = com.vent.d.b.d(paramJSONObject, "gifter_name");
      this.message = e.ex(com.vent.d.b.d(paramJSONObject, "message"));
      this.ckh = paramJSONObject.optBoolean("is_anonymous");
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
    m.a(this.cjQ, paramParcel, paramInt);
    paramParcel.writeString(this.ckg);
    paramParcel.writeString(this.message);
    if (this.ckh) {}
    for (paramInt = 1;; paramInt = 0)
    {
      paramParcel.writeInt(paramInt);
      return;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/a/j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */