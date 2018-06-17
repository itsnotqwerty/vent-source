package io.intercom.android.sdk.views;

import android.annotation.TargetApi;
import android.os.Build.VERSION;
import android.view.Window;

public class StatusBarThemer
{
  @TargetApi(21)
  static void setStatusBarColor(int paramInt1, Window paramWindow, int paramInt2)
  {
    if (paramInt2 >= 21)
    {
      paramWindow.addFlags(Integer.MIN_VALUE);
      paramWindow.setStatusBarColor(paramInt1);
    }
  }
  
  public static void setStatusBarColor(Window paramWindow, int paramInt)
  {
    setStatusBarColor(paramInt, paramWindow, Build.VERSION.SDK_INT);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/views/StatusBarThemer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */