package android.support.v7.widget;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.support.v4.a.a.a;
import android.support.v4.view.r;
import android.support.v7.a.a.j;
import android.util.AttributeSet;
import android.widget.SeekBar;

final class y
  extends u
{
  final SeekBar Wt;
  Drawable Wu;
  private ColorStateList Wv = null;
  private PorterDuff.Mode Ww = null;
  private boolean Wx = false;
  private boolean Wy = false;
  
  y(SeekBar paramSeekBar)
  {
    super(paramSeekBar);
    this.Wt = paramSeekBar;
  }
  
  private void gj()
  {
    if ((this.Wu != null) && ((this.Wx) || (this.Wy)))
    {
      this.Wu = a.f(this.Wu.mutate());
      if (this.Wx) {
        a.a(this.Wu, this.Wv);
      }
      if (this.Wy) {
        a.a(this.Wu, this.Ww);
      }
      if (this.Wu.isStateful()) {
        this.Wu.setState(this.Wt.getDrawableState());
      }
    }
  }
  
  final void a(AttributeSet paramAttributeSet, int paramInt)
  {
    super.a(paramAttributeSet, paramInt);
    paramAttributeSet = bo.a(this.Wt.getContext(), paramAttributeSet, a.j.AppCompatSeekBar, paramInt, 0);
    Drawable localDrawable = paramAttributeSet.ch(a.j.AppCompatSeekBar_android_thumb);
    if (localDrawable != null) {
      this.Wt.setThumb(localDrawable);
    }
    localDrawable = paramAttributeSet.getDrawable(a.j.AppCompatSeekBar_tickMark);
    if (this.Wu != null) {
      this.Wu.setCallback(null);
    }
    this.Wu = localDrawable;
    if (localDrawable != null)
    {
      localDrawable.setCallback(this.Wt);
      a.b(localDrawable, r.K(this.Wt));
      if (localDrawable.isStateful()) {
        localDrawable.setState(this.Wt.getDrawableState());
      }
      gj();
    }
    this.Wt.invalidate();
    if (paramAttributeSet.hasValue(a.j.AppCompatSeekBar_tickMarkTintMode))
    {
      this.Ww = am.c(paramAttributeSet.getInt(a.j.AppCompatSeekBar_tickMarkTintMode, -1), this.Ww);
      this.Wy = true;
    }
    if (paramAttributeSet.hasValue(a.j.AppCompatSeekBar_tickMarkTint))
    {
      this.Wv = paramAttributeSet.getColorStateList(a.j.AppCompatSeekBar_tickMarkTint);
      this.Wx = true;
    }
    paramAttributeSet.ajT.recycle();
    gj();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/y.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */