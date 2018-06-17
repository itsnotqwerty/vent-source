package android.support.v7.widget;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build.VERSION;
import android.support.v4.widget.j;
import android.support.v7.a.a.j;
import android.support.v7.c.a.b;
import android.util.AttributeSet;
import android.widget.ImageView;

public final class q
{
  private bm VM;
  private final ImageView Wk;
  private bm Wl;
  private bm Wm;
  
  public q(ImageView paramImageView)
  {
    this.Wk = paramImageView;
  }
  
  public final void a(AttributeSet paramAttributeSet, int paramInt)
  {
    bo localbo = bo.a(this.Wk.getContext(), paramAttributeSet, a.j.AppCompatImageView, paramInt, 0);
    try
    {
      Drawable localDrawable = this.Wk.getDrawable();
      paramAttributeSet = localDrawable;
      if (localDrawable == null)
      {
        paramInt = localbo.getResourceId(a.j.AppCompatImageView_srcCompat, -1);
        paramAttributeSet = localDrawable;
        if (paramInt != -1)
        {
          localDrawable = b.a(this.Wk.getContext(), paramInt);
          paramAttributeSet = localDrawable;
          if (localDrawable != null)
          {
            this.Wk.setImageDrawable(localDrawable);
            paramAttributeSet = localDrawable;
          }
        }
      }
      if (paramAttributeSet != null) {
        am.l(paramAttributeSet);
      }
      if (localbo.hasValue(a.j.AppCompatImageView_tint)) {
        j.a(this.Wk, localbo.getColorStateList(a.j.AppCompatImageView_tint));
      }
      if (localbo.hasValue(a.j.AppCompatImageView_tintMode)) {
        j.a(this.Wk, am.c(localbo.getInt(a.j.AppCompatImageView_tintMode, -1), null));
      }
      return;
    }
    finally
    {
      localbo.ajT.recycle();
    }
  }
  
  final ColorStateList getSupportImageTintList()
  {
    if (this.Wm != null) {
      return this.Wm.ajP;
    }
    return null;
  }
  
  final PorterDuff.Mode getSupportImageTintMode()
  {
    if (this.Wm != null) {
      return this.Wm.rO;
    }
    return null;
  }
  
  final void gi()
  {
    int j = 0;
    Drawable localDrawable = this.Wk.getDrawable();
    if (localDrawable != null) {
      am.l(localDrawable);
    }
    int i;
    if (localDrawable != null)
    {
      i = Build.VERSION.SDK_INT;
      if (i <= 21) {
        break label171;
      }
      if (this.Wl == null) {
        break label166;
      }
      i = 1;
      if (i == 0) {
        break label187;
      }
      if (this.VM == null) {
        this.VM = new bm();
      }
      bm localbm = this.VM;
      localbm.clear();
      Object localObject = j.a(this.Wk);
      if (localObject != null)
      {
        localbm.ajR = true;
        localbm.ajP = ((ColorStateList)localObject);
      }
      localObject = j.b(this.Wk);
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
        m.a(localDrawable, localbm, this.Wk.getDrawableState());
        i = 1;
      }
      if (i == 0) {
        break label187;
      }
    }
    label166:
    label171:
    label187:
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
      if (this.Wm != null)
      {
        m.a(localDrawable, this.Wm, this.Wk.getDrawableState());
        return;
      }
    } while (this.Wl == null);
    m.a(localDrawable, this.Wl, this.Wk.getDrawableState());
  }
  
  final boolean hasOverlappingRendering()
  {
    Drawable localDrawable = this.Wk.getBackground();
    return (Build.VERSION.SDK_INT < 21) || (!(localDrawable instanceof RippleDrawable));
  }
  
  public final void setImageResource(int paramInt)
  {
    if (paramInt != 0)
    {
      Drawable localDrawable = b.a(this.Wk.getContext(), paramInt);
      if (localDrawable != null) {
        am.l(localDrawable);
      }
      this.Wk.setImageDrawable(localDrawable);
    }
    for (;;)
    {
      gi();
      return;
      this.Wk.setImageDrawable(null);
    }
  }
  
  final void setSupportImageTintList(ColorStateList paramColorStateList)
  {
    if (this.Wm == null) {
      this.Wm = new bm();
    }
    this.Wm.ajP = paramColorStateList;
    this.Wm.ajR = true;
    gi();
  }
  
  final void setSupportImageTintMode(PorterDuff.Mode paramMode)
  {
    if (this.Wm == null) {
      this.Wm = new bm();
    }
    this.Wm.rO = paramMode;
    this.Wm.ajQ = true;
    gi();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */