package io.intercom.android.sdk.views;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.support.v7.widget.r;
import android.util.AttributeSet;
import android.util.TypedValue;
import io.intercom.android.sdk.R.bool;
import io.intercom.android.sdk.R.dimen;
import io.intercom.android.sdk.commons.utilities.ScreenUtils;
import io.intercom.android.sdk.utilities.ImageUtils;

public class ResizableImageView
  extends r
{
  private int imageHeight;
  private int imageWidth;
  private int totalViewPadding;
  
  public ResizableImageView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ResizableImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public ResizableImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private int calculateContainerWidth()
  {
    Point localPoint = ScreenUtils.getScreenDimensions(getContext());
    if (getResources().getBoolean(R.bool.intercom_is_two_pane))
    {
      TypedValue localTypedValue = new TypedValue();
      getResources().getValue(R.dimen.intercom_two_pane_conversation_percentage, localTypedValue, true);
      float f = localTypedValue.getFloat();
      return (int)(localPoint.x * f);
    }
    return localPoint.x;
  }
  
  public Point getImageDimens()
  {
    double d = ImageUtils.getAspectRatio(this.imageWidth, this.imageHeight);
    int i = calculateContainerWidth();
    int j = this.totalViewPadding;
    i = Math.min(this.imageWidth, i - j);
    return new Point(i, ImageUtils.getAspectHeight(i, d));
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    Point localPoint = getImageDimens();
    if ((this.imageWidth > 0) && (this.imageHeight > 0))
    {
      setMeasuredDimension(localPoint.x, localPoint.y);
      return;
    }
    super.onMeasure(paramInt1, paramInt2);
  }
  
  public void setDisplayImageDimensions(int paramInt1, int paramInt2)
  {
    this.imageHeight = paramInt2;
    this.imageWidth = paramInt1;
  }
  
  public void setTotalViewPadding(int paramInt)
  {
    this.totalViewPadding = paramInt;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/views/ResizableImageView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */