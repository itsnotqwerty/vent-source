package com.c.a;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.os.StatFs;
import android.provider.Settings.System;
import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.concurrent.ThreadFactory;

public final class ag
{
  static final StringBuilder bPn = new StringBuilder();
  
  public static void AC()
  {
    if (Looper.getMainLooper().getThread() == Thread.currentThread()) {}
    for (int i = 1; i == 0; i = 0) {
      throw new IllegalStateException("Method call should happen from the main thread.");
    }
  }
  
  static int a(Resources paramResources, w paramw)
    throws FileNotFoundException
  {
    if ((paramw.resourceId != 0) || (paramw.uri == null)) {
      return paramw.resourceId;
    }
    String str = paramw.uri.getAuthority();
    if (str == null) {
      throw new FileNotFoundException("No package provided: " + paramw.uri);
    }
    List localList = paramw.uri.getPathSegments();
    if ((localList == null) || (localList.isEmpty())) {
      throw new FileNotFoundException("No path segments: " + paramw.uri);
    }
    if (localList.size() == 1) {
      try
      {
        int i = Integer.parseInt((String)localList.get(0));
        return i;
      }
      catch (NumberFormatException paramResources)
      {
        throw new FileNotFoundException("Last path segment is not a resource ID: " + paramw.uri);
      }
    }
    if (localList.size() == 2)
    {
      paramw = (String)localList.get(0);
      return paramResources.getIdentifier((String)localList.get(1), paramw, str);
    }
    throw new FileNotFoundException("More than two path segments: " + paramw.uri);
  }
  
  static Resources a(Context paramContext, w paramw)
    throws FileNotFoundException
  {
    if ((paramw.resourceId != 0) || (paramw.uri == null)) {
      return paramContext.getResources();
    }
    String str = paramw.uri.getAuthority();
    if (str == null) {
      throw new FileNotFoundException("No package provided: " + paramw.uri);
    }
    try
    {
      paramContext = paramContext.getPackageManager().getResourcesForApplication(str);
      return paramContext;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      throw new FileNotFoundException("Unable to obtain resources for package: " + paramw.uri);
    }
  }
  
  static String a(c paramc, String paramString)
  {
    paramString = new StringBuilder(paramString);
    a locala = paramc.bMP;
    if (locala != null) {
      paramString.append(locala.bMG.Au());
    }
    paramc = paramc.bNc;
    if (paramc != null)
    {
      int j = paramc.size();
      int i = 0;
      while (i < j)
      {
        if ((i > 0) || (locala != null)) {
          paramString.append(", ");
        }
        paramString.append(((a)paramc.get(i)).bMG.Au());
        i += 1;
      }
    }
    return paramString.toString();
  }
  
  static void a(Looper paramLooper)
  {
    paramLooper = new Handler(paramLooper)
    {
      public final void handleMessage(Message paramAnonymousMessage)
      {
        sendMessageDelayed(obtainMessage(), 1000L);
      }
    };
    paramLooper.sendMessageDelayed(paramLooper.obtainMessage(), 1000L);
  }
  
  static int aA(Context paramContext)
  {
    ActivityManager localActivityManager = (ActivityManager)paramContext.getSystemService("activity");
    int j;
    if ((paramContext.getApplicationInfo().flags & 0x100000) != 0)
    {
      i = 1;
      j = localActivityManager.getMemoryClass();
      if ((i == 0) || (Build.VERSION.SDK_INT < 11)) {
        break label60;
      }
    }
    label60:
    for (int i = localActivityManager.getLargeMemoryClass();; i = j)
    {
      return i * 1048576 / 7;
      i = 0;
      break;
    }
  }
  
  static boolean aB(Context paramContext)
  {
    boolean bool = false;
    paramContext = paramContext.getContentResolver();
    try
    {
      int i = Settings.System.getInt(paramContext, "airplane_mode_on", 0);
      if (i != 0) {
        bool = true;
      }
      return bool;
    }
    catch (NullPointerException paramContext) {}
    return false;
  }
  
  public static j ay(Context paramContext)
  {
    try
    {
      Class.forName("com.squareup.okhttp.OkHttpClient");
      s locals = new s(paramContext);
      return locals;
    }
    catch (ClassNotFoundException localClassNotFoundException) {}
    return new af(paramContext);
  }
  
  static File az(Context paramContext)
  {
    paramContext = new File(paramContext.getApplicationContext().getCacheDir(), "picasso-cache");
    if (!paramContext.exists()) {
      paramContext.mkdirs();
    }
    return paramContext;
  }
  
  static void b(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    Log.d("Picasso", String.format("%1$-11s %2$-12s %3$s %4$s", new Object[] { paramString1, paramString2, paramString3, paramString4 }));
  }
  
  static <T> T checkNotNull(T paramT, String paramString)
  {
    if (paramT == null) {
      throw new NullPointerException(paramString);
    }
    return paramT;
  }
  
  static int d(Bitmap paramBitmap)
  {
    if (Build.VERSION.SDK_INT >= 12) {}
    for (int i = paramBitmap.getByteCount(); i < 0; i = paramBitmap.getRowBytes() * paramBitmap.getHeight()) {
      throw new IllegalStateException("Negative size: " + paramBitmap);
    }
    return i;
  }
  
  static boolean dQ(String paramString)
  {
    if (paramString == null) {}
    for (;;)
    {
      return false;
      paramString = paramString.split(" ", 2);
      if ("CACHE".equals(paramString[0])) {
        return true;
      }
      if (paramString.length != 1) {
        try
        {
          if ("CONDITIONAL_CACHE".equals(paramString[0]))
          {
            int i = Integer.parseInt(paramString[1]);
            if (i == 304) {
              return true;
            }
          }
        }
        catch (NumberFormatException paramString) {}
      }
    }
    return false;
  }
  
  public static String e(w paramw)
  {
    StringBuilder localStringBuilder = bPn;
    if (paramw.bOE != null)
    {
      localStringBuilder.ensureCapacity(paramw.bOE.length() + 50);
      localStringBuilder.append(paramw.bOE);
      localStringBuilder.append('\n');
      if (paramw.bOL != 0.0F)
      {
        localStringBuilder.append("rotation:").append(paramw.bOL);
        if (paramw.bOO) {
          localStringBuilder.append('@').append(paramw.bOM).append('x').append(paramw.bON);
        }
        localStringBuilder.append('\n');
      }
      if (paramw.Aw())
      {
        localStringBuilder.append("resize:").append(paramw.bOG).append('x').append(paramw.bOH);
        localStringBuilder.append('\n');
      }
      if (!paramw.bOI) {
        break label278;
      }
      localStringBuilder.append("centerCrop\n");
    }
    for (;;)
    {
      if (paramw.bOF == null) {
        break label296;
      }
      int j = paramw.bOF.size();
      int i = 0;
      while (i < j)
      {
        localStringBuilder.append(((ae)paramw.bOF.get(i)).key());
        localStringBuilder.append('\n');
        i += 1;
      }
      if (paramw.uri != null)
      {
        String str = paramw.uri.toString();
        localStringBuilder.ensureCapacity(str.length() + 50);
        localStringBuilder.append(str);
        break;
      }
      localStringBuilder.ensureCapacity(50);
      localStringBuilder.append(paramw.resourceId);
      break;
      label278:
      if (paramw.bOJ) {
        localStringBuilder.append("centerInside\n");
      }
    }
    label296:
    paramw = localStringBuilder.toString();
    bPn.setLength(0);
    return paramw;
  }
  
  static String f(c paramc)
  {
    return a(paramc, "");
  }
  
  static long g(File paramFile)
  {
    try
    {
      paramFile = new StatFs(paramFile.getAbsolutePath());
      l = paramFile.getBlockCount();
      l = paramFile.getBlockSize() * l / 50L;
      return Math.max(Math.min(l, 52428800L), 5242880L);
    }
    catch (IllegalArgumentException paramFile)
    {
      for (;;)
      {
        long l = 5242880L;
      }
    }
  }
  
  static boolean hasPermission(Context paramContext, String paramString)
  {
    return paramContext.checkCallingOrSelfPermission(paramString) == 0;
  }
  
  static byte[] i(InputStream paramInputStream)
    throws IOException
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    byte[] arrayOfByte = new byte['က'];
    for (;;)
    {
      int i = paramInputStream.read(arrayOfByte);
      if (-1 == i) {
        break;
      }
      localByteArrayOutputStream.write(arrayOfByte, 0, i);
    }
    return localByteArrayOutputStream.toByteArray();
  }
  
  static void j(String paramString1, String paramString2, String paramString3)
  {
    b(paramString1, paramString2, paramString3, "");
  }
  
  static void m(InputStream paramInputStream)
  {
    if (paramInputStream == null) {
      return;
    }
    try
    {
      paramInputStream.close();
      return;
    }
    catch (IOException paramInputStream) {}
  }
  
  static boolean n(InputStream paramInputStream)
    throws IOException
  {
    boolean bool2 = false;
    byte[] arrayOfByte = new byte[12];
    boolean bool1 = bool2;
    if (paramInputStream.read(arrayOfByte, 0, 12) == 12)
    {
      bool1 = bool2;
      if ("RIFF".equals(new String(arrayOfByte, 0, 4, "US-ASCII")))
      {
        bool1 = bool2;
        if ("WEBP".equals(new String(arrayOfByte, 8, 4, "US-ASCII"))) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  static <T> T t(Context paramContext, String paramString)
  {
    return (T)paramContext.getSystemService(paramString);
  }
  
  private static final class a
    extends Thread
  {
    public a(Runnable paramRunnable)
    {
      super();
    }
    
    public final void run()
    {
      Process.setThreadPriority(10);
      super.run();
    }
  }
  
  static final class b
    implements ThreadFactory
  {
    public final Thread newThread(Runnable paramRunnable)
    {
      return new ag.a(paramRunnable);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/c/a/ag.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */