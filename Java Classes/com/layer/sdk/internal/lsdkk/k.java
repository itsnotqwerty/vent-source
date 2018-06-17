package com.layer.sdk.internal.lsdkk;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.util.Log;
import com.layer.b.d.m;
import com.layer.b.e.a;
import com.layer.b.e.a.b;
import com.layer.sdk.LayerClient;
import com.layer.sdk.exceptions.LayerConversationException;
import com.layer.sdk.exceptions.LayerException;
import com.layer.sdk.exceptions.LayerObjectException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class k
{
  public static final char[] a = new char[0];
  public static final int[] b = new int[0];
  public static final float[] c = new float[0];
  private static volatile boolean d = false;
  private static volatile boolean e = false;
  private static volatile boolean f = true;
  private static volatile boolean g = false;
  private static ThreadLocal<StringBuilder> h = new ThreadLocal();
  
  static
  {
    a.a(new b((byte)0));
  }
  
  public static a a(Class paramClass)
  {
    return new a(paramClass.getSimpleName(), (byte)0);
  }
  
  public static a a(String paramString)
  {
    return new a(paramString, (byte)0);
  }
  
  public static String a(Map<?, ?> paramMap)
  {
    return a(paramMap, ", ", "");
  }
  
  public static String a(Map<?, ?> paramMap, String paramString1, String paramString2)
  {
    StringBuilder localStringBuilder = new StringBuilder("[");
    Iterator localIterator = paramMap.entrySet().iterator();
    int i = 0;
    if (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      if (i == 0) {}
      for (paramMap = paramString2;; paramMap = paramString1)
      {
        localStringBuilder.append(paramMap).append(i).append(": ");
        localStringBuilder.append(localEntry.getKey()).append(" : ").append(localEntry.getValue());
        i += 1;
        break;
      }
    }
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
  
  public static void a(Context paramContext)
  {
    if (d) {
      return;
    }
    a(paramContext, b(paramContext).getBoolean("alwaysOn", false));
  }
  
  public static void a(Context paramContext, boolean paramBoolean)
  {
    d = true;
    e = paramBoolean;
    b(paramContext).edit().putBoolean("alwaysOn", paramBoolean).apply();
    if (e) {}
    for (paramContext = "Enabling logs";; paramContext = "Disabling logs")
    {
      a("LayerSDK", paramContext);
      return;
    }
  }
  
  public static void a(LayerClient paramLayerClient, Activity paramActivity)
  {
    l.a(paramLayerClient, f, paramActivity);
  }
  
  public static void a(Object paramObject, String paramString)
  {
    if ((!e) && (!Log.isLoggable("LayerSDK", 2))) {
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    Object localObject = paramObject;
    if ((paramObject instanceof a)) {
      localObject = a.a((a)paramObject);
    }
    Log.v("LayerSDK", localObject + " - " + e() + " : " + d(paramString));
  }
  
  public static void a(Object paramObject, String paramString, Throwable paramThrowable)
  {
    if ((!e) && (!Log.isLoggable("LayerSDK", 2))) {}
    while (!a(paramThrowable)) {
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    Object localObject = paramObject;
    if ((paramObject instanceof a)) {
      localObject = a.a((a)paramObject);
    }
    Log.v("LayerSDK", localObject + " - " + e() + " : " + d(paramString), paramThrowable);
  }
  
  public static void a(boolean paramBoolean)
  {
    g = paramBoolean;
  }
  
  public static boolean a()
  {
    return e;
  }
  
  public static boolean a(int paramInt)
  {
    return (e) || (Log.isLoggable("LayerSDK", paramInt));
  }
  
  private static boolean a(StackTraceElement paramStackTraceElement)
  {
    if (paramStackTraceElement.isNativeMethod()) {}
    String str;
    do
    {
      return true;
      str = paramStackTraceElement.getClassName();
      paramStackTraceElement = paramStackTraceElement.getMethodName();
    } while ((str.toLowerCase().endsWith("utils.log")) || (paramStackTraceElement.toLowerCase().contains("getstacktrace")));
    return false;
  }
  
  public static boolean a(Throwable paramThrowable)
  {
    for (;;)
    {
      if (paramThrowable == null) {
        return false;
      }
      if ((paramThrowable instanceof LayerConversationException)) {
        return true;
      }
      if ((paramThrowable instanceof LayerObjectException)) {
        return true;
      }
      if (!(paramThrowable instanceof LayerException)) {
        break;
      }
      Throwable localThrowable = paramThrowable.getCause();
      if (localThrowable == paramThrowable) {
        break;
      }
      paramThrowable = localThrowable;
    }
    if ((paramThrowable instanceof m))
    {
      paramThrowable = (m)paramThrowable;
      if (paramThrowable.bvU == null) {
        return true;
      }
      switch (1.bqe[paramThrowable.bvU.ordinal()])
      {
      default: 
        return true;
      }
      return false;
    }
    return true;
  }
  
  private static SharedPreferences b(Context paramContext)
  {
    return paramContext.getSharedPreferences("layer-logging", 0);
  }
  
  public static String b()
  {
    return l.a(null, f);
  }
  
  public static void b(Object paramObject, String paramString)
  {
    if ((!e) && (!Log.isLoggable("LayerSDK", 3))) {
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    Object localObject = paramObject;
    if ((paramObject instanceof a)) {
      localObject = a.a((a)paramObject);
    }
    Log.d("LayerSDK", localObject + " - " + e() + " : " + d(paramString));
  }
  
  public static void b(Object paramObject, String paramString, Throwable paramThrowable)
  {
    if ((!e) && (!Log.isLoggable("LayerSDK", 4))) {}
    while (!a(paramThrowable)) {
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    Object localObject = paramObject;
    if ((paramObject instanceof a)) {
      localObject = a.a((a)paramObject);
    }
    Log.i("LayerSDK", localObject + " : " + d(paramString), paramThrowable);
  }
  
  public static void b(String paramString)
  {
    if ((!g) || ((!e) && (!Log.isLoggable("LayerSDK", 2)))) {
      return;
    }
    Log.d("LayerSDK", paramString);
  }
  
  public static void c(Object paramObject, String paramString)
  {
    if ((!e) && (!Log.isLoggable("LayerSDK", 4))) {
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    Object localObject = paramObject;
    if ((paramObject instanceof a)) {
      localObject = a.a((a)paramObject);
    }
    Log.i("LayerSDK", localObject + " : " + d(paramString));
  }
  
  public static void c(Object paramObject, String paramString, Throwable paramThrowable)
  {
    if ((!e) && (!Log.isLoggable("LayerSDK", 5))) {}
    while (!a(paramThrowable)) {
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    Object localObject = paramObject;
    if ((paramObject instanceof a)) {
      localObject = a.a((a)paramObject);
    }
    Log.w("LayerSDK", localObject + " : " + d(paramString), paramThrowable);
  }
  
  public static void c(String paramString)
  {
    if ((!e) && (!Log.isLoggable("LayerPerf:SDK", 3))) {
      return;
    }
    Log.d("LayerPerf:SDK", paramString);
  }
  
  public static boolean c()
  {
    return g;
  }
  
  private static String d(String paramString)
  {
    return paramString;
  }
  
  public static void d(Object paramObject, String paramString)
  {
    if ((!e) && (!Log.isLoggable("LayerSDK", 5))) {
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    Object localObject = paramObject;
    if ((paramObject instanceof a)) {
      localObject = a.a((a)paramObject);
    }
    Log.w("LayerSDK", localObject + " : " + d(paramString));
  }
  
  public static void d(Object paramObject, String paramString, Throwable paramThrowable)
  {
    if ((!e) && (!Log.isLoggable("LayerSDK", 6))) {}
    while (!a(paramThrowable)) {
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    Object localObject = paramObject;
    if ((paramObject instanceof a)) {
      localObject = a.a((a)paramObject);
    }
    Log.e("LayerSDK", localObject + " : " + d(paramString), paramThrowable);
  }
  
  public static boolean d()
  {
    return (e) || (Log.isLoggable("LayerPerf:SDK", 3));
  }
  
  private static String e()
  {
    Object localObject = Thread.currentThread().getStackTrace();
    int j = localObject.length;
    int i = 0;
    while (i < j)
    {
      StackTraceElement localStackTraceElement = localObject[i];
      if (!a(localStackTraceElement))
      {
        localObject = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS zzz").format(new Date());
        return (String)localObject + " : " + localStackTraceElement.toString();
      }
      i += 1;
    }
    return "";
  }
  
  public static void e(Object paramObject, String paramString)
  {
    if ((!e) && (!Log.isLoggable("LayerSDK", 6))) {
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    Object localObject = paramObject;
    if ((paramObject instanceof a)) {
      localObject = a.a((a)paramObject);
    }
    Log.e("LayerSDK", localObject + " : " + d(paramString));
  }
  
  public static class a
  {
    private final String a;
    
    private a(String paramString)
    {
      this.a = paramString;
    }
  }
  
  private static final class b
    implements a.b
  {
    private static final k.a a = k.a(com.layer.b.d.k.class);
    
    public final void a(String paramString)
    {
      k.a(a, paramString);
    }
    
    public final boolean a(int paramInt)
    {
      return k.a(paramInt);
    }
    
    public final void b(String paramString)
    {
      k.d(a, paramString);
    }
    
    public final void c(String paramString)
    {
      k.e(a, paramString);
    }
    
    public final void f(String paramString, Throwable paramThrowable)
    {
      k.a(a, paramString, paramThrowable);
    }
    
    public final void g(String paramString, Throwable paramThrowable)
    {
      k.d(a, paramString, paramThrowable);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkk/k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */