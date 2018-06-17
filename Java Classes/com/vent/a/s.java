package com.vent.a;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.vent.d.d;
import com.vent.d.e;
import java.util.Date;
import org.json.JSONObject;

public final class s
  extends b<s>
{
  public static final Parcelable.Creator<s> CREATOR = new a.a(s.class);
  public String ckC;
  public String ckD;
  public t ckE;
  public Date ckF;
  public boolean read;
  public String type;
  
  public s(Parcel paramParcel)
  {
    super(paramParcel);
    this.type = paramParcel.readString();
    this.ckF = d.i(paramParcel);
    this.ckC = paramParcel.readString();
    this.ckD = paramParcel.readString();
    this.ckE = ((t)paramParcel.readParcelable(t.class.getClassLoader()));
    if (paramParcel.readInt() != 0) {}
    for (boolean bool = true;; bool = false)
    {
      this.read = bool;
      return;
    }
  }
  
  public s(JSONObject paramJSONObject)
  {
    super(paramJSONObject);
    try
    {
      this.type = com.vent.d.b.d(paramJSONObject, "type");
      this.ckF = com.vent.d.b.e(paramJSONObject, "last_activity_at");
      this.read = paramJSONObject.optBoolean("read", false);
      JSONObject localJSONObject = paramJSONObject.optJSONObject("message");
      if (localJSONObject != null)
      {
        this.ckC = com.vent.d.b.d(localJSONObject, "title");
        this.ckD = e.ex(com.vent.d.b.d(localJSONObject, "body"));
      }
      if (!paramJSONObject.isNull("params")) {}
      for (paramJSONObject = new t(paramJSONObject.getJSONObject("params"));; paramJSONObject = null)
      {
        this.ckE = paramJSONObject;
        return;
      }
      return;
    }
    catch (Exception paramJSONObject)
    {
      paramJSONObject.printStackTrace();
    }
  }
  
  public final String toString()
  {
    if (this.ckC == null) {
      return super.toString();
    }
    return this.ckC;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeString(this.type);
    d.a(paramParcel, this.ckF);
    paramParcel.writeString(this.ckC);
    paramParcel.writeString(this.ckD);
    paramParcel.writeParcelable(this.ckE, paramInt);
    if (this.read) {}
    for (paramInt = 1;; paramInt = 0)
    {
      paramParcel.writeInt(paramInt);
      return;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/a/s.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */