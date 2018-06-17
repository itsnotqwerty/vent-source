package com.vent.a;

import android.os.Parcel;
import org.json.JSONObject;

public abstract class b<T extends b>
  extends a
  implements Comparable<T>
{
  public m cjy;
  
  b() {}
  
  b(Parcel paramParcel)
  {
    this.cjy = m.f(paramParcel);
  }
  
  b(JSONObject paramJSONObject)
  {
    try
    {
      this.cjy = com.vent.d.b.f(paramJSONObject, "id");
      return;
    }
    catch (Exception paramJSONObject)
    {
      paramJSONObject.printStackTrace();
    }
  }
  
  public static boolean a(b paramb1, b paramb2)
  {
    return (paramb1 == paramb2) || ((paramb1 != null) && (a(paramb1.cjy, paramb2))) || ((paramb2 != null) && (a(paramb1, paramb2.cjy)));
  }
  
  public static boolean a(b paramb, m paramm)
  {
    if (paramb == null) {}
    for (paramb = null;; paramb = paramb.cjy) {
      return m.b(paramm, paramb);
    }
  }
  
  public static boolean a(m paramm, b paramb)
  {
    if (paramb == null) {}
    for (paramb = null;; paramb = paramb.cjy) {
      return m.b(paramm, paramb);
    }
  }
  
  public int a(T paramT)
  {
    return m.a(this.cjy, paramT.cjy);
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if ((paramObject instanceof b)) {
      return m.b(this.cjy, ((b)paramObject).cjy);
    }
    if ((paramObject instanceof m)) {
      return m.b(this.cjy, (m)paramObject);
    }
    if ((paramObject instanceof String)) {
      return m.b(this.cjy, new m((String)paramObject));
    }
    return false;
  }
  
  public String toString()
  {
    if (this.cjy == null) {
      return super.toString();
    }
    return this.cjy.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    m.a(this.cjy, paramParcel, paramInt);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/a/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */