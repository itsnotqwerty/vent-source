package com.vent.a;

import android.os.Parcel;
import com.vent.d.b;
import com.vent.d.c;
import com.vent.d.d;
import com.vent.d.e;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import org.json.JSONObject;

public class l
  extends k
{
  public HashSet<m> ceB;
  public HashMap<String, r> cjE;
  public String ckm;
  public Map<m, x> ckn;
  
  public l() {}
  
  public l(JSONObject paramJSONObject)
  {
    this(paramJSONObject, true);
  }
  
  public l(JSONObject paramJSONObject, boolean paramBoolean)
  {
    super(paramJSONObject, paramBoolean);
    if (paramBoolean) {}
    try
    {
      this.flags |= 0x1;
      this.ceB = m.a(paramJSONObject.optJSONArray("interest_ids"));
      if (c.i(this.ceB)) {
        this.ceB = null;
      }
      this.ckm = e.ex(b.d(paramJSONObject, "bio"));
      this.ckn = b.a(x.class, paramJSONObject.optJSONArray("mentioned_users"), false);
      if (c.l(this.ckn)) {
        this.ckn = null;
      }
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
  
  final void c(k paramk)
  {
    Object localObject = null;
    super.c(paramk);
    l locall;
    if ((paramk instanceof l))
    {
      this.flags = paramk.flags;
      locall = (l)paramk;
      this.ckm = locall.ckm;
      if (locall.ckn != null) {
        break label78;
      }
      paramk = null;
      this.ckn = paramk;
      if (locall.cjE != null) {
        break label93;
      }
      paramk = null;
      label58:
      this.cjE = paramk;
      if (locall.ceB != null) {
        break label108;
      }
    }
    label78:
    label93:
    label108:
    for (paramk = (k)localObject;; paramk = new HashSet(locall.ceB))
    {
      this.ceB = paramk;
      return;
      paramk = new HashMap(locall.ckn);
      break;
      paramk = new HashMap(locall.cjE);
      break label58;
    }
  }
  
  final void d(Parcel paramParcel)
    throws Exception
  {
    super.d(paramParcel);
    if ((this.flags & 0x1) != 0)
    {
      this.ckm = paramParcel.readString();
      this.ckn = d.c(paramParcel, x.CREATOR);
      this.cjE = d.d(paramParcel, r.CREATOR);
      this.ceB = d.h(paramParcel);
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    if ((this.flags & 0x1) != 0)
    {
      paramParcel.writeString(this.ckm);
      d.a(paramParcel, paramInt, this.ckn);
      d.c(paramParcel, paramInt, this.cjE);
      d.a(paramParcel, paramInt, this.ceB);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/a/l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */