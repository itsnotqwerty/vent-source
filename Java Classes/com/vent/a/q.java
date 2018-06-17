package com.vent.a;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

public final class q
  extends b<q>
{
  public static final Parcelable.Creator<q> CREATOR = new a.a(q.class);
  public HashMap<String, String> ckz;
  
  public q(Parcel paramParcel)
    throws Exception
  {
    super(paramParcel);
    int i = paramParcel.readInt();
    if ((i < 0) || (i > 10000)) {
      throw new Exception("bad size in parcel");
    }
    HashMap localHashMap = new HashMap(i);
    while (i > 0)
    {
      localHashMap.put(paramParcel.readString(), paramParcel.readString());
      i -= 1;
    }
    this.ckz = localHashMap;
  }
  
  public q(JSONObject paramJSONObject)
  {
    super(paramJSONObject);
    try
    {
      this.ckz = com.vent.d.b.b(paramJSONObject, "images");
      return;
    }
    catch (Exception paramJSONObject)
    {
      paramJSONObject.printStackTrace();
    }
  }
  
  public final JSONObject EK()
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("id", this.cjy);
    com.vent.d.b.a(localJSONObject, "images", this.ckz);
    return localJSONObject;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    Object localObject = this.ckz;
    if (localObject == null) {
      paramParcel.writeInt(0);
    }
    for (;;)
    {
      return;
      paramParcel.writeInt(((Map)localObject).size());
      localObject = ((Map)localObject).entrySet().iterator();
      while (((Iterator)localObject).hasNext())
      {
        Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
        paramParcel.writeString((String)localEntry.getKey());
        paramParcel.writeString((String)localEntry.getValue());
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/a/q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */