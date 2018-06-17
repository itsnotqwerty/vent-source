package com.vent.a;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;

public final class m
  implements Parcelable, Comparable<m>
{
  public static final Parcelable.Creator<m> CREATOR = new Parcelable.Creator() {};
  private static final int[] cko = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 0, 0, 0, 0, 0, 0, 0, 10, 11, 12, 13, 14, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 11, 12, 13, 14, 15 };
  private static final char[] ckp = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };
  private int ckq;
  private int ckr;
  private int cks;
  private int ckt;
  
  public m()
  {
    this.ckq = 0;
    this.ckr = 0;
    this.cks = 0;
    this.ckt = 0;
  }
  
  public m(Parcel paramParcel)
  {
    this.ckq = paramParcel.readInt();
    this.ckr = paramParcel.readInt();
    this.cks = paramParcel.readInt();
    this.ckt = paramParcel.readInt();
  }
  
  public m(CharSequence paramCharSequence)
  {
    try
    {
      this.ckq = (cko[paramCharSequence.charAt(0)] | cko[paramCharSequence.charAt(1)] << 4 | cko[paramCharSequence.charAt(2)] << 8 | cko[paramCharSequence.charAt(3)] << 12 | cko[paramCharSequence.charAt(4)] << 16 | cko[paramCharSequence.charAt(5)] << 20 | cko[paramCharSequence.charAt(6)] << 24 | cko[paramCharSequence.charAt(7)] << 28);
      this.ckr = (cko[paramCharSequence.charAt(9)] | cko[paramCharSequence.charAt(10)] << 4 | cko[paramCharSequence.charAt(11)] << 8 | cko[paramCharSequence.charAt(12)] << 12 | cko[paramCharSequence.charAt(14)] << 16 | cko[paramCharSequence.charAt(15)] << 20 | cko[paramCharSequence.charAt(16)] << 24 | cko[paramCharSequence.charAt(17)] << 28);
      this.cks = (cko[paramCharSequence.charAt(19)] | cko[paramCharSequence.charAt(20)] << 4 | cko[paramCharSequence.charAt(21)] << 8 | cko[paramCharSequence.charAt(22)] << 12 | cko[paramCharSequence.charAt(24)] << 16 | cko[paramCharSequence.charAt(25)] << 20 | cko[paramCharSequence.charAt(26)] << 24 | cko[paramCharSequence.charAt(27)] << 28);
      this.ckt = (cko[paramCharSequence.charAt(28)] | cko[paramCharSequence.charAt(29)] << 4 | cko[paramCharSequence.charAt(30)] << 8 | cko[paramCharSequence.charAt(31)] << 12 | cko[paramCharSequence.charAt(32)] << 16 | cko[paramCharSequence.charAt(33)] << 20 | cko[paramCharSequence.charAt(34)] << 24 | cko[paramCharSequence.charAt(35)] << 28);
      return;
    }
    catch (Exception paramCharSequence)
    {
      this.ckq = 0;
      this.ckr = 0;
      this.cks = 0;
      this.ckt = 0;
    }
  }
  
  public static int a(m paramm1, m paramm2)
  {
    if (paramm1 == null)
    {
      if (paramm2 == null) {
        return 0;
      }
      return -1;
    }
    if (paramm2 == null) {
      return 1;
    }
    return paramm1.hashCode() - paramm2.hashCode();
  }
  
  public static HashSet<m> a(JSONArray paramJSONArray)
    throws JSONException
  {
    Object localObject;
    if (paramJSONArray == null)
    {
      localObject = null;
      return (HashSet<m>)localObject;
    }
    int j = paramJSONArray.length();
    HashSet localHashSet = new HashSet(j);
    int i = 0;
    for (;;)
    {
      localObject = localHashSet;
      if (i >= j) {
        break;
      }
      localHashSet.add(new m(paramJSONArray.getString(i)));
      i += 1;
    }
  }
  
  static void a(m paramm, Parcel paramParcel, int paramInt)
  {
    if (paramm != null)
    {
      paramParcel.writeInt(1);
      paramm.writeToParcel(paramParcel, paramInt);
      return;
    }
    paramParcel.writeInt(0);
  }
  
  public static boolean b(m paramm1, m paramm2)
  {
    return (paramm1 == paramm2) || ((paramm1 != null) && (paramm2 != null) && (paramm1.ckq == paramm2.ckq) && (paramm1.ckr == paramm2.ckr) && (paramm1.cks == paramm2.cks) && (paramm1.ckt == paramm2.ckt));
  }
  
  public static boolean c(m paramm)
  {
    return (paramm == null) || ((paramm.ckq == 0) && (paramm.ckr == 0) && (paramm.cks == 0) && (paramm.ckt == 0));
  }
  
  static m f(Parcel paramParcel)
  {
    if (paramParcel.readInt() == 0) {
      return null;
    }
    return new m(paramParcel);
  }
  
  public static JSONArray h(Set<m> paramSet)
  {
    if (paramSet == null) {
      return null;
    }
    JSONArray localJSONArray = new JSONArray();
    paramSet = paramSet.iterator();
    while (paramSet.hasNext()) {
      localJSONArray.put(((m)paramSet.next()).toString());
    }
    return localJSONArray;
  }
  
  public static m r(CharSequence paramCharSequence)
  {
    if (TextUtils.isEmpty(paramCharSequence)) {
      return null;
    }
    return new m(paramCharSequence);
  }
  
  public final boolean b(m paramm)
  {
    return (this == paramm) || ((paramm != null) && (this.ckq == paramm.ckq) && (this.ckr == paramm.ckr) && (this.cks == paramm.cks) && (this.ckt == paramm.ckt));
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      do
      {
        return true;
        if (!(paramObject instanceof m)) {
          break;
        }
        paramObject = (m)paramObject;
      } while ((this.ckq == ((m)paramObject).ckq) && (this.ckr == ((m)paramObject).ckr) && (this.cks == ((m)paramObject).cks) && (this.ckt == ((m)paramObject).ckt));
      return false;
    } while (((paramObject instanceof String)) && (b(new m((String)paramObject))));
    return false;
  }
  
  public final int hashCode()
  {
    return this.ckq + this.ckr + this.cks + this.ckt;
  }
  
  public final String toString()
  {
    return String.valueOf(new char[] { ckp[(this.ckq & 0xF)], ckp[(this.ckq >> 4 & 0xF)], ckp[(this.ckq >> 8 & 0xF)], ckp[(this.ckq >> 12 & 0xF)], ckp[(this.ckq >> 16 & 0xF)], ckp[(this.ckq >> 20 & 0xF)], ckp[(this.ckq >> 24 & 0xF)], ckp[(this.ckq >> 28 & 0xF)], '-', ckp[(this.ckr & 0xF)], ckp[(this.ckr >> 4 & 0xF)], ckp[(this.ckr >> 8 & 0xF)], ckp[(this.ckr >> 12 & 0xF)], '-', ckp[(this.ckr >> 16 & 0xF)], ckp[(this.ckr >> 20 & 0xF)], ckp[(this.ckr >> 24 & 0xF)], ckp[(this.ckr >> 28 & 0xF)], '-', ckp[(this.cks & 0xF)], ckp[(this.cks >> 4 & 0xF)], ckp[(this.cks >> 8 & 0xF)], ckp[(this.cks >> 12 & 0xF)], '-', ckp[(this.cks >> 16 & 0xF)], ckp[(this.cks >> 20 & 0xF)], ckp[(this.cks >> 24 & 0xF)], ckp[(this.cks >> 28 & 0xF)], ckp[(this.ckt & 0xF)], ckp[(this.ckt >> 4 & 0xF)], ckp[(this.ckt >> 8 & 0xF)], ckp[(this.ckt >> 12 & 0xF)], ckp[(this.ckt >> 16 & 0xF)], ckp[(this.ckt >> 20 & 0xF)], ckp[(this.ckt >> 24 & 0xF)], ckp[(this.ckt >> 28 & 0xF)] });
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.ckq);
    paramParcel.writeInt(this.ckr);
    paramParcel.writeInt(this.cks);
    paramParcel.writeInt(this.ckt);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/a/m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */