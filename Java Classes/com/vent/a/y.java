package com.vent.a;

import android.os.Parcel;
import android.text.TextUtils;
import com.vent.bb;
import com.vent.d.b;
import com.vent.d.c;
import com.vent.d.d;
import com.vent.d.e;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class y
  extends x
{
  public HashSet<m> ceB;
  public Date cjA;
  public Date cjB;
  public HashMap<String, r> cjE;
  public String ckQ;
  public Date ckR;
  public m ckS;
  public int ckT;
  public int ckU;
  public int ckV;
  public int ckW;
  public int ckj;
  public int ckk;
  public String ckm;
  public Map<m, x> ckn;
  
  public y() {}
  
  public y(x paramx)
  {
    super(paramx);
  }
  
  public y(JSONObject paramJSONObject)
  {
    this(paramJSONObject, true, (byte)0);
  }
  
  public y(JSONObject paramJSONObject, boolean paramBoolean)
  {
    this(paramJSONObject, paramBoolean, (byte)0);
  }
  
  private y(JSONObject paramJSONObject, boolean paramBoolean, byte paramByte)
  {
    super(paramJSONObject, paramBoolean);
    if (paramBoolean) {}
    for (;;)
    {
      try
      {
        this.flags |= 0x1;
        this.ckR = b.e(paramJSONObject, "first_vented_at");
        this.cjA = b.e(paramJSONObject, "created_at");
        this.cjB = b.e(paramJSONObject, "updated_at");
        int k = this.flags;
        if (!paramJSONObject.optBoolean("confirmed_email", false)) {
          break label541;
        }
        paramByte = 256;
        if (!paramJSONObject.optBoolean("messages_enabled", false)) {
          break label546;
        }
        b1 = 1024;
        if (!paramJSONObject.optBoolean("typing_indicators_enabled", false)) {
          break label552;
        }
        i = 2048;
        if (!paramJSONObject.optBoolean("read_receipts_enabled", false)) {
          break label558;
        }
        j = 4096;
        this.flags = (j | paramByte | b1 | i | k);
        str = b.b(paramJSONObject, "nsfw_setting", "collapse");
        paramByte = -1;
        switch (str.hashCode())
        {
        case 3529469: 
          this.ckU = 3;
          b1 = this.flags;
          if (!paramJSONObject.optBoolean("has_private_bio", false)) {
            break label504;
          }
          paramByte = 8192;
          this.flags = (paramByte | b1);
          if (bb.ceP == null) {
            break label535;
          }
          paramByte = b2;
          if (bb.a(this.cjy)) {
            break label535;
          }
          if ((paramByte != 0) || (Fb()))
          {
            this.ckm = e.ex(b.d(paramJSONObject, "bio"));
            this.ckn = b.a(x.class, paramJSONObject.optJSONArray("mentioned_users"), false);
            this.cjE = r.b(paramJSONObject.optJSONArray("links"));
          }
          if ((paramByte != 0) || (Fa()))
          {
            this.ckS = b.f(paramJSONObject, "invite_tier_id");
            this.ckk = paramJSONObject.optInt("vent_count", 0);
            this.ckT = paramJSONObject.optInt("listening_count", 0);
            this.ckj = paramJSONObject.optInt("listener_count", 0);
          }
          this.ceB = m.a(paramJSONObject.optJSONArray("interests"));
          if (c.i(this.ceB)) {
            this.ceB = null;
          }
          this.ckV = paramJSONObject.optInt("yob", 0);
          this.ckQ = b.d(paramJSONObject, "suggestion_reason");
          if (paramByte == 0) {
            break label540;
          }
          paramJSONObject = paramJSONObject.optJSONObject("last_vented_to");
          if (paramJSONObject == null) {
            break label540;
          }
          paramJSONObject = b.d(paramJSONObject, "privacy_setting");
          if (TextUtils.isEmpty(paramJSONObject)) {
            break label540;
          }
          this.ckW = z.ei(paramJSONObject);
          return;
        }
      }
      catch (Exception paramJSONObject)
      {
        String str;
        paramJSONObject.printStackTrace();
        return;
      }
      if (str.equals("show"))
      {
        paramByte = 0;
        break label509;
        if (str.equals("hide"))
        {
          paramByte = 1;
          break label509;
          if (str.equals("collapse"))
          {
            paramByte = 3;
            break label509;
            this.ckU = 2;
            continue;
            this.ckU = 1;
            continue;
            label504:
            paramByte = 0;
            continue;
          }
        }
      }
      label509:
      switch (paramByte)
      {
      }
      continue;
      label535:
      paramByte = 1;
      continue;
      label540:
      return;
      label541:
      paramByte = 0;
      continue;
      label546:
      byte b1 = 0;
      continue;
      label552:
      int i = 0;
      continue;
      label558:
      int j = 0;
    }
  }
  
  public final JSONObject EK()
    throws JSONException
  {
    boolean bool2 = true;
    localJSONObject1 = super.EK();
    try
    {
      if (Fd())
      {
        if ((this.flags & 0x2000) == 0) {
          break label393;
        }
        bool1 = true;
        localJSONObject1.put("has_private_bio", bool1);
        if ((this.flags & 0x400) == 0) {
          break label398;
        }
        bool1 = true;
        label48:
        localJSONObject1.put("messages_enabled", bool1);
        if ((this.flags & 0x800) == 0) {
          break label403;
        }
        bool1 = true;
        label69:
        localJSONObject1.put("typing_indicators_enabled", bool1);
        if ((this.flags & 0x1000) == 0) {
          break label408;
        }
        bool1 = true;
        label90:
        localJSONObject1.put("read_receipts_enabled", bool1);
        if ((this.flags & 0x100) == 0) {
          break label413;
        }
      }
      label393:
      label398:
      label403:
      label408:
      label413:
      for (boolean bool1 = bool2;; bool1 = false)
      {
        localJSONObject1.put("confirmed_email", bool1);
        localJSONObject1.put("created_at", c.k(this.cjA));
        localJSONObject1.put("updated_at", c.k(this.cjB));
        localJSONObject1.put("first_vented_at", c.k(this.ckR));
        localJSONObject1.put("vent_count", this.ckk);
        localJSONObject1.put("listening_count", this.ckT);
        localJSONObject1.put("listener_count", this.ckj);
        if (!TextUtils.isEmpty(this.ckm)) {
          localJSONObject1.put("bio", this.ckm);
        }
        if (!c.l(this.ckn)) {
          localJSONObject1.put("mentioned_users", b.k(this.ckn));
        }
        if (!c.l(this.cjE)) {
          localJSONObject1.put("links", b.k(this.cjE));
        }
        if (!TextUtils.isEmpty(this.ckQ)) {
          localJSONObject1.put("suggestion_reason", this.ckQ);
        }
        if (this.ckS != null) {
          localJSONObject1.put("invite_tier_id", this.ckS);
        }
        localJSONObject1.put("nsfw_setting", eM(this.ckU));
        if (this.ckV > 0) {
          localJSONObject1.put("yob", this.ckV);
        }
        JSONObject localJSONObject2 = new JSONObject();
        localJSONObject2.put("privacy_setting", z.eN(this.ckW));
        localJSONObject1.put("last_vented_to", localJSONObject2);
        if (!c.i(this.ceB)) {
          localJSONObject1.put("interests", m.h(this.ceB));
        }
        return localJSONObject1;
        bool1 = false;
        break;
        bool1 = false;
        break label48;
        bool1 = false;
        break label69;
        bool1 = false;
        break label90;
      }
      return localJSONObject1;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
  }
  
  final void d(Parcel paramParcel)
    throws Exception
  {
    super.d(paramParcel);
    if ((this.flags & 0x1) != 0)
    {
      this.ckR = d.i(paramParcel);
      this.cjA = d.i(paramParcel);
      this.cjB = d.i(paramParcel);
      this.ckU = paramParcel.readInt();
      this.ckm = paramParcel.readString();
      this.ckn = d.c(paramParcel, x.CREATOR);
      this.cjE = d.d(paramParcel, r.CREATOR);
      this.ckS = m.f(paramParcel);
      this.ckk = paramParcel.readInt();
      this.ckT = paramParcel.readInt();
      this.ckj = paramParcel.readInt();
      this.ckV = paramParcel.readInt();
      this.ckQ = paramParcel.readString();
      this.ckW = paramParcel.readInt();
      this.ceB = d.h(paramParcel);
    }
  }
  
  final void d(x paramx)
  {
    Object localObject = null;
    super.d(paramx);
    y localy;
    if ((paramx instanceof y))
    {
      this.flags = paramx.flags;
      localy = (y)paramx;
      this.ckQ = localy.ckQ;
      this.ckR = localy.ckR;
      this.cjA = localy.cjA;
      this.cjB = localy.cjB;
      this.ckm = localy.ckm;
      if (localy.ckn != null) {
        break label174;
      }
      paramx = null;
      this.ckn = paramx;
      if (localy.cjE != null) {
        break label189;
      }
      paramx = null;
      label90:
      this.cjE = paramx;
      this.ckS = localy.ckS;
      this.ckk = localy.ckk;
      this.ckT = localy.ckT;
      this.ckj = localy.ckj;
      this.ckU = localy.ckU;
      this.ckV = localy.ckV;
      this.ckU = localy.ckU;
      this.ckP = localy.ckP;
      if (localy.ceB != null) {
        break label204;
      }
    }
    label174:
    label189:
    label204:
    for (paramx = (x)localObject;; paramx = new HashSet(localy.ceB))
    {
      this.ceB = paramx;
      return;
      paramx = new HashMap(localy.ckn);
      break;
      paramx = new HashMap(localy.cjE);
      break label90;
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    if ((this.flags & 0x1) != 0)
    {
      d.a(paramParcel, this.ckR);
      d.a(paramParcel, this.cjA);
      d.a(paramParcel, this.cjB);
      paramParcel.writeInt(this.ckU);
      paramParcel.writeString(this.ckm);
      d.a(paramParcel, paramInt, this.ckn);
      d.c(paramParcel, paramInt, this.cjE);
      m.a(this.ckS, paramParcel, paramInt);
      paramParcel.writeInt(this.ckk);
      paramParcel.writeInt(this.ckT);
      paramParcel.writeInt(this.ckj);
      paramParcel.writeInt(this.ckV);
      paramParcel.writeString(this.ckQ);
      paramParcel.writeInt(this.ckW);
      d.a(paramParcel, paramInt, this.ceB);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/a/y.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */