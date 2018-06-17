package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.ae;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public final class gc
  extends ix
{
  private Boolean aNB;
  
  gc(hz paramhz)
  {
    super(paramhz);
  }
  
  public static long rk()
  {
    return ((Long)gr.aSH.aSN).longValue();
  }
  
  public static long rl()
  {
    return ((Long)gr.aSh.aSN).longValue();
  }
  
  public static boolean rn()
  {
    return ((Boolean)gr.aSc.aSN).booleanValue();
  }
  
  public final long a(String paramString, gs<Long> paramgs)
  {
    if (paramString == null) {
      return ((Long)paramgs.aSN).longValue();
    }
    paramString = qM().B(paramString, paramgs.key);
    if (TextUtils.isEmpty(paramString)) {
      return ((Long)paramgs.aSN).longValue();
    }
    try
    {
      long l = ((Long)paramgs.get(Long.valueOf(Long.valueOf(paramString).longValue()))).longValue();
      return l;
    }
    catch (NumberFormatException paramString) {}
    return ((Long)paramgs.aSN).longValue();
  }
  
  public final int b(String paramString, gs<Integer> paramgs)
  {
    if (paramString == null) {
      return ((Integer)paramgs.aSN).intValue();
    }
    paramString = qM().B(paramString, paramgs.key);
    if (TextUtils.isEmpty(paramString)) {
      return ((Integer)paramgs.aSN).intValue();
    }
    try
    {
      int i = ((Integer)paramgs.get(Integer.valueOf(Integer.valueOf(paramString).intValue()))).intValue();
      return i;
    }
    catch (NumberFormatException paramString) {}
    return ((Integer)paramgs.aSN).intValue();
  }
  
  public final int bW(String paramString)
  {
    return b(paramString, gr.aSs);
  }
  
  final Boolean bX(String paramString)
  {
    Boolean localBoolean = null;
    ae.bf(paramString);
    ApplicationInfo localApplicationInfo;
    try
    {
      if (getContext().getPackageManager() == null)
      {
        qP().aTa.bq("Failed to load metadata: PackageManager is null");
        return null;
      }
      localApplicationInfo = ee.ag(getContext()).getApplicationInfo(getContext().getPackageName(), 128);
      if (localApplicationInfo == null)
      {
        qP().aTa.bq("Failed to load metadata: ApplicationInfo is null");
        return null;
      }
    }
    catch (PackageManager.NameNotFoundException paramString)
    {
      qP().aTa.j("Failed to load metadata: Package name not found", paramString);
      return null;
    }
    if (localApplicationInfo.metaData == null)
    {
      qP().aTa.bq("Failed to load metadata: Metadata bundle is null");
      return null;
    }
    if (localApplicationInfo.metaData.containsKey(paramString))
    {
      boolean bool = localApplicationInfo.metaData.getBoolean(paramString);
      localBoolean = Boolean.valueOf(bool);
    }
    return localBoolean;
  }
  
  public final boolean bY(String paramString)
  {
    return "1".equals(qM().B(paramString, "gaia_collection_enabled"));
  }
  
  final boolean bZ(String paramString)
  {
    return c(paramString, gr.aSL);
  }
  
  public final boolean c(String paramString, gs<Boolean> paramgs)
  {
    if (paramString == null) {
      return ((Boolean)paramgs.aSN).booleanValue();
    }
    paramString = qM().B(paramString, paramgs.key);
    if (TextUtils.isEmpty(paramString)) {
      return ((Boolean)paramgs.aSN).booleanValue();
    }
    return ((Boolean)paramgs.get(Boolean.valueOf(Boolean.parseBoolean(paramString)))).booleanValue();
  }
  
  /* Error */
  public final boolean pK()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 215	com/google/android/gms/internal/gc:aNB	Ljava/lang/Boolean;
    //   4: ifnonnull +83 -> 87
    //   7: aload_0
    //   8: monitorenter
    //   9: aload_0
    //   10: getfield 215	com/google/android/gms/internal/gc:aNB	Ljava/lang/Boolean;
    //   13: ifnonnull +72 -> 85
    //   16: aload_0
    //   17: invokevirtual 117	com/google/android/gms/internal/ix:getContext	()Landroid/content/Context;
    //   20: invokevirtual 218	android/content/Context:getApplicationInfo	()Landroid/content/pm/ApplicationInfo;
    //   23: astore_3
    //   24: invokestatic 223	com/google/android/gms/common/util/m:oL	()Ljava/lang/String;
    //   27: astore_2
    //   28: aload_3
    //   29: ifnull +30 -> 59
    //   32: aload_3
    //   33: getfield 226	android/content/pm/ApplicationInfo:processName	Ljava/lang/String;
    //   36: astore_3
    //   37: aload_3
    //   38: ifnull +57 -> 95
    //   41: aload_3
    //   42: aload_2
    //   43: invokevirtual 196	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   46: ifeq +49 -> 95
    //   49: iconst_1
    //   50: istore_1
    //   51: aload_0
    //   52: iload_1
    //   53: invokestatic 185	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   56: putfield 215	com/google/android/gms/internal/gc:aNB	Ljava/lang/Boolean;
    //   59: aload_0
    //   60: getfield 215	com/google/android/gms/internal/gc:aNB	Ljava/lang/Boolean;
    //   63: ifnonnull +22 -> 85
    //   66: aload_0
    //   67: getstatic 229	java/lang/Boolean:TRUE	Ljava/lang/Boolean;
    //   70: putfield 215	com/google/android/gms/internal/gc:aNB	Ljava/lang/Boolean;
    //   73: aload_0
    //   74: invokevirtual 127	com/google/android/gms/internal/ix:qP	()Lcom/google/android/gms/internal/hb;
    //   77: getfield 133	com/google/android/gms/internal/hb:aTa	Lcom/google/android/gms/internal/hd;
    //   80: ldc -25
    //   82: invokevirtual 141	com/google/android/gms/internal/hd:bq	(Ljava/lang/String;)V
    //   85: aload_0
    //   86: monitorexit
    //   87: aload_0
    //   88: getfield 215	com/google/android/gms/internal/gc:aNB	Ljava/lang/Boolean;
    //   91: invokevirtual 44	java/lang/Boolean:booleanValue	()Z
    //   94: ireturn
    //   95: iconst_0
    //   96: istore_1
    //   97: goto -46 -> 51
    //   100: astore_2
    //   101: aload_0
    //   102: monitorexit
    //   103: aload_2
    //   104: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	105	0	this	gc
    //   50	47	1	bool	boolean
    //   27	16	2	str	String
    //   100	4	2	localObject1	Object
    //   23	19	3	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   9	28	100	finally
    //   32	37	100	finally
    //   41	49	100	finally
    //   51	59	100	finally
    //   59	85	100	finally
    //   85	87	100	finally
    //   101	103	100	finally
  }
  
  public final boolean rj()
  {
    Boolean localBoolean = bX("firebase_analytics_collection_deactivated");
    return (localBoolean != null) && (localBoolean.booleanValue());
  }
  
  public final String rm()
  {
    try
    {
      String str = (String)Class.forName("android.os.SystemProperties").getMethod("get", new Class[] { String.class, String.class }).invoke(null, new Object[] { "debug.firebase.analytics.app", "" });
      return str;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      qP().aTa.j("Could not find SystemProperties class", localClassNotFoundException);
      return "";
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      for (;;)
      {
        qP().aTa.j("Could not find SystemProperties.get() method", localNoSuchMethodException);
      }
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      for (;;)
      {
        qP().aTa.j("Could not access SystemProperties.get()", localIllegalAccessException);
      }
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      for (;;)
      {
        qP().aTa.j("SystemProperties.get() threw an exception", localInvocationTargetException);
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/gc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */