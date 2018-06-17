package com.vent.a;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.vent.d.e;
import org.json.JSONException;
import org.json.JSONObject;

public final class g
  extends b<g>
  implements Comparable<g>
{
  public static final Parcelable.Creator<g> CREATOR = new a.a(g.class);
  public boolean axa;
  public String cjP;
  public m cjQ;
  private CharSequence cjR;
  public String cjS;
  public int position;
  
  public g(Parcel paramParcel)
  {
    super(paramParcel);
    this.cjP = paramParcel.readString();
    this.cjQ = new m(paramParcel);
    this.position = paramParcel.readInt();
    if (paramParcel.readInt() != 0) {}
    for (boolean bool = true;; bool = false)
    {
      this.axa = bool;
      return;
    }
  }
  
  public g(JSONObject paramJSONObject)
  {
    super(paramJSONObject);
    try
    {
      this.cjP = com.vent.d.b.d(paramJSONObject, "name");
      this.cjQ = com.vent.d.b.f(paramJSONObject, "emotion_category_id");
      this.position = paramJSONObject.optInt("position", 0);
      this.axa = paramJSONObject.optBoolean("visible", false);
      return;
    }
    catch (Exception paramJSONObject)
    {
      paramJSONObject.printStackTrace();
    }
  }
  
  private int a(g paramg)
  {
    int i = this.position - paramg.position;
    if (i != 0) {}
    int j;
    do
    {
      return i;
      j = this.cjP.compareToIgnoreCase(paramg.cjP);
      i = j;
    } while (j != 0);
    return super.a(paramg);
  }
  
  public final JSONObject EK()
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("id", this.cjy);
    localJSONObject.put("name", this.cjP);
    localJSONObject.put("emotion_category_id", this.cjQ);
    if (this.position != 0) {
      localJSONObject.put("position", this.position);
    }
    if (this.axa) {
      localJSONObject.put("visible", this.axa);
    }
    return localJSONObject;
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
    this.cjQ.writeToParcel(paramParcel, paramInt);
    paramParcel.writeInt(this.position);
    if (this.axa) {}
    for (paramInt = 1;; paramInt = 0)
    {
      paramParcel.writeInt(paramInt);
      return;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/a/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */