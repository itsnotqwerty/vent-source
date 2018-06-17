package com.google.android.gms.internal;

import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.ae;

public class ba
{
  public final bd aMq;
  
  protected ba(bd parambd)
  {
    ae.E(parambd);
    this.aMq = parambd;
  }
  
  private static String R(Object paramObject)
  {
    if (paramObject == null) {
      return "";
    }
    if ((paramObject instanceof String)) {
      return (String)paramObject;
    }
    if ((paramObject instanceof Boolean))
    {
      if (paramObject == Boolean.TRUE) {
        return "true";
      }
      return "false";
    }
    if ((paramObject instanceof Throwable)) {
      return ((Throwable)paramObject).toString();
    }
    return paramObject.toString();
  }
  
  private final void a(int paramInt, String paramString, Object paramObject1, Object paramObject2, Object paramObject3)
  {
    Object localObject = null;
    if (this.aMq != null) {
      localObject = this.aMq.aMv;
    }
    if (localObject != null)
    {
      String str = (String)cm.aNP.aOE;
      if (Log.isLoggable(str, paramInt)) {
        Log.println(paramInt, str, cw.c(paramString, paramObject1, paramObject2, paramObject3));
      }
      if (paramInt >= 5) {
        ((cw)localObject).b(paramInt, paramString, paramObject1, paramObject2, paramObject3);
      }
    }
    do
    {
      return;
      localObject = (String)cm.aNP.aOE;
    } while (!Log.isLoggable((String)localObject, paramInt));
    Log.println(paramInt, (String)localObject, c(paramString, paramObject1, paramObject2, paramObject3));
  }
  
  protected static String c(String paramString, Object paramObject1, Object paramObject2, Object paramObject3)
  {
    String str1 = paramString;
    if (paramString == null) {
      str1 = "";
    }
    String str2 = R(paramObject1);
    paramObject2 = R(paramObject2);
    paramObject3 = R(paramObject3);
    StringBuilder localStringBuilder = new StringBuilder();
    paramString = "";
    if (!TextUtils.isEmpty(str1))
    {
      localStringBuilder.append(str1);
      paramString = ": ";
    }
    paramObject1 = paramString;
    if (!TextUtils.isEmpty(str2))
    {
      localStringBuilder.append(paramString);
      localStringBuilder.append(str2);
      paramObject1 = ", ";
    }
    paramString = (String)paramObject1;
    if (!TextUtils.isEmpty((CharSequence)paramObject2))
    {
      localStringBuilder.append((String)paramObject1);
      localStringBuilder.append((String)paramObject2);
      paramString = ", ";
    }
    if (!TextUtils.isEmpty((CharSequence)paramObject3))
    {
      localStringBuilder.append(paramString);
      localStringBuilder.append((String)paramObject3);
    }
    return localStringBuilder.toString();
  }
  
  public static boolean pe()
  {
    return Log.isLoggable((String)cm.aNP.aOE, 2);
  }
  
  public final void a(String paramString, Object paramObject1, Object paramObject2)
  {
    a(2, paramString, paramObject1, paramObject2, null);
  }
  
  public final void a(String paramString, Object paramObject1, Object paramObject2, Object paramObject3)
  {
    a(3, paramString, paramObject1, paramObject2, paramObject3);
  }
  
  public final void b(String paramString, Object paramObject1, Object paramObject2)
  {
    a(3, paramString, paramObject1, paramObject2, null);
  }
  
  public final void b(String paramString, Object paramObject1, Object paramObject2, Object paramObject3)
  {
    a(5, paramString, paramObject1, paramObject2, paramObject3);
  }
  
  public final void bA(String paramString)
  {
    a(6, paramString, null, null, null);
  }
  
  public final void bw(String paramString)
  {
    a(2, paramString, null, null, null);
  }
  
  public final void bx(String paramString)
  {
    a(3, paramString, null, null, null);
  }
  
  public final void by(String paramString)
  {
    a(4, paramString, null, null, null);
  }
  
  public final void bz(String paramString)
  {
    a(5, paramString, null, null, null);
  }
  
  public final void c(String paramString, Object paramObject1, Object paramObject2)
  {
    a(5, paramString, paramObject1, paramObject2, null);
  }
  
  public final void d(String paramString, Object paramObject)
  {
    a(2, paramString, paramObject, null, null);
  }
  
  public final void d(String paramString, Object paramObject1, Object paramObject2)
  {
    a(6, paramString, paramObject1, paramObject2, null);
  }
  
  public final void e(String paramString, Object paramObject)
  {
    a(3, paramString, paramObject, null, null);
  }
  
  public final void f(String paramString, Object paramObject)
  {
    a(4, paramString, paramObject, null, null);
  }
  
  public final void g(String paramString, Object paramObject)
  {
    a(5, paramString, paramObject, null, null);
  }
  
  public final void h(String paramString, Object paramObject)
  {
    a(6, paramString, paramObject, null, null);
  }
  
  protected final cj pc()
  {
    bd localbd = this.aMq;
    bd.a(localbd.aMy);
    return localbd.aMy;
  }
  
  protected final da pd()
  {
    bd localbd = this.aMq;
    bd.a(localbd.aMA);
    return localbd.aMA;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/ba.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */