package io.intercom.android.sdk.utilities;

import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;

public class ColorUtils
{
  public static int darkenColor(int paramInt)
  {
    float[] arrayOfFloat = new float[3];
    Color.colorToHSV(paramInt, arrayOfFloat);
    arrayOfFloat[2] *= 0.79F;
    return Color.HSVToColor(arrayOfFloat);
  }
  
  public static int lightenColor(int paramInt)
  {
    int i = (Color.red(paramInt) + 255) / 2;
    int j = (Color.green(paramInt) + 255) / 2;
    int k = (Color.blue(paramInt) + 255) / 2;
    return Color.argb(Color.alpha(paramInt), i, j, k);
  }
  
  public static ColorFilter newGreyscaleFilter()
  {
    ColorMatrix localColorMatrix = new ColorMatrix();
    localColorMatrix.setSaturation(0.0F);
    return new ColorMatrixColorFilter(localColorMatrix);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/utilities/ColorUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */