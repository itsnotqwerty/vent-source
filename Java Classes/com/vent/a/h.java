package com.vent.a;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.vent.MyApplication;
import com.vent.bb;
import com.vent.d.e;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

public final class h
  extends b<h>
{
  public static final Parcelable.Creator<h> CREATOR = new a.a(h.class);
  private static double ckc;
  private static float ckd;
  private static double cke;
  private static float ckf;
  public String cjP;
  public List<m> cjT;
  private int cjU;
  private int cjV;
  private int cjW;
  private int cjX;
  private int cjY;
  public String cjZ;
  public String cka;
  public String ckb;
  private int color;
  public String description;
  public int flags;
  private int position;
  
  public h() {}
  
  public h(Parcel paramParcel)
  {
    super(paramParcel);
    this.cjP = paramParcel.readString();
    this.cjT = paramParcel.createTypedArrayList(m.CREATOR);
    this.color = paramParcel.readInt();
    this.cjU = paramParcel.readInt();
    this.cjV = paramParcel.readInt();
    this.cjW = paramParcel.readInt();
    this.cjX = paramParcel.readInt();
    this.cjY = paramParcel.readInt();
    this.position = paramParcel.readInt();
    this.flags = paramParcel.readInt();
    this.cjZ = paramParcel.readString();
    this.cka = paramParcel.readString();
    this.description = paramParcel.readString();
    this.ckb = paramParcel.readString();
  }
  
  public h(JSONObject paramJSONObject)
  {
    super(paramJSONObject);
    try
    {
      this.cjP = com.vent.d.b.d(paramJSONObject, "name");
      this.color = com.vent.d.b.g(paramJSONObject, "color");
      this.cjU = com.vent.d.b.g(paramJSONObject, "font_color");
      this.cjV = com.vent.d.b.g(paramJSONObject, "auxiliary_color");
      this.cjW = com.vent.d.b.g(paramJSONObject, "night_color");
      this.cjX = com.vent.d.b.g(paramJSONObject, "night_font_color");
      this.cjY = com.vent.d.b.g(paramJSONObject, "night_auxiliary_color");
      if (this.color == 0) {
        this.color = -8355712;
      }
      if (this.cjU == 0) {
        this.cjU = -1;
      }
      if (this.cjW == 0) {
        this.cjW = this.color;
      }
      if (this.cjX == 0) {
        this.cjX = this.cjU;
      }
      int i;
      int m;
      double d;
      float[] arrayOfFloat;
      if (this.cjY == 0)
      {
        if (this.cjV != 0)
        {
          i = this.cjV;
          this.cjY = i;
        }
      }
      else
      {
        if (this.cjV == 0) {
          this.cjV = this.color;
        }
        if (bb.ciz)
        {
          m = this.cjW;
          d = android.support.v4.a.a.af(m) + 0.05D;
          arrayOfFloat = new float[3];
          android.support.v4.a.a.a(m >> 16 & 0xFF, m >> 8 & 0xFF, m & 0xFF, arrayOfFloat);
          i = m;
          if (d > ckc)
          {
            d = Math.max(ckc, d) / Math.min(ckc, d);
            if (d <= 10.0D) {
              break label562;
            }
            arrayOfFloat[2] = g(arrayOfFloat[2], ckd, 0.25F);
            i = android.support.v4.a.a.a(arrayOfFloat);
          }
          label292:
          this.cjW = i;
          m = this.cjY;
          d = android.support.v4.a.a.af(m) + 0.05D;
          arrayOfFloat = new float[3];
          android.support.v4.a.a.a(m >> 16 & 0xFF, m >> 8 & 0xFF, m & 0xFF, arrayOfFloat);
          i = m;
          if (d > ckc)
          {
            d = Math.max(ckc, d) / Math.min(ckc, d);
            if (d <= 10.0D) {
              break label668;
            }
            arrayOfFloat[2] = g(arrayOfFloat[2], ckd, 0.15F);
            i = android.support.v4.a.a.a(arrayOfFloat);
          }
          label407:
          this.cjY = i;
        }
        this.cjT = com.vent.d.b.a(paramJSONObject, "emotion_ids");
        this.position = paramJSONObject.optInt("position", 0);
        this.cjZ = com.vent.d.b.d(paramJSONObject, "android_sku");
        this.cka = com.vent.d.b.d(paramJSONObject, "android_gift_sku");
        this.ckb = com.vent.d.b.d(paramJSONObject, "picture");
        this.description = com.vent.d.b.d(paramJSONObject, "description");
        if (TextUtils.isEmpty(this.cjZ)) {
          this.cjZ = null;
        }
        if (TextUtils.isEmpty(this.cka)) {
          this.cka = null;
        }
        if (!paramJSONObject.optBoolean("visible", false)) {
          break label774;
        }
        i = 1;
        label517:
        if (!paramJSONObject.optBoolean("purchasable", false)) {
          break label780;
        }
      }
      for (;;)
      {
        if (paramJSONObject.optBoolean("purchasable_in_store", false)) {
          k = 4;
        }
        this.flags = (k | j | i);
        return;
        i = this.cjW;
        break;
        label562:
        if (d > 8.0D)
        {
          arrayOfFloat[2] = g(arrayOfFloat[2], ckd, 0.15F);
          i = android.support.v4.a.a.a(arrayOfFloat);
          break label292;
        }
        if (d < 2.5D)
        {
          arrayOfFloat[2] = g(arrayOfFloat[2], ckf, 0.15F);
          i = android.support.v4.a.a.a(arrayOfFloat);
          break label292;
        }
        i = m;
        if (d >= 4.0D) {
          break label292;
        }
        arrayOfFloat[2] = g(arrayOfFloat[2], ckf, 0.1F);
        i = android.support.v4.a.a.a(arrayOfFloat);
        break label292;
        label668:
        if (d > 8.0D)
        {
          arrayOfFloat[2] = g(arrayOfFloat[2], ckd, 0.1F);
          i = android.support.v4.a.a.a(arrayOfFloat);
          break label407;
        }
        if (d < 2.5D)
        {
          arrayOfFloat[2] = g(arrayOfFloat[2], ckf, 0.3F);
          i = android.support.v4.a.a.a(arrayOfFloat);
          break label407;
        }
        i = m;
        if (d >= 4.0D) {
          break label407;
        }
        arrayOfFloat[2] = g(arrayOfFloat[2], ckf, 0.2F);
        i = android.support.v4.a.a.a(arrayOfFloat);
        break label407;
        label774:
        i = 0;
        break label517;
        label780:
        j = 0;
      }
      return;
    }
    catch (Exception paramJSONObject)
    {
      paramJSONObject.printStackTrace();
    }
  }
  
  public static h a(Map<m, h> paramMap, m paramm)
  {
    if (paramMap == null) {
      return null;
    }
    return (h)paramMap.get(paramm);
  }
  
  public static int b(boolean paramBoolean, int paramInt)
  {
    int i = paramInt;
    float[] arrayOfFloat;
    if (paramBoolean)
    {
      double d = android.support.v4.a.a.af(paramInt) + 0.05D;
      i = paramInt;
      if (Math.max(ckc, d) / Math.min(ckc, d) < 2.35D)
      {
        arrayOfFloat = new float[3];
        android.support.v4.a.a.a(paramInt >> 16 & 0xFF, paramInt >> 8 & 0xFF, paramInt & 0xFF, arrayOfFloat);
        if (d >= ckc) {
          break label149;
        }
        arrayOfFloat[2] = Math.max(0.0F, ckd - 0.25F);
        d = android.support.v4.a.a.af(android.support.v4.a.a.a(arrayOfFloat)) + 0.05D;
        if (Math.max(ckc, d) / Math.min(ckc, d) < 2.35D) {
          arrayOfFloat[2] = (ckd + 0.25F);
        }
      }
    }
    for (;;)
    {
      i = android.support.v4.a.a.a(arrayOfFloat);
      return i;
      label149:
      arrayOfFloat[2] = (ckd + 0.25F);
    }
  }
  
  private static float g(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    return (1.0F - paramFloat3) * paramFloat1 + paramFloat2 * paramFloat3;
  }
  
  public static void init()
  {
    float[] arrayOfFloat = new float[3];
    ckc = android.support.v4.a.a.af(MyApplication.cgH) + 0.05D;
    android.support.v4.a.a.a(MyApplication.cgH >> 16 & 0xFF, MyApplication.cgH >> 8 & 0xFF, MyApplication.cgH & 0xFF, arrayOfFloat);
    ckd = arrayOfFloat[2];
    cke = android.support.v4.a.a.af(-1) + 0.05D;
    android.support.v4.a.a.a(255, 255, 255, arrayOfFloat);
    ckf = arrayOfFloat[2];
  }
  
  public final JSONObject EK()
    throws JSONException
  {
    int j = 0;
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("id", this.cjy);
    localJSONObject.put("name", this.cjP);
    localJSONObject.put("color", e.eT(this.color));
    if ((this.cjU != 0) && (this.cjU != -1)) {
      localJSONObject.put("font_color", e.eT(this.cjU));
    }
    localJSONObject.put("auxiliary_color", e.eT(this.cjV));
    localJSONObject.put("night_color", e.eT(this.cjW));
    localJSONObject.put("night_font_color", e.eT(this.cjX));
    localJSONObject.put("night_auxiliary_color", e.eT(this.cjY));
    com.vent.d.b.a(localJSONObject, "emotion_ids", this.cjT);
    localJSONObject.put("position", this.position);
    if ((this.flags & 0x1) != 0)
    {
      i = 1;
      if (i != 0) {
        localJSONObject.put("visible", true);
      }
      if ((this.flags & 0x2) == 0) {
        break label314;
      }
    }
    label314:
    for (int i = 1;; i = 0)
    {
      if (i != 0) {
        localJSONObject.put("purchasable", true);
      }
      i = j;
      if ((this.flags & 0x4) != 0) {
        i = 1;
      }
      if (i != 0) {
        localJSONObject.put("purchasable_in_store", true);
      }
      if (!TextUtils.isEmpty(this.cjZ)) {
        localJSONObject.put("android_sku", this.cjZ);
      }
      if (!TextUtils.isEmpty(this.cka)) {
        localJSONObject.put("android_gift_sku", this.cka);
      }
      if (!TextUtils.isEmpty(this.ckb)) {
        localJSONObject.put("picture", this.ckb);
      }
      if (!TextUtils.isEmpty(this.description)) {
        localJSONObject.put("description", this.description);
      }
      return localJSONObject;
      i = 0;
      break;
    }
  }
  
  public final boolean ER()
  {
    return (this.flags & 0x1) != 0;
  }
  
  public final boolean ES()
  {
    return ((this.flags & 0x2) != 0) && (this.cjZ != null);
  }
  
  public final boolean ET()
  {
    return ((this.flags & 0x4) != 0) && (this.cjZ != null);
  }
  
  public final boolean EU()
  {
    return ((this.cjZ != null) && ((com.vent.b.a.cle) || (com.vent.b.a.clh.containsKey(this.cjZ)))) || (bb.ciD.contains(this.cjy));
  }
  
  public final boolean EV()
  {
    return ((this.flags & 0x1) == 0) && (!EU());
  }
  
  public final boolean EW()
  {
    return ((this.flags & 0x1) == 0) && ((EU()) || (ET()));
  }
  
  public final int bB(Context paramContext)
  {
    return bm(MyApplication.br(paramContext));
  }
  
  public final int bC(Context paramContext)
  {
    return bo(MyApplication.br(paramContext));
  }
  
  public final int bm(boolean paramBoolean)
  {
    if (paramBoolean) {
      return this.cjW;
    }
    return this.color;
  }
  
  public final int bn(boolean paramBoolean)
  {
    if (paramBoolean) {
      return this.cjY;
    }
    return this.cjV;
  }
  
  public final int bo(boolean paramBoolean)
  {
    if (paramBoolean) {
      return this.cjX;
    }
    return this.cjU;
  }
  
  public final int d(h paramh)
  {
    int i = this.position - paramh.position;
    if (i != 0) {}
    int j;
    do
    {
      return i;
      j = this.cjP.compareToIgnoreCase(paramh.cjP);
      i = j;
    } while (j != 0);
    return super.a(paramh);
  }
  
  public final String toString()
  {
    if (this.cjP == null) {
      return super.toString();
    }
    return e.s(this.cjP).toString();
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeString(this.cjP);
    paramParcel.writeTypedList(this.cjT);
    paramParcel.writeInt(this.color);
    paramParcel.writeInt(this.cjU);
    paramParcel.writeInt(this.cjV);
    paramParcel.writeInt(this.cjW);
    paramParcel.writeInt(this.cjX);
    paramParcel.writeInt(this.cjY);
    paramParcel.writeInt(this.position);
    paramParcel.writeInt(this.flags);
    paramParcel.writeString(this.cjZ);
    paramParcel.writeString(this.cka);
    paramParcel.writeString(this.description);
    paramParcel.writeString(this.ckb);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/a/h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */