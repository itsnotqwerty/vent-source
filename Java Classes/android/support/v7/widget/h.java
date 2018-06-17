package android.support.v7.widget;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.view.r;
import android.support.v7.a.a.j;
import android.util.AttributeSet;
import android.view.View;

final class h
{
  private final m VI;
  private int VJ = -1;
  private bm VK;
  private bm VL;
  private bm VM;
  private final View mView;
  
  h(View paramView)
  {
    this.mView = paramView;
    this.VI = m.gh();
  }
  
  private void d(ColorStateList paramColorStateList)
  {
    if (paramColorStateList != null)
    {
      if (this.VK == null) {
        this.VK = new bm();
      }
      this.VK.ajP = paramColorStateList;
      this.VK.ajR = true;
    }
    for (;;)
    {
      ge();
      return;
      this.VK = null;
    }
  }
  
  final void a(AttributeSet paramAttributeSet, int paramInt)
  {
    paramAttributeSet = bo.a(this.mView.getContext(), paramAttributeSet, a.j.ViewBackgroundHelper, paramInt, 0);
    try
    {
      if (paramAttributeSet.hasValue(a.j.ViewBackgroundHelper_android_background))
      {
        this.VJ = paramAttributeSet.getResourceId(a.j.ViewBackgroundHelper_android_background, -1);
        ColorStateList localColorStateList = this.VI.h(this.mView.getContext(), this.VJ);
        if (localColorStateList != null) {
          d(localColorStateList);
        }
      }
      if (paramAttributeSet.hasValue(a.j.ViewBackgroundHelper_backgroundTint)) {
        r.a(this.mView, paramAttributeSet.getColorStateList(a.j.ViewBackgroundHelper_backgroundTint));
      }
      if (paramAttributeSet.hasValue(a.j.ViewBackgroundHelper_backgroundTintMode)) {
        r.a(this.mView, am.c(paramAttributeSet.getInt(a.j.ViewBackgroundHelper_backgroundTintMode, -1), null));
      }
      return;
    }
    finally
    {
      paramAttributeSet.ajT.recycle();
    }
  }
  
  final void bh(int paramInt)
  {
    this.VJ = paramInt;
    if (this.VI != null) {}
    for (ColorStateList localColorStateList = this.VI.h(this.mView.getContext(), paramInt);; localColorStateList = null)
    {
      d(localColorStateList);
      ge();
      return;
    }
  }
  
  final void gd()
  {
    this.VJ = -1;
    d(null);
    ge();
  }
  
  final void ge()
  {
    int j = 0;
    Drawable localDrawable = this.mView.getBackground();
    int i;
    if (localDrawable != null)
    {
      i = Build.VERSION.SDK_INT;
      if (i <= 21) {
        break label163;
      }
      if (this.VK == null) {
        break label158;
      }
      i = 1;
      if (i == 0) {
        break label179;
      }
      if (this.VM == null) {
        this.VM = new bm();
      }
      bm localbm = this.VM;
      localbm.clear();
      Object localObject = r.aa(this.mView);
      if (localObject != null)
      {
        localbm.ajR = true;
        localbm.ajP = ((ColorStateList)localObject);
      }
      localObject = r.ab(this.mView);
      if (localObject != null)
      {
        localbm.ajQ = true;
        localbm.rO = ((PorterDuff.Mode)localObject);
      }
      if (!localbm.ajR)
      {
        i = j;
        if (!localbm.ajQ) {}
      }
      else
      {
        m.a(localDrawable, localbm, this.mView.getDrawableState());
        i = 1;
      }
      if (i == 0) {
        break label179;
      }
    }
    label158:
    label163:
    label179:
    do
    {
      return;
      i = 0;
      break;
      if (i == 21)
      {
        i = 1;
        break;
      }
      i = 0;
      break;
      if (this.VL != null)
      {
        m.a(localDrawable, this.VL, this.mView.getDrawableState());
        return;
      }
    } while (this.VK == null);
    m.a(localDrawable, this.VK, this.mView.getDrawableState());
  }
  
  final ColorStateList getSupportBackgroundTintList()
  {
    if (this.VL != null) {
      return this.VL.ajP;
    }
    return null;
  }
  
  final PorterDuff.Mode getSupportBackgroundTintMode()
  {
    if (this.VL != null) {
      return this.VL.rO;
    }
    return null;
  }
  
  final void setSupportBackgroundTintList(ColorStateList paramColorStateList)
  {
    if (this.VL == null) {
      this.VL = new bm();
    }
    this.VL.ajP = paramColorStateList;
    this.VL.ajR = true;
    ge();
  }
  
  final void setSupportBackgroundTintMode(PorterDuff.Mode paramMode)
  {
    if (this.VL == null) {
      this.VL = new bm();
    }
    this.VL.rO = paramMode;
    this.VL.ajQ = true;
    ge();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */