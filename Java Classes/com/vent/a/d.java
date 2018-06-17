package com.vent.a;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.vent.d.c;
import com.vent.d.e;
import java.util.Date;
import java.util.HashMap;
import org.json.JSONObject;

public final class d
  extends b<d>
{
  public static final Parcelable.Creator<d> CREATOR = new a.a(d.class);
  public String body;
  public Date cjA;
  public Date cjB;
  public HashMap<m, x> cjC;
  public m cjD;
  public HashMap<String, r> cjE;
  public int cjF;
  public boolean cjG;
  
  public d(Parcel paramParcel)
    throws Exception
  {
    super(paramParcel);
    this.body = paramParcel.readString();
    this.cjA = com.vent.d.d.i(paramParcel);
    this.cjB = com.vent.d.d.i(paramParcel);
    this.cjC = com.vent.d.d.c(paramParcel, x.CREATOR);
    this.cjD = ((m)paramParcel.readParcelable(m.class.getClassLoader()));
    this.cjE = com.vent.d.d.d(paramParcel, r.CREATOR);
    this.cjF = paramParcel.readInt();
    if (paramParcel.readInt() != 0) {}
    for (boolean bool = true;; bool = false)
    {
      this.cjG = bool;
      return;
    }
  }
  
  public d(JSONObject paramJSONObject)
  {
    super(paramJSONObject);
    try
    {
      this.body = e.ex(com.vent.d.b.d(paramJSONObject, "body"));
      this.cjA = com.vent.d.b.e(paramJSONObject, "created_at");
      this.cjB = com.vent.d.b.e(paramJSONObject, "updated_at");
      this.cjC = com.vent.d.b.a(x.class, paramJSONObject.optJSONArray("mentioned_users"), false);
      if (c.l(this.cjC)) {
        this.cjC = null;
      }
      this.cjD = com.vent.d.b.f(paramJSONObject, "user_id");
      this.cjF = paramJSONObject.optInt("comment_favourites_count", 0);
      if (!paramJSONObject.isNull("my_favourite_id")) {
        bool = true;
      }
      this.cjG = bool;
      this.cjE = r.b(paramJSONObject.optJSONArray("links"));
      if (c.l(this.cjE)) {
        this.cjE = null;
      }
      return;
    }
    catch (Exception paramJSONObject)
    {
      paramJSONObject.printStackTrace();
    }
  }
  
  private int a(d paramd)
  {
    long l = this.cjA.getTime() - paramd.cjA.getTime();
    if (l < 0L) {
      return -1;
    }
    if (l > 0L) {
      return 1;
    }
    return super.a(paramd);
  }
  
  public final String toString()
  {
    if (this.body == null) {
      return super.toString();
    }
    return this.body;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeString(this.body);
    com.vent.d.d.a(paramParcel, this.cjA);
    com.vent.d.d.a(paramParcel, this.cjB);
    com.vent.d.d.a(paramParcel, paramInt, this.cjC);
    paramParcel.writeParcelable(this.cjD, paramInt);
    com.vent.d.d.c(paramParcel, paramInt, this.cjE);
    paramParcel.writeInt(this.cjF);
    if (this.cjG) {}
    for (paramInt = 1;; paramInt = 0)
    {
      paramParcel.writeInt(paramInt);
      return;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/a/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */