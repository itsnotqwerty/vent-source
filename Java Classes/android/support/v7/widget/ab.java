package android.support.v7.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.support.v7.a.a.j;
import android.util.AttributeSet;
import android.widget.TextView;

final class ab
  extends aa
{
  private bm WX;
  private bm WY;
  
  ab(TextView paramTextView)
  {
    super(paramTextView);
  }
  
  final void a(AttributeSet paramAttributeSet, int paramInt)
  {
    super.a(paramAttributeSet, paramInt);
    Context localContext = this.WN.getContext();
    m localm = m.gh();
    paramAttributeSet = localContext.obtainStyledAttributes(paramAttributeSet, a.j.AppCompatTextHelper, paramInt, 0);
    if (paramAttributeSet.hasValue(a.j.AppCompatTextHelper_android_drawableStart)) {
      this.WX = a(localContext, localm, paramAttributeSet.getResourceId(a.j.AppCompatTextHelper_android_drawableStart, 0));
    }
    if (paramAttributeSet.hasValue(a.j.AppCompatTextHelper_android_drawableEnd)) {
      this.WY = a(localContext, localm, paramAttributeSet.getResourceId(a.j.AppCompatTextHelper_android_drawableEnd, 0));
    }
    paramAttributeSet.recycle();
  }
  
  final void gl()
  {
    super.gl();
    if ((this.WX != null) || (this.WY != null))
    {
      Drawable[] arrayOfDrawable = this.WN.getCompoundDrawablesRelative();
      a(arrayOfDrawable[0], this.WX);
      a(arrayOfDrawable[2], this.WY);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/ab.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */