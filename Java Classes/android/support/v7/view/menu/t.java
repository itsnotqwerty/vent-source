package android.support.v7.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.support.v7.a.a.d;
import android.support.v7.a.a.g;
import android.support.v7.widget.av;
import android.support.v7.widget.ax;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnAttachStateChangeListener;
import android.view.View.OnKeyListener;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.FrameLayout;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.PopupWindow.OnDismissListener;
import android.widget.TextView;

final class t
  extends m
  implements o, View.OnKeyListener, AdapterView.OnItemClickListener, PopupWindow.OnDismissListener
{
  private boolean LM;
  private final h Pj;
  private final int Rc;
  private final int Rd;
  private final boolean Re;
  private final ViewTreeObserver.OnGlobalLayoutListener Ri = new ViewTreeObserver.OnGlobalLayoutListener()
  {
    public final void onGlobalLayout()
    {
      if ((t.this.isShowing()) && (!t.this.SX.adi))
      {
        View localView = t.this.Rn;
        if ((localView == null) || (!localView.isShown())) {
          t.this.dismiss();
        }
      }
      else
      {
        return;
      }
      t.this.SX.show();
    }
  };
  private final View.OnAttachStateChangeListener Rj = new View.OnAttachStateChangeListener()
  {
    public final void onViewAttachedToWindow(View paramAnonymousView) {}
    
    public final void onViewDetachedFromWindow(View paramAnonymousView)
    {
      if (t.a(t.this) != null)
      {
        if (!t.a(t.this).isAlive()) {
          t.a(t.this, paramAnonymousView.getViewTreeObserver());
        }
        t.a(t.this).removeGlobalOnLayoutListener(t.b(t.this));
      }
      paramAnonymousView.removeOnAttachStateChangeListener(this);
    }
  };
  private int Rm = 0;
  View Rn;
  private o.a Ru;
  private ViewTreeObserver Rv;
  private PopupWindow.OnDismissListener Rw;
  private final g SV;
  private final int SW;
  final ax SX;
  private boolean SY;
  private boolean SZ;
  private int Ta;
  private final Context mContext;
  private View mc;
  
  public t(Context paramContext, h paramh, View paramView, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    this.mContext = paramContext;
    this.Pj = paramh;
    this.Re = paramBoolean;
    this.SV = new g(paramh, LayoutInflater.from(paramContext), this.Re);
    this.Rc = paramInt1;
    this.Rd = paramInt2;
    Resources localResources = paramContext.getResources();
    this.SW = Math.max(localResources.getDisplayMetrics().widthPixels / 2, localResources.getDimensionPixelSize(a.d.abc_config_prefDialogWidth));
    this.mc = paramView;
    this.SX = new ax(this.mContext, this.Rc, this.Rd);
    paramh.a(this, paramContext);
  }
  
  public final void G(boolean paramBoolean)
  {
    this.SZ = false;
    if (this.SV != null) {
      this.SV.notifyDataSetChanged();
    }
  }
  
  public final void H(boolean paramBoolean)
  {
    this.LM = paramBoolean;
  }
  
  public final void a(h paramh, boolean paramBoolean)
  {
    if (paramh != this.Pj) {}
    do
    {
      return;
      dismiss();
    } while (this.Ru == null);
    this.Ru.a(paramh, paramBoolean);
  }
  
  public final void a(o.a parama)
  {
    this.Ru = parama;
  }
  
  public final boolean a(u paramu)
  {
    if (paramu.hasVisibleItems())
    {
      n localn = new n(this.mContext, paramu, this.Rn, this.Re, this.Rc, this.Rd);
      localn.b(this.Ru);
      localn.setForceShowIcon(m.h(paramu));
      localn.Rm = this.Rm;
      localn.Rw = this.Rw;
      this.Rw = null;
      this.Pj.I(false);
      int i = this.SX.acM;
      int j = this.SX.getVerticalOffset();
      if (localn.isShowing()) {
        i = 1;
      }
      while (i != 0)
      {
        if (this.Ru != null) {
          this.Ru.d(paramu);
        }
        return true;
        if (localn.mc == null)
        {
          i = 0;
        }
        else
        {
          localn.a(i, j, true, true);
          i = 1;
        }
      }
    }
    return false;
  }
  
  public final void dismiss()
  {
    if (isShowing()) {
      this.SX.dismiss();
    }
  }
  
  public final void f(h paramh) {}
  
  public final boolean fa()
  {
    return false;
  }
  
  public final ListView getListView()
  {
    return this.SX.acK;
  }
  
  public final boolean isShowing()
  {
    return (!this.SY) && (this.SX.adj.isShowing());
  }
  
  public final void onDismiss()
  {
    this.SY = true;
    this.Pj.close();
    if (this.Rv != null)
    {
      if (!this.Rv.isAlive()) {
        this.Rv = this.Rn.getViewTreeObserver();
      }
      this.Rv.removeGlobalOnLayoutListener(this.Ri);
      this.Rv = null;
    }
    this.Rn.removeOnAttachStateChangeListener(this.Rj);
    if (this.Rw != null) {
      this.Rw.onDismiss();
    }
  }
  
  public final boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramKeyEvent.getAction() == 1) && (paramInt == 82))
    {
      dismiss();
      return true;
    }
    return false;
  }
  
  public final void setAnchorView(View paramView)
  {
    this.mc = paramView;
  }
  
  public final void setForceShowIcon(boolean paramBoolean)
  {
    this.SV.Rt = paramBoolean;
  }
  
  public final void setGravity(int paramInt)
  {
    this.Rm = paramInt;
  }
  
  public final void setHorizontalOffset(int paramInt)
  {
    this.SX.acM = paramInt;
  }
  
  public final void setOnDismissListener(PopupWindow.OnDismissListener paramOnDismissListener)
  {
    this.Rw = paramOnDismissListener;
  }
  
  public final void setVerticalOffset(int paramInt)
  {
    this.SX.setVerticalOffset(paramInt);
  }
  
  public final void show()
  {
    int j = 1;
    int i;
    if (isShowing()) {
      i = j;
    }
    while (i == 0)
    {
      throw new IllegalStateException("StandardMenuPopup cannot be used without an anchor");
      if ((this.SY) || (this.mc == null))
      {
        i = 0;
      }
      else
      {
        this.Rn = this.mc;
        this.SX.setOnDismissListener(this);
        this.SX.ada = this;
        this.SX.hv();
        Object localObject = this.Rn;
        if (this.Rv == null) {}
        for (i = 1;; i = 0)
        {
          this.Rv = ((View)localObject).getViewTreeObserver();
          if (i != 0) {
            this.Rv.addOnGlobalLayoutListener(this.Ri);
          }
          ((View)localObject).addOnAttachStateChangeListener(this.Rj);
          this.SX.acY = ((View)localObject);
          this.SX.Rm = this.Rm;
          if (!this.SZ)
          {
            this.Ta = a(this.SV, null, this.mContext, this.SW);
            this.SZ = true;
          }
          this.SX.setContentWidth(this.Ta);
          this.SX.hw();
          this.SX.SR = this.SR;
          this.SX.show();
          localObject = this.SX.acK;
          ((ListView)localObject).setOnKeyListener(this);
          if ((this.LM) && (this.Pj.Sj != null))
          {
            FrameLayout localFrameLayout = (FrameLayout)LayoutInflater.from(this.mContext).inflate(a.g.abc_popup_menu_header_item_layout, (ViewGroup)localObject, false);
            TextView localTextView = (TextView)localFrameLayout.findViewById(16908310);
            if (localTextView != null) {
              localTextView.setText(this.Pj.Sj);
            }
            localFrameLayout.setEnabled(false);
            ((ListView)localObject).addHeaderView(localFrameLayout, null, false);
          }
          this.SX.setAdapter(this.SV);
          this.SX.show();
          i = j;
          break;
        }
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/view/menu/t.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */