package com.vent.a;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.vent.d.b;
import com.vent.d.d;
import com.vent.d.e;
import java.util.Date;
import org.json.JSONObject;

public class k
  extends c<k, l>
{
  public static final Parcelable.Creator<k> CREATOR = new c.a(k.class, l.class);
  public String cjP;
  private CharSequence cjR;
  public String cki;
  public int ckj;
  public int ckk;
  public Date ckl;
  
  public k() {}
  
  public k(m paramm, String paramString)
  {
    this.cjy = paramm;
    setName(paramString);
  }
  
  public k(JSONObject paramJSONObject, boolean paramBoolean)
  {
    super(paramJSONObject);
    try
    {
      int i;
      int j;
      if (paramJSONObject.optBoolean("you_listen_to", false))
      {
        i = 4;
        if (!paramJSONObject.optBoolean("has_new_content", false)) {
          break label165;
        }
        j = 8;
        label34:
        if (!paramJSONObject.optBoolean("muted", false)) {
          break label171;
        }
      }
      label165:
      label171:
      for (int k = 16;; k = 0)
      {
        if (paramJSONObject.optBoolean("is_nsfw", false)) {
          m = 32;
        }
        this.flags = (m | k | i | j | paramJSONObject.optInt("your_role", 0) << 24);
        setName(e.ex(b.d(paramJSONObject, "name")));
        JSONObject localJSONObject = paramJSONObject.optJSONObject("banner");
        if (localJSONObject != null) {
          this.cki = com.vent.d.c.ev(b.d(localJSONObject, "url"));
        }
        this.ckj = paramJSONObject.optInt("listener_count", 0);
        this.ckk = paramJSONObject.optInt("vent_count", 0);
        this.ckl = b.e(paramJSONObject, "last_vented_at");
        return;
        i = 0;
        break;
        j = 0;
        break label34;
      }
      return;
    }
    catch (Exception paramJSONObject)
    {
      paramJSONObject.printStackTrace();
    }
  }
  
  public static k d(JSONObject paramJSONObject)
  {
    if ((paramJSONObject == null) || (paramJSONObject.length() == 0)) {
      return null;
    }
    return new k(paramJSONObject, false);
  }
  
  public final boolean EX()
  {
    return (this.flags & 0x4) != 0;
  }
  
  public final boolean EY()
  {
    return this.flags >> 24 >= 50;
  }
  
  void c(k paramk)
  {
    super.a(paramk);
    this.cjP = paramk.cjP;
    this.cki = paramk.cki;
    this.ckj = paramk.ckj;
    this.ckk = paramk.ckk;
    this.ckl = paramk.ckl;
    this.cjR = paramk.cjR;
  }
  
  void d(Parcel paramParcel)
    throws Exception
  {
    setName(paramParcel.readString());
    this.cki = paramParcel.readString();
    this.ckj = paramParcel.readInt();
    this.ckk = paramParcel.readInt();
    this.ckl = d.i(paramParcel);
  }
  
  public final void eJ(int paramInt)
  {
    this.flags = (this.flags & 0xFFFFFF | paramInt << 24);
  }
  
  public final String eK(int paramInt)
  {
    return com.vent.d.c.j(this.cki, paramInt);
  }
  
  public final CharSequence getName()
  {
    if (this.cjR == null) {
      this.cjR = e.t(this.cjP);
    }
    return this.cjR;
  }
  
  public final boolean isAdmin()
  {
    return this.flags >> 24 == 100;
  }
  
  public final boolean isFull()
  {
    return (this.flags & 0x1) != 0;
  }
  
  public final boolean isMuted()
  {
    return (this.flags & 0x10) != 0;
  }
  
  public final void setName(String paramString)
  {
    this.cjP = paramString;
    this.cjR = null;
  }
  
  public final String toString()
  {
    if (this.cjP == null) {
      return super.toString();
    }
    return this.cjP;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeString(this.cjP);
    paramParcel.writeString(this.cki);
    paramParcel.writeInt(this.ckj);
    paramParcel.writeInt(this.ckk);
    d.a(paramParcel, this.ckl);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/a/k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */