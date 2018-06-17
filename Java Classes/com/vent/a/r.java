package com.vent.a;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.vent.d.b;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class r
  extends a
{
  public static final Parcelable.Creator<r> CREATOR = new a.a(r.class);
  public String ckA;
  public String ckB;
  
  public r(Parcel paramParcel)
  {
    this.ckA = paramParcel.readString();
    this.ckB = paramParcel.readString();
  }
  
  public r(JSONObject paramJSONObject)
  {
    try
    {
      this.ckA = b.d(paramJSONObject, "link");
      this.ckB = b.d(paramJSONObject, "short_link");
      return;
    }
    catch (Exception paramJSONObject)
    {
      paramJSONObject.printStackTrace();
    }
  }
  
  static HashMap<String, r> b(JSONArray paramJSONArray)
    throws JSONException
  {
    Object localObject;
    if (paramJSONArray == null)
    {
      localObject = null;
      return (HashMap<String, r>)localObject;
    }
    int j = paramJSONArray.length();
    HashMap localHashMap = new HashMap(j);
    int i = 0;
    for (;;)
    {
      localObject = localHashMap;
      if (i >= j) {
        break;
      }
      localObject = new r(paramJSONArray.getJSONObject(i));
      localHashMap.put(((r)localObject).ckA, localObject);
      i += 1;
    }
  }
  
  public final JSONObject EK()
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("link", this.ckA);
    localJSONObject.put("short_link", this.ckB);
    return localJSONObject;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.ckA);
    paramParcel.writeString(this.ckB);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/a/r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */