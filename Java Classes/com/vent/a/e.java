package com.vent.a;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.vent.bb;
import com.vent.d.c;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public final class e
  extends b<e>
{
  public static final Parcelable.Creator<e> CREATOR = new a.a(e.class);
  public Uri cjH;
  public List<m> cjI;
  public boolean cjJ;
  public boolean cjK;
  
  public e(Parcel paramParcel)
  {
    super(paramParcel);
    Object localObject = paramParcel.readString();
    if (localObject == null)
    {
      localObject = null;
      this.cjH = ((Uri)localObject);
      this.cjI = paramParcel.createTypedArrayList(m.CREATOR);
      if (paramParcel.readInt() == 0) {
        break label77;
      }
      bool1 = true;
      label47:
      this.cjJ = bool1;
      if (paramParcel.readInt() == 0) {
        break label82;
      }
    }
    label77:
    label82:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      this.cjK = bool1;
      return;
      localObject = Uri.parse((String)localObject);
      break;
      bool1 = false;
      break label47;
    }
  }
  
  public e(JSONObject paramJSONObject)
  {
    super(paramJSONObject);
    try
    {
      if (!paramJSONObject.isNull("layer_id")) {}
      for (Uri localUri = Uri.parse(paramJSONObject.getString("layer_id"));; localUri = null)
      {
        this.cjH = localUri;
        this.cjI = com.vent.d.b.a(paramJSONObject, "user_ids");
        this.cjJ = paramJSONObject.optBoolean("typing_indicators_enabled", false);
        this.cjK = paramJSONObject.optBoolean("read_receipts_enabled", false);
        return;
      }
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
    if (this.cjH != null) {}
    for (String str = this.cjH.toString();; str = null)
    {
      localJSONObject.put("layer_id", str);
      com.vent.d.b.a(localJSONObject, "user_ids", this.cjI);
      return localJSONObject;
    }
  }
  
  public final m EP()
  {
    if ((this.cjI != null) && (bb.ceP != null))
    {
      Iterator localIterator = this.cjI.iterator();
      while (localIterator.hasNext())
      {
        m localm = (m)localIterator.next();
        if (!bb.a(localm)) {
          return localm;
        }
      }
    }
    return null;
  }
  
  public final x EQ()
  {
    m localm = EP();
    if ((localm == null) || (bb.ciL == null)) {
      return null;
    }
    return (x)bb.ciL.get(localm);
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      do
      {
        return true;
        if (!(paramObject instanceof e)) {
          break;
        }
        paramObject = (e)paramObject;
      } while ((this == paramObject) || ((paramObject != null) && (m.b(this.cjy, ((b)paramObject).cjy))));
      return false;
      if (!(paramObject instanceof f)) {
        break;
      }
    } while ((this.cjH != null) && (this.cjH.equals(((f)paramObject).cjL)));
    return false;
    return super.equals(paramObject);
  }
  
  public final String toString()
  {
    if (this.cjH != null) {}
    for (String str1 = this.cjH.toString();; str1 = "<null>")
    {
      String str2 = str1;
      if (!c.f(this.cjI))
      {
        str2 = str1;
        if (bb.ciL != null)
        {
          x localx = (x)bb.ciL.get(this.cjI.get(0));
          str2 = str1;
          if (localx != null) {
            str2 = str1 + " " + localx.username;
          }
        }
      }
      return str2;
    }
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = 1;
    super.writeToParcel(paramParcel, paramInt);
    String str;
    if (this.cjH != null)
    {
      str = this.cjH.toString();
      paramParcel.writeString(str);
      paramParcel.writeTypedList(this.cjI);
      if (!this.cjJ) {
        break label73;
      }
      paramInt = 1;
      label47:
      paramParcel.writeInt(paramInt);
      if (!this.cjK) {
        break label78;
      }
    }
    label73:
    label78:
    for (paramInt = i;; paramInt = 0)
    {
      paramParcel.writeInt(paramInt);
      return;
      str = null;
      break;
      paramInt = 0;
      break label47;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/a/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */