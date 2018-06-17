package android.support.v4.a;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.FontVariationAxis;
import android.support.v4.content.a.a.b;
import android.support.v4.content.a.a.c;
import android.util.Log;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;

public final class f
  extends d
{
  private static final Class BK;
  private static final Constructor BL;
  private static final Method BN;
  private static final Method BO;
  private static final Method BP;
  private static final Method BQ;
  private static final Method BR;
  
  static
  {
    try
    {
      localClass = Class.forName("android.graphics.FontFamily");
      localConstructor = localClass.getConstructor(new Class[0]);
      localMethod5 = localClass.getMethod("addFontFromAssetManager", new Class[] { AssetManager.class, String.class, Integer.TYPE, Boolean.TYPE, Integer.TYPE, Integer.TYPE, Integer.TYPE, FontVariationAxis[].class });
      localMethod4 = localClass.getMethod("addFontFromBuffer", new Class[] { ByteBuffer.class, Integer.TYPE, FontVariationAxis[].class, Integer.TYPE, Integer.TYPE });
      localMethod3 = localClass.getMethod("freeze", new Class[0]);
      localMethod2 = localClass.getMethod("abortCreation", new Class[0]);
      Method localMethod1 = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", new Class[] { Array.newInstance(localClass, 1).getClass(), Integer.TYPE, Integer.TYPE });
      localMethod1.setAccessible(true);
      BL = localConstructor;
      BK = localClass;
      BO = localMethod5;
      BP = localMethod4;
      BQ = localMethod3;
      BR = localMethod2;
      BN = localMethod1;
      return;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      for (;;)
      {
        Log.e("TypefaceCompatApi26Impl", "Unable to collect necessary methods for class " + localClassNotFoundException.getClass().getName(), localClassNotFoundException);
        Object localObject = null;
        Method localMethod2 = null;
        Method localMethod3 = null;
        Method localMethod4 = null;
        Method localMethod5 = null;
        Constructor localConstructor = null;
        Class localClass = null;
      }
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      for (;;) {}
    }
  }
  
  private static boolean a(Context paramContext, Object paramObject, String paramString, int paramInt1, int paramInt2)
  {
    try
    {
      boolean bool = ((Boolean)BO.invoke(paramObject, new Object[] { paramContext.getAssets(), paramString, Integer.valueOf(0), Boolean.valueOf(false), Integer.valueOf(0), Integer.valueOf(paramInt1), Integer.valueOf(paramInt2), null })).booleanValue();
      return bool;
    }
    catch (IllegalAccessException paramContext)
    {
      throw new RuntimeException(paramContext);
    }
    catch (InvocationTargetException paramContext)
    {
      for (;;) {}
    }
  }
  
  private static boolean a(Object paramObject, ByteBuffer paramByteBuffer, int paramInt1, int paramInt2, int paramInt3)
  {
    try
    {
      boolean bool = ((Boolean)BP.invoke(paramObject, new Object[] { paramByteBuffer, Integer.valueOf(paramInt1), null, Integer.valueOf(paramInt2), Integer.valueOf(paramInt3) })).booleanValue();
      return bool;
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
  
  private static boolean dd()
  {
    if (BO == null) {
      Log.w("TypefaceCompatApi26Impl", "Unable to collect necessary private methods. Fallback to legacy implementation.");
    }
    return BO != null;
  }
  
  private static Typeface q(Object paramObject)
  {
    try
    {
      Object localObject = Array.newInstance(BK, 1);
      Array.set(localObject, 0, paramObject);
      paramObject = (Typeface)BN.invoke(null, new Object[] { localObject, Integer.valueOf(-1), Integer.valueOf(-1) });
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
  
  private static boolean r(Object paramObject)
  {
    try
    {
      boolean bool = ((Boolean)BQ.invoke(paramObject, new Object[0])).booleanValue();
      return bool;
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
  
  private static void s(Object paramObject)
  {
    try
    {
      BR.invoke(paramObject, new Object[0]);
      return;
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
  
  public final Typeface a(Context paramContext, Resources paramResources, int paramInt1, String paramString, int paramInt2)
  {
    Object localObject = null;
    if (!dd()) {
      paramContext = super.a(paramContext, paramResources, paramInt1, paramString, paramInt2);
    }
    do
    {
      return paramContext;
      paramResources = dc();
      if (!a(paramContext, paramResources, paramString, -1, -1))
      {
        s(paramResources);
        return null;
      }
      paramContext = (Context)localObject;
    } while (!r(paramResources));
    return q(paramResources);
  }
  
  public final Typeface a(Context paramContext, a.b paramb, Resources paramResources, int paramInt)
  {
    if (!dd()) {
      return super.a(paramContext, paramb, paramResources, paramInt);
    }
    paramResources = dc();
    paramb = paramb.Bs;
    int j = paramb.length;
    paramInt = 0;
    while (paramInt < j)
    {
      Object localObject = paramb[paramInt];
      String str = ((a.c)localObject).Bt;
      int k = ((a.c)localObject).Bu;
      if (((a.c)localObject).Bv) {}
      for (int i = 1; !a(paramContext, paramResources, str, k, i); i = 0)
      {
        s(paramResources);
        return null;
      }
      paramInt += 1;
    }
    if (!r(paramResources)) {
      return null;
    }
    return q(paramResources);
  }
  
  /* Error */
  public final Typeface a(Context paramContext, android.support.v4.e.b.b[] paramArrayOfb, int paramInt)
  {
    // Byte code:
    //   0: aload_2
    //   1: arraylength
    //   2: ifgt +7 -> 9
    //   5: aconst_null
    //   6: astore_1
    //   7: aload_1
    //   8: areturn
    //   9: invokestatic 191	android/support/v4/a/f:dd	()Z
    //   12: ifne +131 -> 143
    //   15: aload_0
    //   16: aload_2
    //   17: iload_3
    //   18: invokevirtual 234	android/support/v4/a/f:a	([Landroid/support/v4/e/b$b;I)Landroid/support/v4/e/b$b;
    //   21: astore_2
    //   22: aload_1
    //   23: invokevirtual 238	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   26: astore_1
    //   27: aload_1
    //   28: aload_2
    //   29: getfield 244	android/support/v4/e/b$b:DD	Landroid/net/Uri;
    //   32: ldc -11
    //   34: aconst_null
    //   35: invokevirtual 251	android/content/ContentResolver:openFileDescriptor	(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    //   38: astore 9
    //   40: aload 9
    //   42: ifnonnull +15 -> 57
    //   45: aload 9
    //   47: ifnull +8 -> 55
    //   50: aload 9
    //   52: invokevirtual 256	android/os/ParcelFileDescriptor:close	()V
    //   55: aconst_null
    //   56: areturn
    //   57: new 258	android/graphics/Typeface$Builder
    //   60: dup
    //   61: aload 9
    //   63: invokevirtual 262	android/os/ParcelFileDescriptor:getFileDescriptor	()Ljava/io/FileDescriptor;
    //   66: invokespecial 265	android/graphics/Typeface$Builder:<init>	(Ljava/io/FileDescriptor;)V
    //   69: aload_2
    //   70: getfield 266	android/support/v4/e/b$b:Bu	I
    //   73: invokevirtual 270	android/graphics/Typeface$Builder:setWeight	(I)Landroid/graphics/Typeface$Builder;
    //   76: aload_2
    //   77: getfield 271	android/support/v4/e/b$b:Bv	Z
    //   80: invokevirtual 275	android/graphics/Typeface$Builder:setItalic	(Z)Landroid/graphics/Typeface$Builder;
    //   83: invokevirtual 279	android/graphics/Typeface$Builder:build	()Landroid/graphics/Typeface;
    //   86: astore_2
    //   87: aload_2
    //   88: astore_1
    //   89: aload 9
    //   91: ifnull -84 -> 7
    //   94: aload 9
    //   96: invokevirtual 256	android/os/ParcelFileDescriptor:close	()V
    //   99: aload_2
    //   100: areturn
    //   101: astore_1
    //   102: aconst_null
    //   103: areturn
    //   104: astore_2
    //   105: aload_2
    //   106: athrow
    //   107: astore_1
    //   108: aload 9
    //   110: ifnull +12 -> 122
    //   113: aload_2
    //   114: ifnull +21 -> 135
    //   117: aload 9
    //   119: invokevirtual 256	android/os/ParcelFileDescriptor:close	()V
    //   122: aload_1
    //   123: athrow
    //   124: astore 9
    //   126: aload_2
    //   127: aload 9
    //   129: invokevirtual 282	java/lang/Throwable:addSuppressed	(Ljava/lang/Throwable;)V
    //   132: goto -10 -> 122
    //   135: aload 9
    //   137: invokevirtual 256	android/os/ParcelFileDescriptor:close	()V
    //   140: goto -18 -> 122
    //   143: aload_1
    //   144: aload_2
    //   145: invokestatic 287	android/support/v4/e/b:a	(Landroid/content/Context;[Landroid/support/v4/e/b$b;)Ljava/util/Map;
    //   148: astore_1
    //   149: invokestatic 195	android/support/v4/a/f:dc	()Ljava/lang/Object;
    //   152: astore 9
    //   154: aload_2
    //   155: arraylength
    //   156: istore 6
    //   158: iconst_0
    //   159: istore 5
    //   161: iconst_0
    //   162: istore 4
    //   164: iload 5
    //   166: iload 6
    //   168: if_icmpge +96 -> 264
    //   171: aload_2
    //   172: iload 5
    //   174: aaload
    //   175: astore 10
    //   177: aload_1
    //   178: aload 10
    //   180: getfield 244	android/support/v4/e/b$b:DD	Landroid/net/Uri;
    //   183: invokeinterface 293 2 0
    //   188: checkcast 56	java/nio/ByteBuffer
    //   191: astore 11
    //   193: aload 11
    //   195: ifnull +107 -> 302
    //   198: aload 10
    //   200: getfield 296	android/support/v4/e/b$b:DE	I
    //   203: istore 7
    //   205: aload 10
    //   207: getfield 266	android/support/v4/e/b$b:Bu	I
    //   210: istore 8
    //   212: aload 10
    //   214: getfield 271	android/support/v4/e/b$b:Bv	Z
    //   217: ifeq +29 -> 246
    //   220: iconst_1
    //   221: istore 4
    //   223: aload 9
    //   225: aload 11
    //   227: iload 7
    //   229: iload 8
    //   231: iload 4
    //   233: invokestatic 298	android/support/v4/a/f:a	(Ljava/lang/Object;Ljava/nio/ByteBuffer;III)Z
    //   236: ifne +16 -> 252
    //   239: aload 9
    //   241: invokestatic 199	android/support/v4/a/f:s	(Ljava/lang/Object;)V
    //   244: aconst_null
    //   245: areturn
    //   246: iconst_0
    //   247: istore 4
    //   249: goto -26 -> 223
    //   252: iconst_1
    //   253: istore 4
    //   255: iload 5
    //   257: iconst_1
    //   258: iadd
    //   259: istore 5
    //   261: goto -97 -> 164
    //   264: iload 4
    //   266: ifne +10 -> 276
    //   269: aload 9
    //   271: invokestatic 199	android/support/v4/a/f:s	(Ljava/lang/Object;)V
    //   274: aconst_null
    //   275: areturn
    //   276: aload 9
    //   278: invokestatic 201	android/support/v4/a/f:r	(Ljava/lang/Object;)Z
    //   281: ifne +5 -> 286
    //   284: aconst_null
    //   285: areturn
    //   286: aload 9
    //   288: invokestatic 203	android/support/v4/a/f:q	(Ljava/lang/Object;)Landroid/graphics/Typeface;
    //   291: iload_3
    //   292: invokestatic 302	android/graphics/Typeface:create	(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    //   295: areturn
    //   296: astore_1
    //   297: aconst_null
    //   298: astore_2
    //   299: goto -191 -> 108
    //   302: goto -47 -> 255
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	305	0	this	f
    //   0	305	1	paramContext	Context
    //   0	305	2	paramArrayOfb	android.support.v4.e.b.b[]
    //   0	305	3	paramInt	int
    //   162	103	4	i	int
    //   159	101	5	j	int
    //   156	13	6	k	int
    //   203	25	7	m	int
    //   210	20	8	n	int
    //   38	80	9	localParcelFileDescriptor	android.os.ParcelFileDescriptor
    //   124	12	9	localThrowable	Throwable
    //   152	135	9	localObject	Object
    //   175	38	10	localb	android.support.v4.e.b.b
    //   191	35	11	localByteBuffer	ByteBuffer
    // Exception table:
    //   from	to	target	type
    //   27	40	101	java/io/IOException
    //   50	55	101	java/io/IOException
    //   94	99	101	java/io/IOException
    //   117	122	101	java/io/IOException
    //   122	124	101	java/io/IOException
    //   126	132	101	java/io/IOException
    //   135	140	101	java/io/IOException
    //   57	87	104	java/lang/Throwable
    //   105	107	107	finally
    //   117	122	124	java/lang/Throwable
    //   57	87	296	finally
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/a/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */