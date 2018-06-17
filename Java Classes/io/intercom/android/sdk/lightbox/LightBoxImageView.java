package io.intercom.android.sdk.lightbox;

import android.content.Context;
import android.support.v7.widget.r;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

public class LightBoxImageView
  extends r
{
  GestureDetector gestureDetector;
  LightBoxListener lightBoxListener;
  
  public LightBoxImageView(Context paramContext)
  {
    super(paramContext);
    init();
  }
  
  public LightBoxImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init();
  }
  
  private void init()
  {
    this.gestureDetector = new GestureDetector(getContext(), new GestureListener());
    setOnTouchListener(new View.OnTouchListener()
    {
      public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        return LightBoxImageView.this.gestureDetector.onTouchEvent(paramAnonymousMotionEvent);
      }
    });
  }
  
  void setLightBoxListener(LightBoxListener paramLightBoxListener)
  {
    this.lightBoxListener = paramLightBoxListener;
  }
  
  private class GestureListener
    extends GestureDetector.SimpleOnGestureListener
  {
    GestureListener() {}
    
    public boolean onDown(MotionEvent paramMotionEvent)
    {
      return true;
    }
    
    public boolean onSingleTapConfirmed(MotionEvent paramMotionEvent)
    {
      if (LightBoxImageView.this.lightBoxListener != null) {
        LightBoxImageView.this.lightBoxListener.closeLightBox();
      }
      return super.onSingleTapConfirmed(paramMotionEvent);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/lightbox/LightBoxImageView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */