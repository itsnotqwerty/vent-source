package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.a.a.a;
import android.support.v4.widget.e;
import android.support.v7.a.a.j;
import android.support.v7.c.a.b;
import android.util.AttributeSet;
import android.widget.CompoundButton;

final class l
{
  private final CompoundButton VO;
  ColorStateList VP = null;
  PorterDuff.Mode VQ = null;
  private boolean VR = false;
  private boolean VS = false;
  private boolean VT;
  
  l(CompoundButton paramCompoundButton)
  {
    this.VO = paramCompoundButton;
  }
  
  private void gg()
  {
    Drawable localDrawable = e.a(this.VO);
    if ((localDrawable != null) && ((this.VR) || (this.VS)))
    {
      localDrawable = a.f(localDrawable).mutate();
      if (this.VR) {
        a.a(localDrawable, this.VP);
      }
      if (this.VS) {
        a.a(localDrawable, this.VQ);
      }
      if (localDrawable.isStateful()) {
        localDrawable.setState(this.VO.getDrawableState());
      }
      this.VO.setButtonDrawable(localDrawable);
    }
  }
  
  final void a(AttributeSet paramAttributeSet, int paramInt)
  {
    paramAttributeSet = this.VO.getContext().obtainStyledAttributes(paramAttributeSet, a.j.CompoundButton, paramInt, 0);
    try
    {
      if (paramAttributeSet.hasValue(a.j.CompoundButton_android_button))
      {
        paramInt = paramAttributeSet.getResourceId(a.j.CompoundButton_android_button, 0);
        if (paramInt != 0) {
          this.VO.setButtonDrawable(b.a(this.VO.getContext(), paramInt));
        }
      }
      if (paramAttributeSet.hasValue(a.j.CompoundButton_buttonTint)) {
        e.a(this.VO, paramAttributeSet.getColorStateList(a.j.CompoundButton_buttonTint));
      }
      if (paramAttributeSet.hasValue(a.j.CompoundButton_buttonTintMode)) {
        e.a(this.VO, am.c(paramAttributeSet.getInt(a.j.CompoundButton_buttonTintMode, -1), null));
      }
      return;
    }
    finally
    {
      paramAttributeSet.recycle();
    }
  }
  
  final int bi(int paramInt)
  {
    int i = paramInt;
    if (Build.VERSION.SDK_INT < 17)
    {
      Drawable localDrawable = e.a(this.VO);
      i = paramInt;
      if (localDrawable != null) {
        i = paramInt + localDrawable.getIntrinsicWidth();
      }
    }
    return i;
  }
  
  final void gf()
  {
    if (this.VT)
    {
      this.VT = false;
      return;
    }
    this.VT = true;
    gg();
  }
  
  final void setSupportButtonTintList(ColorStateList paramColorStateList)
  {
    this.VP = paramColorStateList;
    this.VR = true;
    gg();
  }
  
  final void setSupportButtonTintMode(PorterDuff.Mode paramMode)
  {
    this.VQ = paramMode;
    this.VS = true;
    gg();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */