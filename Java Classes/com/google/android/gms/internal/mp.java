package com.google.android.gms.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.os.WorkSource;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.common.util.b;
import com.google.android.gms.common.util.n;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicInteger;

public final class mp
{
  private static boolean DEBUG = false;
  static String TAG = "WakeLock";
  private static String aZq = "*gcore*:";
  static ScheduledExecutorService aZz;
  final String aIO;
  private final String aIQ;
  final PowerManager.WakeLock aZr;
  WorkSource aZs;
  final int aZt;
  private final String aZu;
  boolean aZv = true;
  final Map<String, Integer[]> aZw = new HashMap();
  int aZx;
  AtomicInteger aZy = new AtomicInteger(0);
  final Context mContext;
  
  public mp(Context paramContext, String paramString) {}
  
  @SuppressLint({"UnwrappedWakeLock"})
  private mp(Context paramContext, String paramString1, String paramString2)
  {
    this(paramContext, paramString1, paramString2, (byte)0);
  }
  
  @SuppressLint({"UnwrappedWakeLock"})
  private mp(Context paramContext, String paramString1, String paramString2, byte paramByte)
  {
    ae.c(paramString1, "Wake lock name can NOT be empty");
    this.aZt = 1;
    this.aZu = null;
    this.aIQ = null;
    this.mContext = paramContext.getApplicationContext();
    String str1;
    if (!"com.google.android.gms".equals(paramContext.getPackageName()))
    {
      str1 = String.valueOf(aZq);
      String str2 = String.valueOf(paramString1);
      if (str2.length() != 0) {
        str1 = str1.concat(str2);
      }
    }
    for (;;)
    {
      this.aIO = str1;
      label111:
      this.aZr = ((PowerManager)paramContext.getSystemService("power")).newWakeLock(1, paramString1);
      if (b.G(this.mContext))
      {
        paramString1 = paramString2;
        if (n.bj(paramString2)) {
          paramString1 = paramContext.getPackageName();
        }
        this.aZs = b.f(paramContext, paramString1);
        paramContext = this.aZs;
        if ((paramContext != null) && (b.G(this.mContext)))
        {
          if (this.aZs == null) {
            break label250;
          }
          this.aZs.add(paramContext);
          paramContext = this.aZs;
        }
      }
      try
      {
        this.aZr.setWorkSource(paramContext);
        if (aZz == null) {
          aZz = dw.qv().newSingleThreadScheduledExecutor();
        }
        return;
        str1 = new String(str1);
        continue;
        this.aIO = paramString1;
        break label111;
        label250:
        this.aZs = paramContext;
      }
      catch (IllegalArgumentException paramContext)
      {
        for (;;)
        {
          Log.wtf(TAG, paramContext.toString());
        }
      }
    }
  }
  
  final void sF()
  {
    if (this.aZr.isHeld()) {}
    try
    {
      this.aZr.release();
      return;
    }
    catch (RuntimeException localRuntimeException)
    {
      if (localRuntimeException.getClass().equals(RuntimeException.class))
      {
        Log.e(TAG, String.valueOf(this.aIO).concat("was already released!"), new IllegalStateException());
        return;
      }
      throw localRuntimeException;
    }
  }
  
  final String sG()
  {
    if (this.aZv)
    {
      if (!TextUtils.isEmpty(null)) {
        return null;
      }
      return this.aZu;
    }
    return this.aZu;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/mp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */