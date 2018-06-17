package com.vent.a;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.vent.d.b;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

public class x
  extends c<x, y>
{
  public static final Parcelable.Creator<x> CREATOR = new c.a(x.class, y.class);
  public String ckN;
  public m ckO;
  public int ckP;
  public String username;
  
  public x() {}
  
  public x(x paramx)
  {
    super(paramx);
  }
  
  public x(JSONObject paramJSONObject, boolean paramBoolean)
  {
    super(paramJSONObject, (byte)0);
    try
    {
      if (this.cjy == null) {
        this.cjy = b.f(paramJSONObject, "user_id");
      }
      this.username = b.d(paramJSONObject, "username");
      this.ckO = b.f(paramJSONObject, "current_emotion_id");
      this.ckN = com.vent.d.c.ev(b.d(paramJSONObject, "profile_image_url"));
      if (this.ckN == null)
      {
        Object localObject = b.b(paramJSONObject, "profile_image_versions");
        if (localObject != null)
        {
          localObject = ((HashMap)localObject).entrySet().iterator();
          if (((Iterator)localObject).hasNext()) {
            this.ckN = com.vent.d.c.ev((String)((Map.Entry)((Iterator)localObject).next()).getValue());
          }
        }
      }
      this.ckP = paramJSONObject.optInt("official_staff_status");
      int i5 = this.flags;
      int i;
      int j;
      label164:
      int k;
      label178:
      int m;
      label192:
      int n;
      label206:
      int i1;
      label220:
      int i2;
      label235:
      int i3;
      if (paramJSONObject.optBoolean("account_is_public", false))
      {
        i = 4;
        if (!paramJSONObject.optBoolean("you_listen_to", false)) {
          break label303;
        }
        j = 2;
        if (!paramJSONObject.optBoolean("listens_to_you", false)) {
          break label309;
        }
        k = 8;
        if (!paramJSONObject.optBoolean("blocked_by_you", false)) {
          break label315;
        }
        m = 16;
        if (!paramJSONObject.optBoolean("is_blocking_you", false)) {
          break label321;
        }
        n = 32;
        if (!paramJSONObject.optBoolean("you_requested_listen_to", false)) {
          break label327;
        }
        i1 = 64;
        if (!paramJSONObject.optBoolean("requested_listen_to_you", false)) {
          break label333;
        }
        i2 = 128;
        if (!paramJSONObject.optBoolean("you_subscribed_to", false)) {
          break label339;
        }
        i3 = 512;
        label250:
        if (!paramJSONObject.optBoolean("muted", false)) {
          break label345;
        }
      }
      label303:
      label309:
      label315:
      label321:
      label327:
      label333:
      label339:
      label345:
      for (int i4 = 16384;; i4 = 0)
      {
        this.flags = (i4 | i | j | k | m | n | i1 | i2 | i3 | i5);
        return;
        i = 0;
        break;
        j = 0;
        break label164;
        k = 0;
        break label178;
        m = 0;
        break label192;
        n = 0;
        break label206;
        i1 = 0;
        break label220;
        i2 = 0;
        break label235;
        i3 = 0;
        break label250;
      }
      return;
    }
    catch (Exception paramJSONObject)
    {
      paramJSONObject.printStackTrace();
    }
  }
  
  public static String eM(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return "collapse";
    case 1: 
      return "hide";
    }
    return "show";
  }
  
  public static x f(JSONObject paramJSONObject)
  {
    if ((paramJSONObject == null) || (paramJSONObject.length() == 0)) {
      return null;
    }
    return new x(paramJSONObject, false);
  }
  
  public JSONObject EK()
    throws JSONException
  {
    boolean bool2 = true;
    localJSONObject = new JSONObject();
    localJSONObject.put("id", this.cjy);
    localJSONObject.put("username", this.username);
    try
    {
      if (!TextUtils.isEmpty(this.ckN)) {
        localJSONObject.put("profile_image_url", this.ckN);
      }
      if (this.ckO != null) {
        localJSONObject.put("current_emotion_id", this.ckO);
      }
      if ((this.flags & 0x4) != 0)
      {
        if ((this.flags & 0x4) != 0)
        {
          bool1 = true;
          localJSONObject.put("account_is_public", bool1);
        }
      }
      else
      {
        if ((this.flags & 0x2) != 0)
        {
          if ((this.flags & 0x2) == 0) {
            break label336;
          }
          bool1 = true;
          label119:
          localJSONObject.put("you_listen_to", bool1);
        }
        if ((this.flags & 0x8) != 0)
        {
          if ((this.flags & 0x8) == 0) {
            break label341;
          }
          bool1 = true;
          label149:
          localJSONObject.put("listens_to_you", bool1);
        }
        if ((this.flags & 0x10) != 0)
        {
          if ((this.flags & 0x10) == 0) {
            break label346;
          }
          bool1 = true;
          label179:
          localJSONObject.put("blocked_by_you", bool1);
        }
        if ((this.flags & 0x20) != 0)
        {
          if ((this.flags & 0x20) == 0) {
            break label351;
          }
          bool1 = true;
          label209:
          localJSONObject.put("is_blocking_you", bool1);
        }
        if ((this.flags & 0x40) != 0)
        {
          if ((this.flags & 0x40) == 0) {
            break label356;
          }
          bool1 = true;
          label239:
          localJSONObject.put("you_requested_listen_to", bool1);
        }
        if ((this.flags & 0x80) != 0)
        {
          if ((this.flags & 0x80) == 0) {
            break label361;
          }
          bool1 = true;
          label271:
          localJSONObject.put("requested_listen_to_you", bool1);
        }
        if ((this.flags & 0x200) != 0) {
          if ((this.flags & 0x200) == 0) {
            break label366;
          }
        }
      }
      label336:
      label341:
      label346:
      label351:
      label356:
      label361:
      label366:
      for (boolean bool1 = bool2;; bool1 = false)
      {
        localJSONObject.put("you_subscribed_to", bool1);
        if (this.ckP != 0) {
          localJSONObject.put("official_staff_status", this.ckP);
        }
        return localJSONObject;
        bool1 = false;
        break;
        bool1 = false;
        break label119;
        bool1 = false;
        break label149;
        bool1 = false;
        break label179;
        bool1 = false;
        break label209;
        bool1 = false;
        break label239;
        bool1 = false;
        break label271;
      }
      return localJSONObject;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
  }
  
  public final boolean EZ()
  {
    return ((this.flags & 0x30) == 0) && ((this.flags & 0xA) == 10);
  }
  
  public final boolean Fa()
  {
    return ((this.flags & 0x30) == 0) && (((this.flags & 0x2) != 0) || ((this.flags & 0x4) != 0));
  }
  
  public final boolean Fb()
  {
    return ((this.flags & 0x30) == 0) && (((this.flags & 0x2) != 0) || ((this.flags & 0x4) != 0) || ((this.flags & 0x2000) == 0));
  }
  
  public final boolean Fc()
  {
    return (this.flags & 0x100) != 0;
  }
  
  public final boolean Fd()
  {
    return (this.flags & 0x1) != 0;
  }
  
  public final boolean Fe()
  {
    return ((this.flags & 0x30) == 0) && ((this.flags & 0x200) != 0);
  }
  
  public final boolean Ff()
  {
    return (this.flags & 0x4) != 0;
  }
  
  public final boolean Fg()
  {
    return (this.flags & 0x400) != 0;
  }
  
  public final boolean Fh()
  {
    return ((this.flags & 0x30) == 0) && ((this.flags & 0x2) != 0);
  }
  
  public final boolean Fi()
  {
    return ((this.flags & 0x30) == 0) && ((this.flags & 0x8) != 0);
  }
  
  public final boolean Fj()
  {
    return (this.flags & 0x40) != 0;
  }
  
  public final boolean Fk()
  {
    return (this.flags & 0x10) != 0;
  }
  
  void d(Parcel paramParcel)
    throws Exception
  {
    this.username = paramParcel.readString();
    this.ckN = paramParcel.readString();
    this.ckO = m.f(paramParcel);
    this.ckP = paramParcel.readInt();
  }
  
  void d(x paramx)
  {
    super.a(paramx);
    this.username = paramx.username;
    this.ckN = paramx.ckN;
    this.ckO = paramx.ckO;
  }
  
  public final String eL(int paramInt)
  {
    return com.vent.d.c.j(this.ckN, paramInt);
  }
  
  public final boolean isBlocked()
  {
    return (this.flags & 0x30) != 0;
  }
  
  public final String toString()
  {
    if (this.username == null) {
      return super.toString();
    }
    return this.username;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeString(this.username);
    paramParcel.writeString(this.ckN);
    m.a(this.ckO, paramParcel, paramInt);
    paramParcel.writeInt(this.ckP);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/a/x.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */