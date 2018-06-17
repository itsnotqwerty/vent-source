package android.support.v4.a;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.net.Uri;
import android.support.v4.content.a.a.b;
import android.support.v4.content.a.a.c;
import android.support.v4.e.b.b;
import android.support.v4.g.m;
import android.util.Log;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.List;

final class e
  extends g
{
  private static final Class BK;
  private static final Constructor BL;
  private static final Method BM;
  private static final Method BN;
  
  static
  {
    try
    {
      localClass = Class.forName("android.graphics.FontFamily");
      localConstructor = localClass.getConstructor(new Class[0]);
      localMethod2 = localClass.getMethod("addFontWeightStyle", new Class[] { ByteBuffer.class, Integer.TYPE, List.class, Integer.TYPE, Boolean.TYPE });
      Method localMethod1 = Typeface.class.getMethod("createFromFamiliesWithDefault", new Class[] { Array.newInstance(localClass, 1).getClass() });
      BL = localConstructor;
      BK = localClass;
      BM = localMethod2;
      BN = localMethod1;
      return;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      for (;;)
      {
        Log.e("TypefaceCompatApi24Impl", localClassNotFoundException.getClass().getName(), localClassNotFoundException);
        Object localObject = null;
        Method localMethod2 = null;
        Constructor localConstructor = null;
        Class localClass = null;
      }
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      for (;;) {}
    }
  }
  
  private static boolean a(Object paramObject, ByteBuffer paramByteBuffer, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    try
    {
      paramBoolean = ((Boolean)BM.invoke(paramObject, new Object[] { paramByteBuffer, Integer.valueOf(paramInt1), null, Integer.valueOf(paramInt2), Boolean.valueOf(paramBoolean) })).booleanValue();
      return paramBoolean;
    }
    catch (IllegalAccessException paramObject)
    {
      throw new RuntimeException((Throwable)paramObject);
    }
    catch (InvocationTargetException paramObject)
    {
      for (;;) {}
    }
  }
  
  public static boolean db()
  {
    if (BM == null) {
      Log.w("TypefaceCompatApi24Impl", "Unable to collect necessary private methods.Fallback to legacy implementation.");
    }
    return BM != null;
  }
  
  private static Object dc()
  {
    try
    {
      Object localObject = BL.newInstance(new Object[0]);
      return localObject;
    }
    catch (InstantiationException localInstantiationException)
    {
      throw new RuntimeException(localInstantiationException);
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      for (;;) {}
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      for (;;) {}
    }
  }
  
  private static Typeface q(Object paramObject)
  {
    try
    {
      Object localObject = Array.newInstance(BK, 1);
      Array.set(localObject, 0, paramObject);
      paramObject = (Typeface)BN.invoke(null, new Object[] { localObject });
      return (Typeface)paramObject;
    }
    catch (IllegalAccessException paramObject)
    {
      throw new RuntimeException((Throwable)paramObject);
    }
    catch (InvocationTargetException paramObject)
    {
      for (;;) {}
    }
  }
  
  public final Typeface a(Context paramContext, a.b paramb, Resources paramResources, int paramInt)
  {
    Object localObject1 = dc();
    paramb = paramb.Bs;
    int i = paramb.length;
    paramInt = 0;
    while (paramInt < i)
    {
      Object localObject2 = paramb[paramInt];
      ByteBuffer localByteBuffer = h.a(paramContext, paramResources, ((a.c)localObject2).Bw);
      if (localByteBuffer == null) {}
      while (!a(localObject1, localByteBuffer, 0, ((a.c)localObject2).Bu, ((a.c)localObject2).Bv)) {
        return null;
      }
      paramInt += 1;
    }
    return q(localObject1);
  }
  
  public final Typeface a(Context paramContext, b.b[] paramArrayOfb, int paramInt)
  {
    Object localObject = dc();
    m localm = new m();
    int j = paramArrayOfb.length;
    int i = 0;
    while (i < j)
    {
      b.b localb = paramArrayOfb[i];
      Uri localUri = localb.DD;
      ByteBuffer localByteBuffer2 = (ByteBuffer)localm.get(localUri);
      ByteBuffer localByteBuffer1 = localByteBuffer2;
      if (localByteBuffer2 == null)
      {
        localByteBuffer1 = h.b(paramContext, localUri);
        localm.put(localUri, localByteBuffer1);
      }
      if (!a(localObject, localByteBuffer1, localb.DE, localb.Bu, localb.Bv)) {
        return null;
      }
      i += 1;
    }
    return Typeface.create(q(localObject), paramInt);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/a/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */