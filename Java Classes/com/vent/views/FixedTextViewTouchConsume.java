package com.vent.views;

import android.content.Context;
import android.os.Build.VERSION;
import android.support.v7.widget.AppCompatTextView;
import android.text.Layout;
import android.text.Selection;
import android.text.Spannable;
import android.text.method.LinkMovementMethod;
import android.text.method.Touch;
import android.text.style.ClickableSpan;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.TextView;

public final class FixedTextViewTouchConsume
  extends AppCompatTextView
{
  boolean coj;
  
  public FixedTextViewTouchConsume(Context paramContext)
  {
    super(paramContext);
  }
  
  public FixedTextViewTouchConsume(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public FixedTextViewTouchConsume(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public final boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    this.coj = false;
    try
    {
      super.onTouchEvent(paramMotionEvent);
      return this.coj;
    }
    catch (Exception paramMotionEvent)
    {
      for (;;)
      {
        paramMotionEvent.printStackTrace();
      }
    }
  }
  
  public static final class a
    extends LinkMovementMethod
  {
    static a cok;
    
    public static a FB()
    {
      if (cok == null) {
        cok = new a();
      }
      return cok;
    }
    
    public final boolean onTouchEvent(TextView paramTextView, Spannable paramSpannable, MotionEvent paramMotionEvent)
    {
      int i = paramMotionEvent.getAction();
      Object localObject;
      boolean bool1;
      if ((i == 1) || (i == 0))
      {
        int j = (int)paramMotionEvent.getX();
        int k = (int)paramMotionEvent.getY();
        int m = paramTextView.getTotalPaddingLeft();
        int n = paramTextView.getTotalPaddingTop();
        int i1 = paramTextView.getScrollX();
        int i2 = paramTextView.getScrollY();
        localObject = paramTextView.getLayout();
        j = ((Layout)localObject).getOffsetForHorizontal(((Layout)localObject).getLineForVertical(k - n + i2), j - m + i1);
        localObject = (ClickableSpan[])paramSpannable.getSpans(j, j, ClickableSpan.class);
        if (localObject.length != 0) {
          if (i == 1)
          {
            localObject[0].onClick(paramTextView);
            if ((paramTextView instanceof FixedTextViewTouchConsume)) {
              ((FixedTextViewTouchConsume)paramTextView).coj = true;
            }
            if (Build.VERSION.SDK_INT >= 14) {
              paramTextView.setScrollY(0);
            }
            bool1 = true;
          }
        }
      }
      boolean bool2;
      do
      {
        return bool1;
        if (i != 0) {
          break;
        }
        Selection.setSelection(paramSpannable, paramSpannable.getSpanStart(localObject[0]), paramSpannable.getSpanEnd(localObject[0]));
        break;
        Selection.removeSelection(paramSpannable);
        Touch.onTouchEvent(paramTextView, paramSpannable, paramMotionEvent);
        if (Build.VERSION.SDK_INT >= 14) {
          paramTextView.setScrollY(0);
        }
        return false;
        bool2 = Touch.onTouchEvent(paramTextView, paramSpannable, paramMotionEvent);
        bool1 = bool2;
      } while (Build.VERSION.SDK_INT < 14);
      paramTextView.setScrollY(0);
      return bool2;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/views/FixedTextViewTouchConsume.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */