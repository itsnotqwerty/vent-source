package io.intercom.android.sdk.commons.utilities;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;

public class ScreenUtils
{
  @Deprecated
  public static int convertDpToPixel(float paramFloat, Context paramContext)
  {
    return dpToPx(paramFloat, paramContext);
  }
  
  @Deprecated
  public static int convertPixelsToDp(float paramFloat, Context paramContext)
  {
    return pxToDp(paramFloat, paramContext);
  }
  
  public static int dpToPx(float paramFloat, Context paramContext)
  {
    return (int)(paramContext.getResources().getDisplayMetrics().density * paramFloat);
  }
  
  public static Point getScreenDimensions(Context paramContext)
  {
    Point localPoint = new Point();
    ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay().getSize(localPoint);
    return localPoint;
  }
  
  public static int pxToDp(float paramFloat, Context paramContext)
  {
    return (int)(paramFloat / paramContext.getResources().getDisplayMetrics().density);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/commons/utilities/ScreenUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */