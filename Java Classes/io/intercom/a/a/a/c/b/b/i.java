package io.intercom.a.a.a.c.b.b;

import android.app.ActivityManager;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.text.format.Formatter;
import android.util.DisplayMetrics;
import android.util.Log;

public final class i
{
  public final int cLS;
  public final int cLT;
  public final int cLU;
  private final Context context;
  
  public i(a parama)
  {
    this.context = a.a(parama);
    int i;
    Object localObject;
    float f1;
    label86:
    int m;
    if (a(a.b(parama)))
    {
      i = a.c(parama) / 2;
      this.cLU = i;
      localObject = a.b(parama);
      f1 = a.d(parama);
      float f2 = a.e(parama);
      i = ((ActivityManager)localObject).getMemoryClass();
      bool = a((ActivityManager)localObject);
      float f3 = i * 1024 * 1024;
      if (!bool) {
        break label326;
      }
      f1 = f2;
      i = Math.round(f1 * f3);
      int k = a.f(parama).IF() * a.f(parama).IG() * 4;
      int j = Math.round(k * a.g(parama));
      k = Math.round(k * a.h(parama));
      m = i - this.cLU;
      if (k + j > m) {
        break label329;
      }
      this.cLT = k;
      this.cLS = j;
      label175:
      if (Log.isLoggable("MemorySizeCalculator", 3))
      {
        localObject = new StringBuilder("Calculation complete, Calculated memory cache size: ").append(fj(this.cLT)).append(", pool size: ").append(fj(this.cLS)).append(", byte array size: ").append(fj(this.cLU)).append(", memory class limited? ");
        if (k + j <= i) {
          break label372;
        }
      }
    }
    label326:
    label329:
    label372:
    for (boolean bool = true;; bool = false)
    {
      Log.d("MemorySizeCalculator", bool + ", max size: " + fj(i) + ", memoryClass: " + a.b(parama).getMemoryClass() + ", isLowMemoryDevice: " + a(a.b(parama)));
      return;
      i = a.c(parama);
      break;
      break label86;
      f1 = m / (a.g(parama) + a.h(parama));
      this.cLT = Math.round(a.h(parama) * f1);
      this.cLS = Math.round(f1 * a.g(parama));
      break label175;
    }
  }
  
  static boolean a(ActivityManager paramActivityManager)
  {
    if (Build.VERSION.SDK_INT >= 19) {
      return paramActivityManager.isLowRamDevice();
    }
    return false;
  }
  
  private String fj(int paramInt)
  {
    return Formatter.formatFileSize(this.context, paramInt);
  }
  
  public static final class a
  {
    static final int cLV;
    private ActivityManager cLW;
    private i.c cLX;
    private float cLY = 2.0F;
    private float cLZ = cLV;
    private float cMa = 0.4F;
    private float cMb = 0.33F;
    private int cMc = 4194304;
    private final Context context;
    
    static
    {
      if (Build.VERSION.SDK_INT < 26) {}
      for (int i = 4;; i = 1)
      {
        cLV = i;
        return;
      }
    }
    
    public a(Context paramContext)
    {
      this.context = paramContext;
      this.cLW = ((ActivityManager)paramContext.getSystemService("activity"));
      this.cLX = new i.b(paramContext.getResources().getDisplayMetrics());
      if ((Build.VERSION.SDK_INT >= 26) && (i.a(this.cLW))) {
        this.cLZ = 0.0F;
      }
    }
  }
  
  private static final class b
    implements i.c
  {
    private final DisplayMetrics cMd;
    
    b(DisplayMetrics paramDisplayMetrics)
    {
      this.cMd = paramDisplayMetrics;
    }
    
    public final int IF()
    {
      return this.cMd.widthPixels;
    }
    
    public final int IG()
    {
      return this.cMd.heightPixels;
    }
  }
  
  static abstract interface c
  {
    public abstract int IF();
    
    public abstract int IG();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/b/b/i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */