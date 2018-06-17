package com.vent.a;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.vent.bb;
import com.vent.d.e;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public final class o
  extends b<o>
{
  public static final Parcelable.Creator<o> CREATOR = new a.a(o.class);
  private static final m ckv = new m("00000000-0000-0000-0000-000000000001");
  private static final m ckw = new m("41d0f4c6-5659-4353-a029-eb6632722dc2");
  public static final o ckx = new o("comment", "<-");
  public static final o cky = new o(ckw, "*", -10000000);
  private String cjP;
  private CharSequence cjR;
  public int cku;
  
  public o(Parcel paramParcel)
  {
    super(paramParcel);
    this.cjP = paramParcel.readString();
    this.cku = paramParcel.readInt();
  }
  
  private o(m paramm, String paramString, int paramInt)
  {
    this.cjy = paramm;
    this.cjP = paramString;
    this.cku = paramInt;
  }
  
  private o(String paramString1, String paramString2)
  {
    this(eh(paramString1), paramString2, 10000000);
  }
  
  public o(JSONObject paramJSONObject)
  {
    super(paramJSONObject);
    try
    {
      this.cjP = com.vent.d.b.d(paramJSONObject, "name");
      this.cku = paramJSONObject.optInt("sort_order", 0);
      return;
    }
    catch (Exception paramJSONObject)
    {
      paramJSONObject.printStackTrace();
    }
  }
  
  private int a(o paramo)
  {
    int i = this.cku - paramo.cku;
    if (i != 0) {
      return i;
    }
    return super.a(paramo);
  }
  
  public static o b(Map<m, o> paramMap, m paramm)
  {
    if (m.b(paramm, ckv)) {
      return ckx;
    }
    if (m.b(paramm, ckw)) {
      return cky;
    }
    if (paramMap != null) {
      return (o)paramMap.get(paramm);
    }
    return null;
  }
  
  public static String d(m paramm)
  {
    if (paramm == null) {
      return null;
    }
    if (paramm.b(ckv)) {
      return "comment";
    }
    return paramm.toString();
  }
  
  public static o e(m paramm)
  {
    paramm = b(bb.ciQ, paramm);
    if (paramm != null) {
      return paramm;
    }
    if (System.currentTimeMillis() - bb.ciS > 300000L) {
      bb.ciS = 0L;
    }
    return null;
  }
  
  public static m eh(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    if (paramString.equals("comment")) {
      return ckv;
    }
    return new m(paramString);
  }
  
  public final JSONObject EK()
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("id", this.cjy);
    if (this.cjR == null) {}
    for (Object localObject = null;; localObject = this.cjR.toString())
    {
      localJSONObject.put("name", localObject);
      if (this.cku != 0) {
        localJSONObject.put("sort_order", this.cku);
      }
      return localJSONObject;
    }
  }
  
  public final CharSequence getName()
  {
    if (this.cjR == null) {
      this.cjR = e.s(this.cjP.toUpperCase());
    }
    return this.cjR;
  }
  
  public final String toString()
  {
    if (this.cjP == null) {
      return super.toString();
    }
    return this.cjP;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeString(this.cjP);
    paramParcel.writeInt(this.cku);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/a/o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */