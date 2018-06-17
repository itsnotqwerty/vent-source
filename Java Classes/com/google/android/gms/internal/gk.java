package com.google.android.gms.internal;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.ae;
import java.util.Iterator;
import java.util.Set;

public final class gk
{
  final String aQx;
  final long aRG;
  final gm aRH;
  String aRb;
  final String name;
  final long timestamp;
  
  gk(hz paramhz, String paramString1, String paramString2, String paramString3, long paramLong1, long paramLong2, Bundle paramBundle)
  {
    ae.bf(paramString2);
    ae.bf(paramString3);
    this.aQx = paramString2;
    this.name = paramString3;
    paramString3 = paramString1;
    if (TextUtils.isEmpty(paramString1)) {
      paramString3 = null;
    }
    this.aRb = paramString3;
    this.timestamp = paramLong1;
    this.aRG = paramLong2;
    if ((this.aRG != 0L) && (this.aRG > this.timestamp)) {
      paramhz.qP().aTd.j("Event created with reverse previous/current timestamps. appId", hb.ck(paramString2));
    }
    this.aRH = a(paramhz, paramBundle);
  }
  
  gk(hz paramhz, String paramString1, String paramString2, String paramString3, long paramLong1, long paramLong2, gm paramgm)
  {
    ae.bf(paramString2);
    ae.bf(paramString3);
    ae.E(paramgm);
    this.aQx = paramString2;
    this.name = paramString3;
    paramString3 = paramString1;
    if (TextUtils.isEmpty(paramString1)) {
      paramString3 = null;
    }
    this.aRb = paramString3;
    this.timestamp = paramLong1;
    this.aRG = paramLong2;
    if ((this.aRG != 0L) && (this.aRG > this.timestamp)) {
      paramhz.qP().aTd.j("Event created with reverse previous/current timestamps. appId", hb.ck(paramString2));
    }
    this.aRH = paramgm;
  }
  
  private static gm a(hz paramhz, Bundle paramBundle)
  {
    if ((paramBundle != null) && (!paramBundle.isEmpty()))
    {
      paramBundle = new Bundle(paramBundle);
      Iterator localIterator = paramBundle.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        if (str == null)
        {
          paramhz.qP().aTa.bq("Param name can't be null");
          localIterator.remove();
        }
        else
        {
          paramhz.qL();
          Object localObject = le.k(str, paramBundle.get(str));
          if (localObject == null)
          {
            paramhz.qP().aTd.j("Param value can't be null", paramhz.qK().ci(str));
            localIterator.remove();
          }
          else
          {
            paramhz.qL().a(paramBundle, str, localObject);
          }
        }
      }
      return new gm(paramBundle);
    }
    return new gm(new Bundle());
  }
  
  public final String toString()
  {
    String str1 = this.aQx;
    String str2 = this.name;
    String str3 = String.valueOf(this.aRH);
    return String.valueOf(str1).length() + 33 + String.valueOf(str2).length() + String.valueOf(str3).length() + "Event{appId='" + str1 + "', name='" + str2 + "', params=" + str3 + '}';
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/gk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */