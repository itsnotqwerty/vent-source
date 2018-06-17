package com.vent.a;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.vent.d.d;
import java.util.ArrayList;
import java.util.Date;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class i
  extends b<i>
{
  public static final Parcelable.Creator<i> CREATOR = new a.a(i.class);
  public Date cjA;
  public m cjD;
  public int flags;
  
  public i(Parcel paramParcel)
  {
    super(paramParcel);
    this.cjD = m.f(paramParcel);
    this.cjA = d.i(paramParcel);
    this.flags = paramParcel.readInt();
  }
  
  private i(JSONObject paramJSONObject, String paramString)
  {
    super(paramJSONObject);
    String str = paramString;
    if (paramString == null) {
      str = "user_id";
    }
    try
    {
      this.cjD = com.vent.d.b.f(paramJSONObject, str);
      this.cjA = com.vent.d.b.e(paramJSONObject, "created_at");
      this.flags = (paramJSONObject.optInt("role", 0) << 24);
      return;
    }
    catch (Exception paramJSONObject)
    {
      paramJSONObject.printStackTrace();
    }
  }
  
  private int a(i parami)
  {
    long l = this.cjA.getTime() - parami.cjA.getTime();
    if (l < 0L) {
      return -1;
    }
    if (l > 0L) {
      return 1;
    }
    return super.a(parami);
  }
  
  public static ArrayList<i> a(JSONArray paramJSONArray, String paramString)
    throws JSONException
  {
    Object localObject;
    if (paramJSONArray == null)
    {
      localObject = null;
      return (ArrayList<i>)localObject;
    }
    int j = paramJSONArray.length();
    ArrayList localArrayList = new ArrayList(j);
    int i = 0;
    for (;;)
    {
      localObject = localArrayList;
      if (i >= j) {
        break;
      }
      localArrayList.add(new i(paramJSONArray.getJSONObject(i), paramString));
      i += 1;
    }
  }
  
  public final void eI(int paramInt)
  {
    this.flags = (this.flags & 0xFFFFFF | paramInt << 24);
  }
  
  public final boolean isAdmin()
  {
    return this.flags >> 24 == 100;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    m.a(this.cjD, paramParcel, paramInt);
    d.a(paramParcel, this.cjA);
    paramParcel.writeInt(this.flags);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/a/i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */