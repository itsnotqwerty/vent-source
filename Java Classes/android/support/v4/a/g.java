package android.support.v4.a;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.support.v4.content.a.a.b;
import android.support.v4.content.a.a.c;
import android.support.v4.e.b.b;
import java.io.File;
import java.io.InputStream;

class g
  implements c.a
{
  protected static Typeface a(Context paramContext, InputStream paramInputStream)
  {
    paramContext = h.j(paramContext);
    if (paramContext == null) {
      return null;
    }
    try
    {
      boolean bool = h.a(paramContext, paramInputStream);
      if (!bool) {
        return null;
      }
      paramInputStream = Typeface.createFromFile(paramContext.getPath());
      return paramInputStream;
    }
    catch (RuntimeException paramInputStream)
    {
      return null;
    }
    finally
    {
      paramContext.delete();
    }
  }
  
  private static <T> T a(T[] paramArrayOfT, int paramInt, a<T> parama)
  {
    int i;
    int i1;
    label19:
    Object localObject;
    int j;
    label32:
    T ?;
    int m;
    if ((paramInt & 0x1) == 0)
    {
      i = 400;
      if ((paramInt & 0x2) == 0) {
        break label125;
      }
      i1 = 1;
      localObject = null;
      j = Integer.MAX_VALUE;
      int n = paramArrayOfT.length;
      paramInt = 0;
      if (paramInt >= n) {
        break label137;
      }
      ? = paramArrayOfT[paramInt];
      m = Math.abs(parama.u(?) - i);
      if (parama.t(?) != i1) {
        break label131;
      }
    }
    label125:
    label131:
    for (int k = 0;; k = 1)
    {
      m = k + m * 2;
      if (localObject != null)
      {
        k = j;
        if (j <= m) {}
      }
      else
      {
        k = m;
        localObject = ?;
      }
      paramInt += 1;
      j = k;
      break label32;
      i = 700;
      break;
      i1 = 0;
      break label19;
    }
    label137:
    return (T)localObject;
  }
  
  public Typeface a(Context paramContext, Resources paramResources, int paramInt1, String paramString, int paramInt2)
  {
    paramContext = h.j(paramContext);
    if (paramContext == null) {
      return null;
    }
    try
    {
      boolean bool = h.a(paramContext, paramResources, paramInt1);
      if (!bool) {
        return null;
      }
      paramResources = Typeface.createFromFile(paramContext.getPath());
      return paramResources;
    }
    catch (RuntimeException paramResources)
    {
      return null;
    }
    finally
    {
      paramContext.delete();
    }
  }
  
  public Typeface a(Context paramContext, a.b paramb, Resources paramResources, int paramInt)
  {
    paramb = (a.c)a(paramb.Bs, paramInt, new a() {});
    if (paramb == null) {
      return null;
    }
    return c.a(paramContext, paramResources, paramb.Bw, paramb.Bt, paramInt);
  }
  
  /* Error */
  public Typeface a(Context paramContext, b.b[] paramArrayOfb, int paramInt)
  {
    // Byte code:
    //   0: aload_2
    //   1: arraylength
    //   2: ifgt +5 -> 7
    //   5: aconst_null
    //   6: areturn
    //   7: aload_0
    //   8: aload_2
    //   9: iload_3
    //   10: invokevirtual 100	android/support/v4/a/g:a	([Landroid/support/v4/e/b$b;I)Landroid/support/v4/e/b$b;
    //   13: astore_2
    //   14: aload_1
    //   15: invokevirtual 106	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   18: aload_2
    //   19: getfield 112	android/support/v4/e/b$b:DD	Landroid/net/Uri;
    //   22: invokevirtual 118	android/content/ContentResolver:openInputStream	(Landroid/net/Uri;)Ljava/io/InputStream;
    //   25: astore_2
    //   26: aload_1
    //   27: aload_2
    //   28: invokestatic 120	android/support/v4/a/g:a	(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;
    //   31: astore_1
    //   32: aload_2
    //   33: invokestatic 124	android/support/v4/a/h:closeQuietly	(Ljava/io/Closeable;)V
    //   36: aload_1
    //   37: areturn
    //   38: astore_1
    //   39: aconst_null
    //   40: astore_2
    //   41: aload_2
    //   42: invokestatic 124	android/support/v4/a/h:closeQuietly	(Ljava/io/Closeable;)V
    //   45: aconst_null
    //   46: areturn
    //   47: astore_1
    //   48: aconst_null
    //   49: astore_2
    //   50: aload_2
    //   51: invokestatic 124	android/support/v4/a/h:closeQuietly	(Ljava/io/Closeable;)V
    //   54: aload_1
    //   55: athrow
    //   56: astore_1
    //   57: goto -7 -> 50
    //   60: astore_1
    //   61: goto -20 -> 41
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	64	0	this	g
    //   0	64	1	paramContext	Context
    //   0	64	2	paramArrayOfb	b.b[]
    //   0	64	3	paramInt	int
    // Exception table:
    //   from	to	target	type
    //   14	26	38	java/io/IOException
    //   14	26	47	finally
    //   26	32	56	finally
    //   26	32	60	java/io/IOException
  }
  
  protected final b.b a(b.b[] paramArrayOfb, int paramInt)
  {
    (b.b)a(paramArrayOfb, paramInt, new a() {});
  }
  
  private static abstract interface a<T>
  {
    public abstract boolean t(T paramT);
    
    public abstract int u(T paramT);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/a/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */