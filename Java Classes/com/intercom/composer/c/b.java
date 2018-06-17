package com.intercom.composer.c;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.Window;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import com.intercom.composer.g.c;

public final class b
  implements ViewTreeObserver.OnGlobalLayoutListener, c
{
  private final d bkU;
  public final Window blN;
  private final WindowManager blP;
  public final InputMethodManager blQ;
  private final SharedPreferences blR;
  c blS;
  boolean blT;
  int blU;
  
  b(Activity paramActivity, d paramd)
  {
    this(paramActivity.getWindow(), (WindowManager)paramActivity.getSystemService("window"), (InputMethodManager)paramActivity.getSystemService("input_method"), paramActivity.getSharedPreferences("keyboard", 0), paramd);
  }
  
  private b(Window paramWindow, WindowManager paramWindowManager, InputMethodManager paramInputMethodManager, SharedPreferences paramSharedPreferences, d paramd)
  {
    this.blN = paramWindow;
    this.blP = paramWindowManager;
    this.blQ = paramInputMethodManager;
    this.blR = paramSharedPreferences;
    this.bkU = paramd;
    this.blN.getDecorView().getRootView().getViewTreeObserver().addOnGlobalLayoutListener(this);
  }
  
  private int vY()
  {
    Object localObject1 = this.blN.getDecorView();
    Object localObject2 = new Rect();
    ((View)localObject1).getWindowVisibleDisplayFrame((Rect)localObject2);
    int j = ((View)localObject1).getRootView().getHeight() - ((Rect)localObject2).bottom;
    if (Build.VERSION.SDK_INT >= 18)
    {
      localObject1 = new DisplayMetrics();
      localObject2 = this.blP.getDefaultDisplay();
      ((Display)localObject2).getMetrics((DisplayMetrics)localObject1);
      int i = ((DisplayMetrics)localObject1).heightPixels;
      ((Display)localObject2).getRealMetrics((DisplayMetrics)localObject1);
      int k = ((DisplayMetrics)localObject1).heightPixels;
      if (k > i) {}
      for (i = k - i;; i = 0) {
        return j - i;
      }
    }
    return j;
  }
  
  public final void a(boolean paramBoolean, int paramInt)
  {
    if ((paramBoolean) && (this.bkU.getOrientation() == 1)) {
      this.blR.edit().putInt("keyboard_height_portrait", paramInt).apply();
    }
  }
  
  public final int dk(int paramInt)
  {
    Resources localResources = this.blN.getContext().getResources();
    if (paramInt == 1)
    {
      paramInt = localResources.getDimensionPixelSize(g.c.intercom_composer_keyboard_portrait_height);
      return this.blR.getInt("keyboard_height_portrait", paramInt);
    }
    return localResources.getDimensionPixelSize(g.c.intercom_composer_keyboard_landscape_height);
  }
  
  public final void onGlobalLayout()
  {
    int i = vY();
    boolean bool;
    int j;
    if (i > 0)
    {
      bool = true;
      j = this.bkU.getOrientation();
      if ((bool != this.blT) || (j != this.blU)) {
        break label41;
      }
    }
    label41:
    do
    {
      return;
      bool = false;
      break;
      this.blT = bool;
      this.blU = j;
      a(bool, i);
    } while (this.blS == null);
    this.blS.a(bool, i);
  }
  
  public final boolean vZ()
  {
    return vY() > 0;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/intercom/composer/c/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */