package com.intercom.composer;

import android.annotation.TargetApi;
import android.os.Build.VERSION;
import android.support.v4.content.a;
import android.view.View;
import android.view.Window;

public final class h
{
  @TargetApi(19)
  public static void a(Window paramWindow, int paramInt)
  {
    if (Build.VERSION.SDK_INT > 19)
    {
      paramWindow.getDecorView().setSystemUiVisibility(1280);
      paramInt = a.c(paramWindow.getContext(), paramInt);
      if (Build.VERSION.SDK_INT >= 21)
      {
        paramWindow.clearFlags(67108864);
        paramWindow.addFlags(Integer.MIN_VALUE);
        paramWindow.setStatusBarColor(paramInt);
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/intercom/composer/h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */