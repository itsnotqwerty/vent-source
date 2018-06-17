package io.intercom.android.sdk.profile;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.r;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;

public class TeammateProfileBackgroundImageView
  extends r
{
  public TeammateProfileBackgroundImageView(Context paramContext)
  {
    super(paramContext);
  }
  
  public TeammateProfileBackgroundImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public TeammateProfileBackgroundImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    Drawable localDrawable = getDrawable();
    if (localDrawable != null)
    {
      int i = View.MeasureSpec.getSize(paramInt1);
      int j = localDrawable.getIntrinsicWidth();
      if (j > 0)
      {
        setMeasuredDimension(i, localDrawable.getIntrinsicHeight() * i / j);
        return;
      }
      super.onMeasure(paramInt1, paramInt2);
      return;
    }
    super.onMeasure(paramInt1, paramInt2);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/profile/TeammateProfileBackgroundImageView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */