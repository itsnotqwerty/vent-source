package com.vent.a;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.vent.d.b;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

public final class t
  extends a
{
  public static final Parcelable.Creator<t> CREATOR = new a.a(t.class);
  public ArrayList<x> ccR;
  public m cjQ;
  public m ckG;
  public o ckH;
  public int ckI;
  public j ckJ;
  
  public t(Parcel paramParcel)
  {
    this.ckG = m.f(paramParcel);
    this.ckH = ((o)paramParcel.readParcelable(o.class.getClassLoader()));
    this.ccR = paramParcel.createTypedArrayList(x.CREATOR);
    this.ckI = paramParcel.readInt();
    this.ckJ = ((j)paramParcel.readParcelable(j.class.getClassLoader()));
    this.cjQ = m.f(paramParcel);
  }
  
  public t(JSONObject paramJSONObject)
  {
    try
    {
      this.ckG = b.f(paramJSONObject, "group_id");
      this.ckI = b.g(paramJSONObject, "emotion_category_color");
      this.cjQ = b.f(paramJSONObject, "emotion_category_id");
      JSONArray localJSONArray = paramJSONObject.optJSONArray("interaction_types");
      if ((localJSONArray != null) && (localJSONArray.length() > 0)) {
        this.ckH = new o(localJSONArray.getJSONObject(0));
      }
      this.ccR = b.a(x.class, paramJSONObject.optJSONArray("users"), false, 10);
      if (this.ccR != null) {
        if (this.ccR.isEmpty()) {
          this.ccR = null;
        }
      }
      for (;;)
      {
        if (!paramJSONObject.isNull("gift")) {
          localj = new j(paramJSONObject.getJSONObject("gift"));
        }
        this.ckJ = localj;
        return;
        if (!paramJSONObject.isNull("user"))
        {
          this.ccR = new ArrayList(1);
          this.ccR.add(new x(paramJSONObject.getJSONObject("user"), false));
        }
      }
      return;
    }
    catch (Exception paramJSONObject)
    {
      paramJSONObject.printStackTrace();
    }
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    m.a(this.ckG, paramParcel, paramInt);
    paramParcel.writeParcelable(this.ckH, paramInt);
    paramParcel.writeTypedList(this.ccR);
    paramParcel.writeInt(this.ckI);
    paramParcel.writeParcelable(this.ckJ, 0);
    m.a(this.cjQ, paramParcel, paramInt);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/a/t.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */