package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.support.v4.widget.p;
import android.support.v7.a.a.a;
import android.support.v7.c.a.b;
import android.util.AttributeSet;
import android.widget.CheckBox;

public final class j
  extends CheckBox
  implements p
{
  private final l VN = new l(this);
  
  public j(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, a.a.checkboxStyle);
  }
  
  private j(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(bl.n(paramContext), paramAttributeSet, paramInt);
    this.VN.a(paramAttributeSet, paramInt);
  }
  
  public final int getCompoundPaddingLeft()
  {
    int j = super.getCompoundPaddingLeft();
    int i = j;
    if (this.VN != null) {
      i = this.VN.bi(j);
    }
    return i;
  }
  
  public final ColorStateList getSupportButtonTintList()
  {
    if (this.VN != null) {
      return this.VN.VP;
    }
    return null;
  }
  
  public final PorterDuff.Mode getSupportButtonTintMode()
  {
    if (this.VN != null) {
      return this.VN.VQ;
    }
    return null;
  }
  
  public final void setButtonDrawable(int paramInt)
  {
    setButtonDrawable(b.a(getContext(), paramInt));
  }
  
  public final void setButtonDrawable(Drawable paramDrawable)
  {
    super.setButtonDrawable(paramDrawable);
    if (this.VN != null) {
      this.VN.gf();
    }
  }
  
  public final void setSupportButtonTintList(ColorStateList paramColorStateList)
  {
    if (this.VN != null) {
      this.VN.setSupportButtonTintList(paramColorStateList);
    }
  }
  
  public final void setSupportButtonTintMode(PorterDuff.Mode paramMode)
  {
    if (this.VN != null) {
      this.VN.setSupportButtonTintMode(paramMode);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */