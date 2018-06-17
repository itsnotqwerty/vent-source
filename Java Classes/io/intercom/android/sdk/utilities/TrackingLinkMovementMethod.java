package io.intercom.android.sdk.utilities;

import android.text.Layout;
import android.text.Selection;
import android.text.Spannable;
import android.text.method.LinkMovementMethod;
import android.text.style.URLSpan;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.TextView;
import io.intercom.android.sdk.Injector;
import io.intercom.android.sdk.commons.utilities.TimeProvider;

public class TrackingLinkMovementMethod
  extends LinkMovementMethod
{
  private boolean longClickActive = false;
  private boolean longClickPerformed = false;
  private long startClickTime;
  
  private int getPosition(MotionEvent paramMotionEvent, TextView paramTextView)
  {
    int i = (int)paramMotionEvent.getX();
    int j = (int)paramMotionEvent.getY();
    int k = paramTextView.getTotalPaddingLeft();
    int m = paramTextView.getTotalPaddingTop();
    int n = paramTextView.getScrollX();
    int i1 = paramTextView.getScrollY();
    paramMotionEvent = paramTextView.getLayout();
    return paramMotionEvent.getOffsetForHorizontal(paramMotionEvent.getLineForVertical(j - m + i1), i - k + n);
  }
  
  private void performClick(ViewGroup paramViewGroup)
  {
    while ((!paramViewGroup.performClick()) && ((paramViewGroup.getParent() instanceof ViewGroup))) {
      paramViewGroup = (ViewGroup)paramViewGroup.getParent();
    }
  }
  
  private void performLongClick(ViewGroup paramViewGroup)
  {
    while ((!paramViewGroup.performLongClick()) && ((paramViewGroup.getParent() instanceof ViewGroup))) {
      paramViewGroup = (ViewGroup)paramViewGroup.getParent();
    }
  }
  
  public boolean onTouchEvent(TextView paramTextView, Spannable paramSpannable, MotionEvent paramMotionEvent)
  {
    int i = getPosition(paramMotionEvent, paramTextView);
    URLSpan[] arrayOfURLSpan = (URLSpan[])paramSpannable.getSpans(i, i, URLSpan.class);
    switch (paramMotionEvent.getAction())
    {
    default: 
    case 0: 
      do
      {
        return false;
        this.startClickTime = TimeProvider.SYSTEM.currentTimeMillis();
        if (!this.longClickActive) {
          this.longClickActive = true;
        }
      } while (arrayOfURLSpan.length == 0);
      Selection.setSelection(paramSpannable, paramSpannable.getSpanStart(arrayOfURLSpan[0]), paramSpannable.getSpanEnd(arrayOfURLSpan[0]));
      return false;
    case 1: 
      this.longClickActive = false;
      if (!this.longClickPerformed) {
        if (arrayOfURLSpan.length != 0) {
          LinkOpener.handleUrl(arrayOfURLSpan[0].getURL(), paramTextView.getContext(), Injector.get().getApi());
        }
      }
      break;
    }
    label152:
    for (boolean bool = true;; bool = false)
    {
      this.longClickPerformed = false;
      return bool;
      Selection.removeSelection(paramSpannable);
      performClick((ViewGroup)paramTextView.getParent());
      break label152;
      if ((!this.longClickActive) || (TimeProvider.SYSTEM.currentTimeMillis() - this.startClickTime < ViewConfiguration.getLongPressTimeout())) {
        break;
      }
      this.longClickActive = false;
      performLongClick((ViewGroup)paramTextView.getParent());
      this.longClickPerformed = true;
      return true;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/utilities/TrackingLinkMovementMethod.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */