package com.vent.a;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONObject;

public final class n
  extends b<n>
{
  public static final Parcelable.Creator<n> CREATOR = new a.a(n.class);
  public int count;
  
  public n(Parcel paramParcel)
  {
    super(paramParcel);
    this.count = paramParcel.readInt();
  }
  
  n(m paramm, int paramInt)
  {
    this.cjy = paramm;
    this.count = paramInt;
  }
  
  static n a(ArrayList<n> paramArrayList, m paramm)
  {
    if (paramArrayList != null)
    {
      paramArrayList = paramArrayList.iterator();
      while (paramArrayList.hasNext())
      {
        n localn = (n)paramArrayList.next();
        if (b.a(paramm, localn)) {
          return localn;
        }
      }
    }
    return null;
  }
  
  public static ArrayList<n> e(JSONObject paramJSONObject)
  {
    if (paramJSONObject == null) {
      return null;
    }
    ArrayList localArrayList = new ArrayList(paramJSONObject.length());
    Iterator localIterator = paramJSONObject.keys();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      m localm = o.eh(str);
      if (localm != null) {
        localArrayList.add(new n(localm, paramJSONObject.optInt(str, 0)));
      }
    }
    return localArrayList;
  }
  
  public final String toString()
  {
    return o.d(this.cjy);
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeInt(this.count);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/a/n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */