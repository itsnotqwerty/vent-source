package com.intercom.composer.c;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;

public final class a
  implements c
{
  public final d bkU;
  public final b blM;
  public final Window blN;
  public final View blO;
  public final View blg;
  
  public a(Activity paramActivity, d paramd, View paramView1, View paramView2)
  {
    this(new b(paramActivity, paramd), paramd, paramActivity.getWindow(), paramView1, paramView2);
  }
  
  private a(b paramb, d paramd, Window paramWindow, View paramView1, View paramView2)
  {
    if (paramView2 == null) {
      throw new IllegalArgumentException("behindKeyboardView can not be null!");
    }
    if (paramView1 == null) {
      throw new IllegalArgumentException("editText can not be null!");
    }
    this.blg = paramView1;
    this.blO = paramView2;
    this.blN = paramWindow;
    this.blN.setSoftInputMode(19);
    this.bkU = paramd;
    this.blM = paramb;
    this.blM.blS = this;
  }
  
  public final void a(boolean paramBoolean, int paramInt)
  {
    if (paramBoolean)
    {
      this.blN.setSoftInputMode(16);
      if (vW())
      {
        this.blO.getLayoutParams().height = 0;
        this.blO.requestLayout();
      }
      return;
    }
    if (vW())
    {
      this.blN.setSoftInputMode(32);
      return;
    }
    this.blN.setSoftInputMode(16);
  }
  
  public final boolean vW()
  {
    return this.blO.getLayoutParams().height != 0;
  }
  
  public final boolean vX()
  {
    boolean bool = false;
    if (vW())
    {
      this.blO.getLayoutParams().height = 0;
      this.blO.requestLayout();
      this.blN.setSoftInputMode(16);
      bool = true;
    }
    return bool;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/intercom/composer/c/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */