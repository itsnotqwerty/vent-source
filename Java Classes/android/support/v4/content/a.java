package android.support.v4.content;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Process;
import android.util.TypedValue;
import java.io.File;

public class a
{
  private static final Object AT = new Object();
  private static TypedValue AU;
  
  public static Drawable a(Context paramContext, int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      return paramContext.getDrawable(paramInt);
    }
    if (Build.VERSION.SDK_INT >= 16) {
      return paramContext.getResources().getDrawable(paramInt);
    }
    synchronized (AT)
    {
      if (AU == null) {
        AU = new TypedValue();
      }
      paramContext.getResources().getValue(paramInt, AU, true);
      paramInt = AU.resourceId;
      return paramContext.getResources().getDrawable(paramInt);
    }
  }
  
  public static boolean a(Context paramContext, Intent[] paramArrayOfIntent)
  {
    if (Build.VERSION.SDK_INT >= 16) {
      paramContext.startActivities(paramArrayOfIntent, null);
    }
    for (;;)
    {
      return true;
      paramContext.startActivities(paramArrayOfIntent);
    }
  }
  
  public static ColorStateList b(Context paramContext, int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 23) {
      return paramContext.getColorStateList(paramInt);
    }
    return paramContext.getResources().getColorStateList(paramInt);
  }
  
  public static int c(Context paramContext, int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 23) {
      return paramContext.getColor(paramInt);
    }
    return paramContext.getResources().getColor(paramInt);
  }
  
  public static int c(Context paramContext, String paramString)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("permission is null");
    }
    return paramContext.checkPermission(paramString, Process.myPid(), Process.myUid());
  }
  
  public static File[] f(Context paramContext)
  {
    if (Build.VERSION.SDK_INT >= 19) {
      return paramContext.getExternalFilesDirs(null);
    }
    return new File[] { paramContext.getExternalFilesDir(null) };
  }
  
  public static File[] g(Context paramContext)
  {
    if (Build.VERSION.SDK_INT >= 19) {
      return paramContext.getExternalCacheDirs();
    }
    return new File[] { paramContext.getExternalCacheDir() };
  }
  
  public static boolean h(Context paramContext)
  {
    if (Build.VERSION.SDK_INT >= 24) {
      return paramContext.isDeviceProtectedStorage();
    }
    return false;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/content/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */