package com.google.android.gms.common.util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.WorkSource;
import android.util.Log;
import com.google.android.gms.internal.ed;
import com.google.android.gms.internal.ee;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class b
{
  private static final Method aJp = ;
  private static final Method aJq = oC();
  private static final Method aJr = oD();
  private static final Method aJs = oE();
  private static final Method aJt = oF();
  
  public static boolean G(Context paramContext)
  {
    if (paramContext == null) {}
    ed localed;
    do
    {
      do
      {
        return false;
      } while (paramContext.getPackageManager() == null);
      localed = ee.ag(paramContext);
      paramContext = paramContext.getPackageName();
    } while (localed.mContext.getPackageManager().checkPermission("android.permission.UPDATE_DEVICE_STATS", paramContext) != 0);
    return true;
  }
  
  private static int a(WorkSource paramWorkSource)
  {
    if (aJr != null) {
      try
      {
        int i = ((Integer)aJr.invoke(paramWorkSource, new Object[0])).intValue();
        return i;
      }
      catch (Exception paramWorkSource)
      {
        Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", paramWorkSource);
      }
    }
    return 0;
  }
  
  private static WorkSource a(int paramInt, String paramString)
  {
    WorkSource localWorkSource = new WorkSource();
    if (aJq != null)
    {
      str = paramString;
      if (paramString == null) {
        str = "";
      }
    }
    while (aJp == null) {
      try
      {
        String str;
        aJq.invoke(localWorkSource, new Object[] { Integer.valueOf(paramInt), str });
        return localWorkSource;
      }
      catch (Exception paramString)
      {
        Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", paramString);
        return localWorkSource;
      }
    }
    try
    {
      aJp.invoke(localWorkSource, new Object[] { Integer.valueOf(paramInt) });
      return localWorkSource;
    }
    catch (Exception paramString)
    {
      Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", paramString);
    }
    return localWorkSource;
  }
  
  private static String a(WorkSource paramWorkSource, int paramInt)
  {
    if (aJt != null) {
      try
      {
        paramWorkSource = (String)aJt.invoke(paramWorkSource, new Object[] { Integer.valueOf(paramInt) });
        return paramWorkSource;
      }
      catch (Exception paramWorkSource)
      {
        Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", paramWorkSource);
      }
    }
    return null;
  }
  
  public static List<String> b(WorkSource paramWorkSource)
  {
    int j = 0;
    if (paramWorkSource == null) {}
    Object localObject;
    for (int i = 0; i == 0; i = a(paramWorkSource))
    {
      localObject = Collections.emptyList();
      return (List<String>)localObject;
    }
    ArrayList localArrayList = new ArrayList();
    for (;;)
    {
      localObject = localArrayList;
      if (j >= i) {
        break;
      }
      localObject = a(paramWorkSource, j);
      if (!n.bj((String)localObject)) {
        localArrayList.add(localObject);
      }
      j += 1;
    }
  }
  
  public static WorkSource f(Context paramContext, String paramString)
  {
    if ((paramContext == null) || (paramContext.getPackageManager() == null) || (paramString == null)) {
      return null;
    }
    try
    {
      paramContext = ee.ag(paramContext).getApplicationInfo(paramString, 0);
      if (paramContext != null) {
        break label114;
      }
      paramContext = String.valueOf(paramString);
      if (paramContext.length() == 0) {
        break label101;
      }
      paramContext = "Could not get applicationInfo from package: ".concat(paramContext);
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      for (;;)
      {
        paramContext = String.valueOf(paramString);
        if (paramContext.length() != 0) {}
        for (paramContext = "Could not find package: ".concat(paramContext);; paramContext = new String("Could not find package: "))
        {
          Log.e("WorkSourceUtil", paramContext);
          return null;
        }
        paramContext = new String("Could not get applicationInfo from package: ");
      }
    }
    Log.e("WorkSourceUtil", paramContext);
    return null;
    label101:
    label114:
    return a(paramContext.uid, paramString);
  }
  
  private static Method oB()
  {
    try
    {
      Method localMethod = WorkSource.class.getMethod("add", new Class[] { Integer.TYPE });
      return localMethod;
    }
    catch (Exception localException) {}
    return null;
  }
  
  private static Method oC()
  {
    Method localMethod = null;
    if (l.oH()) {}
    try
    {
      localMethod = WorkSource.class.getMethod("add", new Class[] { Integer.TYPE, String.class });
      return localMethod;
    }
    catch (Exception localException) {}
    return null;
  }
  
  private static Method oD()
  {
    try
    {
      Method localMethod = WorkSource.class.getMethod("size", new Class[0]);
      return localMethod;
    }
    catch (Exception localException) {}
    return null;
  }
  
  private static Method oE()
  {
    try
    {
      Method localMethod = WorkSource.class.getMethod("get", new Class[] { Integer.TYPE });
      return localMethod;
    }
    catch (Exception localException) {}
    return null;
  }
  
  private static Method oF()
  {
    Method localMethod = null;
    if (l.oH()) {}
    try
    {
      localMethod = WorkSource.class.getMethod("getName", new Class[] { Integer.TYPE });
      return localMethod;
    }
    catch (Exception localException) {}
    return null;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/util/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */