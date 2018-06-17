package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.google.android.gms.internal.du;
import java.util.List;

public final class WakeLockEvent
  extends StatsEvent
{
  public static final Parcelable.Creator<WakeLockEvent> CREATOR = new d();
  private final long Ab;
  private int aCi;
  private final long aIM;
  private int aIN;
  private final String aIO;
  private final String aIP;
  private final String aIQ;
  private final int aIR;
  private final List<String> aIS;
  private final String aIT;
  private final long aIU;
  private int aIV;
  private final String aIW;
  private final float aIX;
  private long aIY;
  
  WakeLockEvent(int paramInt1, long paramLong1, int paramInt2, String paramString1, int paramInt3, List<String> paramList, String paramString2, long paramLong2, int paramInt4, String paramString3, String paramString4, float paramFloat, long paramLong3, String paramString5)
  {
    this.aCi = paramInt1;
    this.aIM = paramLong1;
    this.aIN = paramInt2;
    this.aIO = paramString1;
    this.aIP = paramString3;
    this.aIQ = paramString5;
    this.aIR = paramInt3;
    this.aIY = -1L;
    this.aIS = paramList;
    this.aIT = paramString2;
    this.aIU = paramLong2;
    this.aIV = paramInt4;
    this.aIW = paramString4;
    this.aIX = paramFloat;
    this.Ab = paramLong3;
  }
  
  public WakeLockEvent(long paramLong1, int paramInt1, String paramString1, int paramInt2, List<String> paramList, String paramString2, long paramLong2, int paramInt3, String paramString3, String paramString4, float paramFloat, long paramLong3)
  {
    this(2, paramLong1, paramInt1, paramString1, paramInt2, paramList, paramString2, paramLong2, paramInt3, paramString3, paramString4, paramFloat, paramLong3, null);
  }
  
  public final int getEventType()
  {
    return this.aIN;
  }
  
  public final long getTimeMillis()
  {
    return this.aIM;
  }
  
  public final long ox()
  {
    return this.aIY;
  }
  
  public final String oy()
  {
    String str5 = this.aIO;
    int i = this.aIR;
    String str1;
    int j;
    String str2;
    label38:
    String str3;
    label49:
    float f;
    if (this.aIS == null)
    {
      str1 = "";
      j = this.aIV;
      if (this.aIP != null) {
        break label214;
      }
      str2 = "";
      if (this.aIW != null) {
        break label223;
      }
      str3 = "";
      f = this.aIX;
      if (this.aIQ != null) {
        break label232;
      }
    }
    label214:
    label223:
    label232:
    for (String str4 = "";; str4 = this.aIQ)
    {
      return String.valueOf(str5).length() + 45 + String.valueOf(str1).length() + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length() + "\t" + str5 + "\t" + i + "\t" + str1 + "\t" + j + "\t" + str2 + "\t" + str3 + "\t" + f + "\t" + str4;
      str1 = TextUtils.join(",", this.aIS);
      break;
      str2 = this.aIP;
      break label38;
      str3 = this.aIW;
      break label49;
    }
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramInt = du.l(paramParcel, 20293);
    du.d(paramParcel, 1, this.aCi);
    du.a(paramParcel, 2, getTimeMillis());
    du.a(paramParcel, 4, this.aIO);
    du.d(paramParcel, 5, this.aIR);
    du.a(paramParcel, 6, this.aIS);
    du.a(paramParcel, 8, this.aIU);
    du.a(paramParcel, 10, this.aIP);
    du.d(paramParcel, 11, getEventType());
    du.a(paramParcel, 12, this.aIT);
    du.a(paramParcel, 13, this.aIW);
    du.d(paramParcel, 14, this.aIV);
    du.a(paramParcel, 15, this.aIX);
    du.a(paramParcel, 16, this.Ab);
    du.a(paramParcel, 17, this.aIQ);
    du.m(paramParcel, paramInt);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/stats/WakeLockEvent.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */