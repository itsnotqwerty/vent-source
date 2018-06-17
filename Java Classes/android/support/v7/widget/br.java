package android.support.v7.widget;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.graphics.Rect;
import android.support.v4.view.r;
import android.support.v7.a.a.d;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnAttachStateChangeListener;
import android.view.View.OnHoverListener;
import android.view.View.OnLongClickListener;
import android.view.ViewConfiguration;
import android.view.Window;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.view.accessibility.AccessibilityManager;
import android.widget.TextView;

final class br
  implements View.OnAttachStateChangeListener, View.OnHoverListener, View.OnLongClickListener
{
  private static br akr;
  private static br aks;
  private final CharSequence QG;
  private final Runnable Zg = new Runnable()
  {
    public final void run()
    {
      br.c(br.this);
    }
  };
  private final View adt;
  private final Runnable akm = new Runnable()
  {
    public final void run()
    {
      br.b(br.this);
    }
  };
  private int akn;
  private int ako;
  private bs akp;
  private boolean akq;
  
  private br(View paramView, CharSequence paramCharSequence)
  {
    this.adt = paramView;
    this.QG = paramCharSequence;
    this.adt.setOnLongClickListener(this);
    this.adt.setOnHoverListener(this);
  }
  
  private static void a(br parambr)
  {
    if (akr != null)
    {
      br localbr = akr;
      localbr.adt.removeCallbacks(localbr.akm);
    }
    akr = parambr;
    if (parambr != null)
    {
      parambr = akr;
      parambr.adt.postDelayed(parambr.akm, ViewConfiguration.getLongPressTimeout());
    }
  }
  
  public static void a(View paramView, CharSequence paramCharSequence)
  {
    if ((akr != null) && (akr.adt == paramView)) {
      a(null);
    }
    if (TextUtils.isEmpty(paramCharSequence))
    {
      if ((aks != null) && (aks.adt == paramView)) {
        aks.hide();
      }
      paramView.setOnLongClickListener(null);
      paramView.setLongClickable(false);
      paramView.setOnHoverListener(null);
      return;
    }
    new br(paramView, paramCharSequence);
  }
  
  private void aj(boolean paramBoolean)
  {
    if (!r.ah(this.adt)) {
      return;
    }
    a(null);
    if (aks != null) {
      aks.hide();
    }
    aks = this;
    this.akq = paramBoolean;
    this.akp = new bs(this.adt.getContext());
    bs localbs = this.akp;
    View localView2 = this.adt;
    int i = this.akn;
    int j = this.ako;
    paramBoolean = this.akq;
    Object localObject1 = this.QG;
    if (localbs.isShowing()) {
      localbs.hide();
    }
    localbs.ix.setText((CharSequence)localObject1);
    WindowManager.LayoutParams localLayoutParams = localbs.aku;
    localLayoutParams.token = localView2.getApplicationWindowToken();
    int k = localbs.mContext.getResources().getDimensionPixelOffset(a.d.tooltip_precise_anchor_threshold);
    if (localView2.getWidth() < k) {
      i = localView2.getWidth() / 2;
    }
    for (;;)
    {
      int m;
      label224:
      int n;
      Object localObject2;
      label278:
      label324:
      long l;
      if (localView2.getHeight() >= k)
      {
        m = localbs.mContext.getResources().getDimensionPixelOffset(a.d.tooltip_precise_anchor_extra_offset);
        k = j - m;
        j += m;
        localLayoutParams.gravity = 49;
        localObject1 = localbs.mContext.getResources();
        if (!paramBoolean) {
          break label411;
        }
        m = a.d.tooltip_y_offset_touch;
        n = ((Resources)localObject1).getDimensionPixelOffset(m);
        View localView1 = localView2.getRootView();
        localObject2 = localView1.getLayoutParams();
        if ((localObject2 instanceof WindowManager.LayoutParams))
        {
          localObject1 = localView1;
          if (((WindowManager.LayoutParams)localObject2).type == 2) {}
        }
        else
        {
          localObject2 = localView2.getContext();
          localObject1 = localView1;
          if ((localObject2 instanceof ContextWrapper))
          {
            if (!(localObject2 instanceof Activity)) {
              break label419;
            }
            localObject1 = ((Activity)localObject2).getWindow().getDecorView();
          }
        }
        if (localObject1 != null) {
          break label432;
        }
        Log.e("TooltipPopup", "Cannot find app view");
        ((WindowManager)localbs.mContext.getSystemService("window")).addView(localbs.OM, localbs.aku);
        this.adt.addOnAttachStateChangeListener(this);
        if (!this.akq) {
          break label732;
        }
        l = 2500L;
      }
      for (;;)
      {
        this.adt.removeCallbacks(this.Zg);
        this.adt.postDelayed(this.Zg, l);
        return;
        j = localView2.getHeight();
        k = 0;
        break;
        label411:
        m = a.d.tooltip_y_offset_non_touch;
        break label224;
        label419:
        localObject2 = ((ContextWrapper)localObject2).getBaseContext();
        break label278;
        label432:
        ((View)localObject1).getWindowVisibleDisplayFrame(localbs.akv);
        if ((localbs.akv.left < 0) && (localbs.akv.top < 0))
        {
          localObject2 = localbs.mContext.getResources();
          m = ((Resources)localObject2).getIdentifier("status_bar_height", "dimen", "android");
          if (m == 0) {
            break label693;
          }
        }
        label693:
        for (m = ((Resources)localObject2).getDimensionPixelSize(m);; m = 0)
        {
          localObject2 = ((Resources)localObject2).getDisplayMetrics();
          localbs.akv.set(0, m, ((DisplayMetrics)localObject2).widthPixels, ((DisplayMetrics)localObject2).heightPixels);
          ((View)localObject1).getLocationOnScreen(localbs.akx);
          localView2.getLocationOnScreen(localbs.akw);
          localObject2 = localbs.akw;
          localObject2[0] -= localbs.akx[0];
          localObject2 = localbs.akw;
          localObject2[1] -= localbs.akx[1];
          localLayoutParams.x = (localbs.akw[0] + i - ((View)localObject1).getWidth() / 2);
          i = View.MeasureSpec.makeMeasureSpec(0, 0);
          localbs.OM.measure(i, i);
          i = localbs.OM.getMeasuredHeight();
          k = localbs.akw[1] + k - n - i;
          j = j + localbs.akw[1] + n;
          if (!paramBoolean) {
            break label699;
          }
          if (k >= 0) {
            break label722;
          }
          localLayoutParams.y = j;
          break;
        }
        label699:
        if (i + j <= localbs.akv.height())
        {
          localLayoutParams.y = j;
          break label324;
        }
        label722:
        localLayoutParams.y = k;
        break label324;
        label732:
        if ((r.V(this.adt) & 0x1) == 1) {
          l = 3000L - ViewConfiguration.getLongPressTimeout();
        } else {
          l = 15000L - ViewConfiguration.getLongPressTimeout();
        }
      }
    }
  }
  
  private void hide()
  {
    if (aks == this)
    {
      aks = null;
      if (this.akp == null) {
        break label62;
      }
      this.akp.hide();
      this.akp = null;
      this.adt.removeOnAttachStateChangeListener(this);
    }
    for (;;)
    {
      if (akr == this) {
        a(null);
      }
      this.adt.removeCallbacks(this.Zg);
      return;
      label62:
      Log.e("TooltipCompatHandler", "sActiveHandler.mPopup == null");
    }
  }
  
  public final boolean onHover(View paramView, MotionEvent paramMotionEvent)
  {
    if ((this.akp != null) && (this.akq)) {}
    do
    {
      do
      {
        return false;
        paramView = (AccessibilityManager)this.adt.getContext().getSystemService("accessibility");
      } while ((paramView.isEnabled()) && (paramView.isTouchExplorationEnabled()));
      switch (paramMotionEvent.getAction())
      {
      case 8: 
      case 9: 
      default: 
        return false;
      }
    } while ((!this.adt.isEnabled()) || (this.akp != null));
    this.akn = ((int)paramMotionEvent.getX());
    this.ako = ((int)paramMotionEvent.getY());
    a(this);
    return false;
    hide();
    return false;
  }
  
  public final boolean onLongClick(View paramView)
  {
    this.akn = (paramView.getWidth() / 2);
    this.ako = (paramView.getHeight() / 2);
    aj(true);
    return true;
  }
  
  public final void onViewAttachedToWindow(View paramView) {}
  
  public final void onViewDetachedFromWindow(View paramView)
  {
    hide();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/br.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */