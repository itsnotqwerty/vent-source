package com.google.android.gms.internal;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.support.v4.g.a;
import android.text.TextUtils;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.measurement.AppMeasurement.a;
import com.google.android.gms.measurement.AppMeasurement.d;
import com.google.android.gms.measurement.AppMeasurement.e;
import java.io.IOException;
import java.util.Map;

public final class ht
  extends iy
{
  private static int aUn = 65535;
  private static int aUo = 2;
  private final Map<String, Map<String, String>> aUp = new a();
  private final Map<String, Map<String, Boolean>> aUq = new a();
  private final Map<String, Map<String, Boolean>> aUr = new a();
  final Map<String, lo> aUs = new a();
  private final Map<String, Map<String, Integer>> aUt = new a();
  final Map<String, String> aUu = new a();
  
  ht(hz paramhz)
  {
    super(paramhz);
  }
  
  private static Map<String, String> a(lo paramlo)
  {
    a locala = new a();
    if ((paramlo != null) && (paramlo.aXY != null))
    {
      paramlo = paramlo.aXY;
      int j = paramlo.length;
      int i = 0;
      while (i < j)
      {
        Object localObject = paramlo[i];
        if (localObject != null) {
          locala.put(((lp)localObject).key, ((lp)localObject).value);
        }
        i += 1;
      }
    }
    return locala;
  }
  
  private final void a(String paramString, lo paramlo)
  {
    a locala1 = new a();
    a locala2 = new a();
    a locala3 = new a();
    if ((paramlo != null) && (paramlo.aXZ != null))
    {
      paramlo = paramlo.aXZ;
      int j = paramlo.length;
      int i = 0;
      if (i < j)
      {
        Object localObject = paramlo[i];
        if (TextUtils.isEmpty(((ln)localObject).name)) {
          qP().aTd.bq("EventConfig contained null event name");
        }
        for (;;)
        {
          i += 1;
          break;
          String str = AppMeasurement.a.cY(((ln)localObject).name);
          if (!TextUtils.isEmpty(str)) {
            ((ln)localObject).name = str;
          }
          locala1.put(((ln)localObject).name, ((ln)localObject).aXT);
          locala2.put(((ln)localObject).name, ((ln)localObject).aXU);
          if (((ln)localObject).aXV != null) {
            if ((((ln)localObject).aXV.intValue() < aUo) || (((ln)localObject).aXV.intValue() > aUn)) {
              qP().aTd.e("Invalid sampling rate. Event name, sample rate", ((ln)localObject).name, ((ln)localObject).aXV);
            } else {
              locala3.put(((ln)localObject).name, ((ln)localObject).aXV);
            }
          }
        }
      }
    }
    this.aUq.put(paramString, locala1);
    this.aUr.put(paramString, locala2);
    this.aUt.put(paramString, locala3);
  }
  
  private final lo c(String paramString, byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      return new lo();
    }
    paramArrayOfByte = mu.a(paramArrayOfByte, paramArrayOfByte.length);
    lo locallo = new lo();
    try
    {
      locallo.a(paramArrayOfByte);
      qP().aTi.e("Parsed config. version, gmp_app_id", locallo.aXW, locallo.aQz);
      return locallo;
    }
    catch (IOException paramArrayOfByte)
    {
      qP().aTd.e("Unable to merge remote config. appId", hb.ck(paramString), paramArrayOfByte);
    }
    return new lo();
  }
  
  private final void cq(String paramString)
  {
    pf();
    mN();
    ae.bf(paramString);
    if (this.aUs.get(paramString) == null)
    {
      localObject = qJ().cd(paramString);
      if (localObject == null)
      {
        this.aUp.put(paramString, null);
        this.aUq.put(paramString, null);
        this.aUr.put(paramString, null);
        this.aUs.put(paramString, null);
        this.aUu.put(paramString, null);
        this.aUt.put(paramString, null);
      }
    }
    else
    {
      return;
    }
    Object localObject = c(paramString, (byte[])localObject);
    this.aUp.put(paramString, a((lo)localObject));
    a(paramString, (lo)localObject);
    this.aUs.put(paramString, localObject);
    this.aUu.put(paramString, null);
  }
  
  final String B(String paramString1, String paramString2)
  {
    mN();
    cq(paramString1);
    paramString1 = (Map)this.aUp.get(paramString1);
    if (paramString1 != null) {
      return (String)paramString1.get(paramString2);
    }
    return null;
  }
  
  final boolean C(String paramString1, String paramString2)
  {
    mN();
    cq(paramString1);
    if ((qL().cG(paramString1)) && (le.cD(paramString2))) {}
    while ((qL().cH(paramString1)) && (le.cw(paramString2))) {
      return true;
    }
    paramString1 = (Map)this.aUq.get(paramString1);
    if (paramString1 != null)
    {
      paramString1 = (Boolean)paramString1.get(paramString2);
      if (paramString1 == null) {
        return false;
      }
      return paramString1.booleanValue();
    }
    return false;
  }
  
  final boolean D(String paramString1, String paramString2)
  {
    mN();
    cq(paramString1);
    if ("ecommerce_purchase".equals(paramString2)) {
      return true;
    }
    paramString1 = (Map)this.aUr.get(paramString1);
    if (paramString1 != null)
    {
      paramString1 = (Boolean)paramString1.get(paramString2);
      if (paramString1 == null) {
        return false;
      }
      return paramString1.booleanValue();
    }
    return false;
  }
  
  final int E(String paramString1, String paramString2)
  {
    mN();
    cq(paramString1);
    paramString1 = (Map)this.aUt.get(paramString1);
    if (paramString1 != null)
    {
      paramString1 = (Integer)paramString1.get(paramString2);
      if (paramString1 == null) {
        return 1;
      }
      return paramString1.intValue();
    }
    return 1;
  }
  
  protected final boolean a(String paramString1, byte[] paramArrayOfByte, String paramString2)
  {
    pf();
    mN();
    ae.bf(paramString1);
    localObject1 = c(paramString1, paramArrayOfByte);
    a(paramString1, (lo)localObject1);
    this.aUs.put(paramString1, localObject1);
    this.aUu.put(paramString1, paramString2);
    this.aUp.put(paramString1, a((lo)localObject1));
    paramString2 = qB();
    lh[] arrayOflh = ((lo)localObject1).aYa;
    ae.E(arrayOflh);
    int m = arrayOflh.length;
    int i = 0;
    while (i < m)
    {
      Object localObject2 = arrayOflh[i];
      li[] arrayOfli = ((lh)localObject2).aXu;
      int n = arrayOfli.length;
      int j = 0;
      Object localObject3;
      while (j < n)
      {
        localObject3 = arrayOfli[j];
        String str1 = AppMeasurement.a.cY(((li)localObject3).aXx);
        if (str1 != null) {
          ((li)localObject3).aXx = str1;
        }
        localObject3 = ((li)localObject3).aXy;
        int i1 = localObject3.length;
        k = 0;
        while (k < i1)
        {
          str1 = localObject3[k];
          String str2 = AppMeasurement.d.cY(str1.aXF);
          if (str2 != null) {
            str1.aXF = str2;
          }
          k += 1;
        }
        j += 1;
      }
      localObject2 = ((lh)localObject2).aXt;
      int k = localObject2.length;
      j = 0;
      while (j < k)
      {
        arrayOfli = localObject2[j];
        localObject3 = AppMeasurement.e.cY(arrayOfli.aXM);
        if (localObject3 != null) {
          arrayOfli.aXM = ((String)localObject3);
        }
        j += 1;
      }
      i += 1;
    }
    paramString2.qJ().a(paramString1, arrayOflh);
    try
    {
      ((lo)localObject1).aYa = null;
      paramString2 = new byte[((nd)localObject1).sZ()];
      ((nd)localObject1).a(mv.b(paramString2, paramString2.length));
      paramArrayOfByte = paramString2;
    }
    catch (IOException paramString2)
    {
      try
      {
        if (paramString2.getWritableDatabase().update("apps", (ContentValues)localObject1, "app_id = ?", new String[] { paramString1 }) != 0L) {
          break label417;
        }
        paramString2.qP().aTa.j("Failed to update remote config (got 0). appId", hb.ck(paramString1));
        return true;
        paramString2 = paramString2;
        qP().aTd.e("Unable to serialize reduced-size config. Storing full config instead. appId", hb.ck(paramString1), paramString2);
      }
      catch (SQLiteException paramArrayOfByte)
      {
        for (;;)
        {
          paramString2.qP().aTa.e("Error storing remote config. appId", hb.ck(paramString1), paramArrayOfByte);
        }
      }
    }
    paramString2 = qJ();
    ae.bf(paramString1);
    paramString2.mN();
    paramString2.pf();
    localObject1 = new ContentValues();
    ((ContentValues)localObject1).put("remote_config", paramArrayOfByte);
  }
  
  protected final lo cr(String paramString)
  {
    pf();
    mN();
    ae.bf(paramString);
    cq(paramString);
    return (lo)this.aUs.get(paramString);
  }
  
  protected final boolean ri()
  {
    return false;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/ht.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */