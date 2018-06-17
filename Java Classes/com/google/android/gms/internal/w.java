package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.Uri.Builder;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings.Secure;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.gms.ads.a.c;
import com.google.android.gms.ads.a.d;
import com.google.android.gms.ads.e;
import com.google.android.gms.ads.h;
import com.google.android.gms.common.m;
import com.google.android.gms.dynamite.DynamiteModule;
import java.lang.reflect.Method;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Iterator;
import java.util.Locale;
import java.util.Set;
import java.util.StringTokenizer;
import java.util.UUID;

public final class w
{
  public static final Handler aKT = new Handler(Looper.getMainLooper());
  private static final String aKU = e.class.getName();
  private static final String aKV = h.class.getName();
  private static final String aKW = c.class.getName();
  private static final String aKX = d.class.getName();
  private static final String aKY = com.google.android.gms.ads.d.b.class.getName();
  private static final String aKZ = com.google.android.gms.ads.b.class.getName();
  
  public static String U(Context paramContext)
  {
    paramContext = paramContext.getContentResolver();
    if (paramContext == null) {}
    for (paramContext = null;; paramContext = Settings.Secure.getString(paramContext, "android_id"))
    {
      if ((paramContext == null) || (oR())) {
        paramContext = "emulator";
      }
      return bo(paramContext);
    }
  }
  
  public static boolean V(Context paramContext)
  {
    return m.oN().w(paramContext) == 0;
  }
  
  public static int W(Context paramContext)
  {
    return DynamiteModule.k(paramContext, "com.google.android.gms.ads.dynamite");
  }
  
  public static int X(Context paramContext)
  {
    return DynamiteModule.j(paramContext, "com.google.android.gms.ads.dynamite");
  }
  
  public static boolean Y(Context paramContext)
  {
    if (paramContext.getResources().getConfiguration().orientation != 2) {}
    do
    {
      return false;
      paramContext = paramContext.getResources().getDisplayMetrics();
    } while ((int)(paramContext.heightPixels / paramContext.density) >= 600);
    return true;
  }
  
  @TargetApi(17)
  public static boolean Z(Context paramContext)
  {
    DisplayMetrics localDisplayMetrics = paramContext.getResources().getDisplayMetrics();
    paramContext = ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay();
    int i;
    int j;
    if (Build.VERSION.SDK_INT >= 17)
    {
      i = 1;
      if (i == 0) {
        break label93;
      }
      paramContext.getRealMetrics(localDisplayMetrics);
      j = localDisplayMetrics.heightPixels;
      i = localDisplayMetrics.widthPixels;
    }
    for (;;)
    {
      paramContext.getMetrics(localDisplayMetrics);
      int k = localDisplayMetrics.heightPixels;
      int m = localDisplayMetrics.widthPixels;
      if ((k == j) && (m == i))
      {
        return true;
        i = 0;
        break;
        try
        {
          label93:
          j = ((Integer)Display.class.getMethod("getRawHeight", new Class[0]).invoke(paramContext, new Object[0])).intValue();
          i = ((Integer)Display.class.getMethod("getRawWidth", new Class[0]).invoke(paramContext, new Object[0])).intValue();
        }
        catch (Exception paramContext)
        {
          return false;
        }
      }
    }
    return false;
  }
  
  public static int a(DisplayMetrics paramDisplayMetrics, int paramInt)
  {
    return (int)TypedValue.applyDimension(1, paramInt, paramDisplayMetrics);
  }
  
  public static String a(StackTraceElement[] paramArrayOfStackTraceElement, String paramString)
  {
    int i = 0;
    Object localObject1;
    Object localObject2;
    if (i + 1 < paramArrayOfStackTraceElement.length)
    {
      localObject1 = paramArrayOfStackTraceElement[i];
      localObject2 = ((StackTraceElement)localObject1).getClassName();
      if ((!"loadAd".equalsIgnoreCase(((StackTraceElement)localObject1).getMethodName())) || ((!aKU.equalsIgnoreCase((String)localObject2)) && (!aKV.equalsIgnoreCase((String)localObject2)) && (!aKW.equalsIgnoreCase((String)localObject2)) && (!aKX.equalsIgnoreCase((String)localObject2)) && (!aKY.equalsIgnoreCase((String)localObject2)) && (!aKZ.equalsIgnoreCase((String)localObject2)))) {}
    }
    for (paramArrayOfStackTraceElement = paramArrayOfStackTraceElement[(i + 1)].getClassName();; paramArrayOfStackTraceElement = null)
    {
      if (paramString != null)
      {
        localObject1 = new StringTokenizer(paramString, ".");
        localObject2 = new StringBuilder();
        i = 2;
        if (((StringTokenizer)localObject1).hasMoreElements())
        {
          ((StringBuilder)localObject2).append(((StringTokenizer)localObject1).nextToken());
          for (;;)
          {
            if ((i > 0) && (((StringTokenizer)localObject1).hasMoreElements()))
            {
              ((StringBuilder)localObject2).append(".").append(((StringTokenizer)localObject1).nextToken());
              i -= 1;
              continue;
              i += 1;
              break;
            }
          }
          paramString = ((StringBuilder)localObject2).toString();
        }
        if ((paramArrayOfStackTraceElement != null) && (!paramArrayOfStackTraceElement.contains(paramString))) {
          return paramArrayOfStackTraceElement;
        }
      }
      return null;
    }
  }
  
  public static void a(Context paramContext, String paramString, Bundle paramBundle)
  {
    x localx = new x();
    Context localContext = paramContext.getApplicationContext();
    Object localObject = localContext;
    if (localContext == null) {
      localObject = paramContext;
    }
    paramBundle.putString("os", Build.VERSION.RELEASE);
    paramBundle.putString("api", String.valueOf(Build.VERSION.SDK_INT));
    paramBundle.putString("appid", ((Context)localObject).getPackageName());
    m.oN();
    int i = m.M(paramContext);
    paramBundle.putString("js", 20 + i + ".12211000");
    paramContext = new Uri.Builder().scheme("https").path("//pagead2.googlesyndication.com/pagead/gen_204").appendQueryParameter("id", paramString);
    paramString = paramBundle.keySet().iterator();
    while (paramString.hasNext())
    {
      localObject = (String)paramString.next();
      paramContext.appendQueryParameter((String)localObject, paramBundle.getString((String)localObject));
    }
    localx.bp(paramContext.toString());
  }
  
  public static void a(HttpURLConnection paramHttpURLConnection, String paramString)
  {
    paramHttpURLConnection.setConnectTimeout(60000);
    paramHttpURLConnection.setInstanceFollowRedirects(true);
    paramHttpURLConnection.setReadTimeout(60000);
    if (paramString != null) {
      paramHttpURLConnection.setRequestProperty("User-Agent", paramString);
    }
    paramHttpURLConnection.setUseCaches(false);
  }
  
  public static int aa(Context paramContext)
  {
    int i = paramContext.getResources().getIdentifier("navigation_bar_width", "dimen", "android");
    if (i > 0) {
      return paramContext.getResources().getDimensionPixelSize(i);
    }
    return 0;
  }
  
  private static String bo(String paramString)
  {
    Object localObject2 = null;
    int i = 0;
    for (;;)
    {
      Object localObject1 = localObject2;
      if (i < 2) {}
      try
      {
        localObject1 = MessageDigest.getInstance("MD5");
        ((MessageDigest)localObject1).update(paramString.getBytes());
        localObject1 = String.format(Locale.US, "%032X", new Object[] { new BigInteger(1, ((MessageDigest)localObject1).digest()) });
        return (String)localObject1;
      }
      catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
      {
        i += 1;
      }
      catch (ArithmeticException paramString) {}
    }
    return null;
  }
  
  public static boolean oR()
  {
    return Build.DEVICE.startsWith("generic");
  }
  
  public static boolean oS()
  {
    return Looper.myLooper() == Looper.getMainLooper();
  }
  
  public static String oT()
  {
    int i = 0;
    Object localObject1 = UUID.randomUUID();
    byte[] arrayOfByte1 = BigInteger.valueOf(((UUID)localObject1).getLeastSignificantBits()).toByteArray();
    byte[] arrayOfByte2 = BigInteger.valueOf(((UUID)localObject1).getMostSignificantBits()).toByteArray();
    localObject1 = new BigInteger(1, arrayOfByte1).toString();
    while (i < 2)
    {
      try
      {
        Object localObject2 = MessageDigest.getInstance("MD5");
        ((MessageDigest)localObject2).update(arrayOfByte1);
        ((MessageDigest)localObject2).update(arrayOfByte2);
        byte[] arrayOfByte3 = new byte[8];
        System.arraycopy(((MessageDigest)localObject2).digest(), 0, arrayOfByte3, 0, 8);
        localObject2 = new BigInteger(1, arrayOfByte3).toString();
        localObject1 = localObject2;
      }
      catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
      {
        for (;;) {}
      }
      i += 1;
    }
    return (String)localObject1;
  }
  
  public static int u(Context paramContext, int paramInt)
  {
    return a(paramContext.getResources().getDisplayMetrics(), paramInt);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/w.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */