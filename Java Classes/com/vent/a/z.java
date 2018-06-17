package com.vent.a;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.vent.bb;
import com.vent.d.c;
import com.vent.d.d;
import com.vent.d.e;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import org.json.JSONObject;

public final class z
  extends b<z>
{
  public static final Parcelable.Creator<z> CREATOR = new a.a(z.class);
  public x bXE;
  public k bYM;
  public String body;
  public Date cjA;
  public HashMap<m, x> cjC;
  public HashMap<String, r> cjE;
  public m ckX;
  public String ckY;
  public ArrayList<n> ckZ;
  private HashMap<m, Integer> cla;
  public int clb;
  public int clc;
  public int flags;
  
  public z() {}
  
  public z(Parcel paramParcel)
    throws Exception
  {
    super(paramParcel);
    this.cjA = d.i(paramParcel);
    this.ckX = m.f(paramParcel);
    this.body = paramParcel.readString();
    this.bXE = ((x)a.b(paramParcel, x.CREATOR));
    this.ckY = paramParcel.readString();
    this.cjC = d.c(paramParcel, x.CREATOR);
    this.ckZ = paramParcel.createTypedArrayList(n.CREATOR);
    this.cla = d.g(paramParcel);
    this.cjE = d.d(paramParcel, r.CREATOR);
    this.clb = paramParcel.readInt();
    this.flags = paramParcel.readInt();
    this.clc = paramParcel.readInt();
    this.bYM = ((k)paramParcel.readParcelable(k.class.getClassLoader()));
  }
  
  public z(JSONObject paramJSONObject)
  {
    super(paramJSONObject);
    try
    {
      this.cjA = com.vent.d.b.e(paramJSONObject, "created_at");
      this.ckX = com.vent.d.b.f(paramJSONObject, "emotion_id");
      this.body = e.ex(com.vent.d.b.d(paramJSONObject, "body"));
      this.bXE = x.f(paramJSONObject.optJSONObject("user"));
      this.ckY = com.vent.d.b.d(paramJSONObject, "city");
      this.cjC = com.vent.d.b.a(x.class, paramJSONObject.optJSONArray("mentioned_users"), false);
      if (c.l(this.cjC)) {
        this.cjC = null;
      }
      this.ckZ = n.e(paramJSONObject.optJSONObject("interaction_counts"));
      this.cla = com.vent.d.b.c(paramJSONObject, "interaction_flags");
      if (c.l(this.cla)) {
        this.cla = null;
      }
      this.cjE = r.b(paramJSONObject.optJSONArray("links"));
      if (c.l(this.cjE)) {
        this.cjE = null;
      }
      this.clb = paramJSONObject.optInt("index_score", 0);
      this.clc = ei(com.vent.d.b.b(paramJSONObject, "privacy_setting", null));
      this.bYM = k.d(paramJSONObject.optJSONObject("group"));
      int i;
      if (paramJSONObject.optBoolean("author_is_followed", false))
      {
        i = 1;
        if (!paramJSONObject.optBoolean("is_explicit", false)) {
          break label269;
        }
      }
      label269:
      for (int j = 2;; j = 0)
      {
        if (com.vent.d.b.b(paramJSONObject, "comment_setting", "comments_enabled").equals("comments_enabled")) {
          k = 4;
        }
        this.flags = (k | j | i | paramJSONObject.optInt("author_role", 0) << 24);
        return;
        i = 0;
        break;
      }
      return;
    }
    catch (Exception paramJSONObject)
    {
      paramJSONObject.printStackTrace();
    }
  }
  
  public static z Fn()
  {
    z localz = new z();
    localz.bp(true);
    if (bb.ceP != null) {
      localz.clc = bb.ceP.ckW;
    }
    return localz;
  }
  
  private int a(z paramz)
  {
    long l = this.cjA.getTime() - paramz.cjA.getTime();
    if (l < 0L) {
      return -1;
    }
    if (l > 0L) {
      return 1;
    }
    return super.a(paramz);
  }
  
  public static String eN(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return "privacy_public";
    case 1: 
      return "privacy_personal";
    }
    return "privacy_mutuals";
  }
  
  public static int eO(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return 2131689708;
    case 1: 
      return 2131689703;
    }
    return 2131689662;
  }
  
  public static int ei(String paramString)
  {
    if (paramString == null) {
      return 0;
    }
    int i = -1;
    switch (paramString.hashCode())
    {
    }
    for (;;)
    {
      switch (i)
      {
      default: 
        return 0;
      case 2: 
        return 1;
        if (paramString.equals("privacy_public"))
        {
          i = 1;
          continue;
          if (paramString.equals("privacy_personal"))
          {
            i = 2;
            continue;
            if (paramString.equals("privacy_mutuals")) {
              i = 3;
            }
          }
        }
        break;
      }
    }
    return 2;
  }
  
  public final boolean Fl()
  {
    return (this.flags & 0x4) != 0;
  }
  
  public final boolean Fm()
  {
    if ((this.flags & 0x2) != 0) {}
    for (int i = 1; (i != 0) && ((bb.ceP == null) || ((bb.ceP.ckU != 2) && (!bb.c(this.bXE)))); i = 0) {
      return true;
    }
    return false;
  }
  
  public final void a(m paramm, int paramInt)
  {
    if (this.cla == null) {
      this.cla = new HashMap(1);
    }
    Object localObject = (Integer)this.cla.get(paramm);
    HashMap localHashMap = this.cla;
    if (localObject == null) {}
    for (int i = 0;; i = ((Integer)localObject).intValue())
    {
      localHashMap.put(paramm, Integer.valueOf(Math.max(0, i + paramInt)));
      if (this.ckZ == null) {
        this.ckZ = new ArrayList(1);
      }
      localObject = n.a(this.ckZ, paramm);
      if (localObject != null) {
        break;
      }
      if (paramInt > 0) {
        this.ckZ.add(new n(paramm, paramInt));
      }
      return;
    }
    ((n)localObject).count += paramInt;
  }
  
  public final void bp(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.flags |= 0x4;
      return;
    }
    this.flags &= 0xFFFFFFFB;
  }
  
  public final boolean f(m paramm)
  {
    paramm = (Integer)this.cla.get(paramm);
    return (paramm != null) && (paramm.intValue() > 0);
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
    d.a(paramParcel, this.cjA);
    m.a(this.ckX, paramParcel, paramInt);
    paramParcel.writeString(this.body);
    a.a(this.bXE, paramParcel, paramInt);
    paramParcel.writeString(this.ckY);
    d.a(paramParcel, paramInt, this.cjC);
    paramParcel.writeTypedList(this.ckZ);
    d.b(paramParcel, paramInt, this.cla);
    d.c(paramParcel, paramInt, this.cjE);
    paramParcel.writeInt(this.clb);
    paramParcel.writeInt(this.flags);
    paramParcel.writeInt(this.clc);
    paramParcel.writeParcelable(this.bYM, paramInt);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/a/z.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */