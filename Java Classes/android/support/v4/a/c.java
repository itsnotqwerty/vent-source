package android.support.v4.a;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Build.VERSION;
import android.support.v4.content.a.a.a;
import android.support.v4.content.a.a.b;
import android.support.v4.content.a.a.d;
import android.support.v4.content.a.b.a;
import android.support.v4.e.b;
import android.support.v4.e.b.b;

public final class c
{
  private static final a BI;
  private static final android.support.v4.g.g<String, Typeface> BJ;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 26) {
      BI = new f();
    }
    for (;;)
    {
      BJ = new android.support.v4.g.g(16);
      return;
      if ((Build.VERSION.SDK_INT >= 24) && (e.db())) {
        BI = new e();
      } else if (Build.VERSION.SDK_INT >= 21) {
        BI = new d();
      } else {
        BI = new g();
      }
    }
  }
  
  public static Typeface a(Context paramContext, Resources paramResources, int paramInt1, String paramString, int paramInt2)
  {
    paramContext = BI.a(paramContext, paramResources, paramInt1, paramString, paramInt2);
    if (paramContext != null)
    {
      paramResources = b(paramResources, paramInt1, paramInt2);
      BJ.put(paramResources, paramContext);
    }
    return paramContext;
  }
  
  public static Typeface a(Context paramContext, a.a parama, Resources paramResources, int paramInt1, int paramInt2, b.a parama1)
  {
    boolean bool;
    if ((parama instanceof a.d))
    {
      parama = (a.d)parama;
      if (parama.Bz == 0)
      {
        bool = true;
        int i = parama.By;
        paramContext = b.a(paramContext, parama.Bx, parama1, bool, i, paramInt2);
      }
    }
    for (;;)
    {
      if (paramContext != null) {
        BJ.put(b(paramResources, paramInt1, paramInt2), paramContext);
      }
      return paramContext;
      bool = false;
      break;
      parama = BI.a(paramContext, (a.b)parama, paramResources, paramInt2);
      paramContext = parama;
      if (parama1 != null) {
        if (parama != null)
        {
          parama1.a(parama, null);
          paramContext = parama;
        }
        else
        {
          parama1.a(-3, null);
          paramContext = parama;
        }
      }
    }
  }
  
  public static Typeface a(Context paramContext, b.b[] paramArrayOfb, int paramInt)
  {
    return BI.a(paramContext, paramArrayOfb, paramInt);
  }
  
  public static Typeface a(Resources paramResources, int paramInt1, int paramInt2)
  {
    return (Typeface)BJ.get(b(paramResources, paramInt1, paramInt2));
  }
  
  private static String b(Resources paramResources, int paramInt1, int paramInt2)
  {
    return paramResources.getResourcePackageName(paramInt1) + "-" + paramInt1 + "-" + paramInt2;
  }
  
  static abstract interface a
  {
    public abstract Typeface a(Context paramContext, Resources paramResources, int paramInt1, String paramString, int paramInt2);
    
    public abstract Typeface a(Context paramContext, a.b paramb, Resources paramResources, int paramInt);
    
    public abstract Typeface a(Context paramContext, b.b[] paramArrayOfb, int paramInt);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/a/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */