package io.intercom.android.sdk.utilities;

import android.text.TextUtils;
import io.intercom.a.a.a.c.b.i;

public class ImageUtils
{
  public static int getAspectHeight(int paramInt, double paramDouble)
  {
    return (int)(paramInt * paramDouble);
  }
  
  public static double getAspectRatio(int paramInt1, int paramInt2)
  {
    double d2 = 1.0D * paramInt2 / paramInt1;
    double d1 = d2;
    if (Double.isNaN(d2)) {
      d1 = 0.0D;
    }
    return d1;
  }
  
  public static i getDiskCacheStrategy(String paramString)
  {
    if (isGif(paramString)) {
      return i.cKd;
    }
    return i.cKe;
  }
  
  public static boolean isGif(String paramString)
  {
    return (!TextUtils.isEmpty(paramString)) && (paramString.endsWith(".gif"));
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/utilities/ImageUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */