package android.support.v7.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.SystemClock;
import android.support.v4.view.r;
import android.support.v7.a.a.d;
import android.support.v7.a.a.g;
import android.support.v7.widget.av;
import android.support.v7.widget.aw;
import android.support.v7.widget.ax;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnAttachStateChangeListener;
import android.view.View.OnKeyListener;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.PopupWindow.OnDismissListener;
import android.widget.TextView;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class e
  extends m
  implements o, View.OnKeyListener, PopupWindow.OnDismissListener
{
  private boolean LM;
  private final int Rb;
  private final int Rc;
  private final int Rd;
  private final boolean Re;
  final Handler Rf;
  private final List<h> Rg = new ArrayList();
  final List<a> Rh = new ArrayList();
  private final ViewTreeObserver.OnGlobalLayoutListener Ri = new ViewTreeObserver.OnGlobalLayoutListener()
  {
    public final void onGlobalLayout()
    {
      Object localObject;
      if ((e.this.isShowing()) && (e.this.Rh.size() > 0) && (!((e.a)e.this.Rh.get(0)).RD.adi))
      {
        localObject = e.this.Rn;
        if ((localObject != null) && (((View)localObject).isShown())) {
          break label77;
        }
        e.this.dismiss();
      }
      for (;;)
      {
        return;
        label77:
        localObject = e.this.Rh.iterator();
        while (((Iterator)localObject).hasNext()) {
          ((e.a)((Iterator)localObject).next()).RD.show();
        }
      }
    }
  };
  private final View.OnAttachStateChangeListener Rj = new View.OnAttachStateChangeListener()
  {
    public final void onViewAttachedToWindow(View paramAnonymousView) {}
    
    public final void onViewDetachedFromWindow(View paramAnonymousView)
    {
      if (e.a(e.this) != null)
      {
        if (!e.a(e.this).isAlive()) {
          e.a(e.this, paramAnonymousView.getViewTreeObserver());
        }
        e.a(e.this).removeGlobalOnLayoutListener(e.b(e.this));
      }
      paramAnonymousView.removeOnAttachStateChangeListener(this);
    }
  };
  private final aw Rk = new aw()
  {
    public final void b(h paramAnonymoush, MenuItem paramAnonymousMenuItem)
    {
      e.this.Rf.removeCallbacksAndMessages(paramAnonymoush);
    }
    
    public final void c(final h paramAnonymoush, final MenuItem paramAnonymousMenuItem)
    {
      e.this.Rf.removeCallbacksAndMessages(null);
      int i = 0;
      int j = e.this.Rh.size();
      if (i < j) {
        if (paramAnonymoush != ((e.a)e.this.Rh.get(i)).NK) {}
      }
      for (;;)
      {
        if (i == -1)
        {
          return;
          i += 1;
          break;
        }
        i += 1;
        if (i < e.this.Rh.size()) {}
        for (final e.a locala = (e.a)e.this.Rh.get(i);; locala = null)
        {
          paramAnonymousMenuItem = new Runnable()
          {
            public final void run()
            {
              if (locala != null)
              {
                e.this.Rx = true;
                locala.NK.I(false);
                e.this.Rx = false;
              }
              if ((paramAnonymousMenuItem.isEnabled()) && (paramAnonymousMenuItem.hasSubMenu())) {
                paramAnonymoush.a(paramAnonymousMenuItem, null, 4);
              }
            }
          };
          long l = SystemClock.uptimeMillis();
          e.this.Rf.postAtTime(paramAnonymousMenuItem, paramAnonymoush, l + 200L);
          return;
        }
        i = -1;
      }
    }
  };
  private int Rl = 0;
  private int Rm = 0;
  View Rn;
  private int Ro;
  private boolean Rp;
  private boolean Rq;
  private int Rr;
  private int Rs;
  private boolean Rt;
  private o.a Ru;
  private ViewTreeObserver Rv;
  private PopupWindow.OnDismissListener Rw;
  boolean Rx;
  private final Context mContext;
  private View mc;
  
  public e(Context paramContext, View paramView, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    this.mContext = paramContext;
    this.mc = paramView;
    this.Rc = paramInt1;
    this.Rd = paramInt2;
    this.Re = paramBoolean;
    this.Rt = false;
    this.Ro = fb();
    paramContext = paramContext.getResources();
    this.Rb = Math.max(paramContext.getDisplayMetrics().widthPixels / 2, paramContext.getDimensionPixelSize(a.d.abc_config_prefDialogWidth));
    this.Rf = new Handler();
  }
  
  private int fb()
  {
    int i = 1;
    if (r.K(this.mc) == 1) {
      i = 0;
    }
    return i;
  }
  
  private void g(h paramh)
  {
    LayoutInflater localLayoutInflater = LayoutInflater.from(this.mContext);
    Object localObject1 = new g(paramh, localLayoutInflater, this.Re);
    int m;
    ax localax;
    Object localObject3;
    Object localObject2;
    int j;
    int i;
    if ((!isShowing()) && (this.Rt))
    {
      ((g)localObject1).Rt = true;
      m = a((ListAdapter)localObject1, null, this.mContext, this.Rb);
      localax = new ax(this.mContext, this.Rc, this.Rd);
      localax.adm = this.Rk;
      localax.ada = this;
      localax.setOnDismissListener(this);
      localax.acY = this.mc;
      localax.Rm = this.Rm;
      localax.hv();
      localax.hw();
      localax.setAdapter((ListAdapter)localObject1);
      localax.setContentWidth(m);
      localax.Rm = this.Rm;
      if (this.Rh.size() <= 0) {
        break label777;
      }
      localObject3 = (a)this.Rh.get(this.Rh.size() - 1);
      localObject2 = ((a)localObject3).NK;
      j = ((h)localObject2).size();
      i = 0;
      label206:
      if (i >= j) {
        break label627;
      }
      localObject1 = ((h)localObject2).getItem(i);
      if ((!((MenuItem)localObject1).hasSubMenu()) || (paramh != ((MenuItem)localObject1).getSubMenu())) {
        break label620;
      }
      label240:
      if (localObject1 != null) {
        break label633;
      }
      localObject1 = null;
      label248:
      localObject2 = localObject1;
      localObject1 = localObject3;
      if (localObject2 == null) {
        break label952;
      }
      if (ax.adl == null) {}
    }
    for (;;)
    {
      try
      {
        ax.adl.invoke(localax.adj, new Object[] { Boolean.valueOf(false) });
        if (Build.VERSION.SDK_INT >= 23) {
          localax.adj.setEnterTransition(null);
        }
        localObject3 = ((a)this.Rh.get(this.Rh.size() - 1)).RD.acK;
        localObject4 = new int[2];
        ((ListView)localObject3).getLocationOnScreen((int[])localObject4);
        Rect localRect = new Rect();
        this.Rn.getWindowVisibleDisplayFrame(localRect);
        if (this.Ro == 1)
        {
          i = localObject4[0];
          if (((ListView)localObject3).getWidth() + i + m > localRect.right) {
            continue;
          }
          i = 1;
          if (i != 1) {
            continue;
          }
          k = 1;
          this.Ro = i;
          if (Build.VERSION.SDK_INT < 26) {
            continue;
          }
          localax.acY = ((View)localObject2);
          i = 0;
          j = 0;
          if ((this.Rm & 0x5) != 5) {
            continue;
          }
          if (k == 0) {
            continue;
          }
          i += m;
          localax.acM = i;
          localax.acR = true;
          localax.Wo = true;
          localax.setVerticalOffset(j);
          localObject2 = new a(localax, paramh, this.Ro);
          this.Rh.add(localObject2);
          localax.show();
          localObject2 = localax.acK;
          ((ListView)localObject2).setOnKeyListener(this);
          if ((localObject1 == null) && (this.LM) && (paramh.Sj != null))
          {
            localObject1 = (FrameLayout)localLayoutInflater.inflate(a.g.abc_popup_menu_header_item_layout, (ViewGroup)localObject2, false);
            localObject3 = (TextView)((FrameLayout)localObject1).findViewById(16908310);
            ((FrameLayout)localObject1).setEnabled(false);
            ((TextView)localObject3).setText(paramh.Sj);
            ((ListView)localObject2).addHeaderView((View)localObject1, null, false);
            localax.show();
          }
          return;
          if (!isShowing()) {
            break;
          }
          ((g)localObject1).Rt = m.h(paramh);
          break;
          label620:
          i += 1;
          break label206;
          label627:
          localObject1 = null;
          break label240;
          label633:
          localObject4 = ((a)localObject3).RD.acK;
          localObject2 = ((ListView)localObject4).getAdapter();
          if ((localObject2 instanceof HeaderViewListAdapter))
          {
            localObject2 = (HeaderViewListAdapter)localObject2;
            j = ((HeaderViewListAdapter)localObject2).getHeadersCount();
            localObject2 = (g)((HeaderViewListAdapter)localObject2).getWrappedAdapter();
            i = 0;
            k = ((g)localObject2).getCount();
            if (i >= k) {
              break label996;
            }
            if (localObject1 != ((g)localObject2).aW(i)) {
              continue;
            }
            if (i != -1) {
              continue;
            }
            localObject1 = null;
            break label248;
          }
          j = 0;
          localObject2 = (g)localObject2;
          continue;
          i += 1;
          continue;
          i = i + j - ((ListView)localObject4).getFirstVisiblePosition();
          if ((i < 0) || (i >= ((ListView)localObject4).getChildCount()))
          {
            localObject1 = null;
            break label248;
          }
          localObject1 = ((ListView)localObject4).getChildAt(i);
          break label248;
          label777:
          localObject2 = null;
          localObject1 = null;
        }
      }
      catch (Exception localException)
      {
        Log.i("MenuPopupWindow", "Could not invoke setTouchModal() on PopupWindow. Oh well.");
        continue;
        if (localObject4[0] - m < 0)
        {
          i = 1;
          continue;
        }
        i = 0;
        continue;
        int k = 0;
        continue;
        int[] arrayOfInt = new int[2];
        this.mc.getLocationOnScreen(arrayOfInt);
        Object localObject4 = new int[2];
        ((View)localObject2).getLocationOnScreen((int[])localObject4);
        if ((this.Rm & 0x7) == 5)
        {
          arrayOfInt[0] += this.mc.getWidth();
          localObject4[0] += ((View)localObject2).getWidth();
        }
        i = localObject4[0] - arrayOfInt[0];
        j = localObject4[1] - arrayOfInt[1];
        continue;
        i -= ((View)localObject2).getWidth();
        continue;
        if (k != 0)
        {
          i = ((View)localObject2).getWidth() + i;
          continue;
        }
        i -= m;
        continue;
      }
      label952:
      if (this.Rp) {
        localax.acM = this.Rr;
      }
      if (this.Rq) {
        localax.setVerticalOffset(this.Rs);
      }
      localax.SR = this.SR;
      continue;
      label996:
      i = -1;
    }
  }
  
  public final void G(boolean paramBoolean)
  {
    Iterator localIterator = this.Rh.iterator();
    while (localIterator.hasNext()) {
      a(((a)localIterator.next()).RD.acK.getAdapter()).notifyDataSetChanged();
    }
  }
  
  public final void H(boolean paramBoolean)
  {
    this.LM = paramBoolean;
  }
  
  public final void a(h paramh, boolean paramBoolean)
  {
    int j = this.Rh.size();
    int i = 0;
    if (i < j) {
      if (paramh == ((a)this.Rh.get(i)).NK) {
        label39:
        if (i >= 0) {
          break label56;
        }
      }
    }
    label56:
    do
    {
      return;
      i += 1;
      break;
      i = -1;
      break label39;
      j = i + 1;
      if (j < this.Rh.size()) {
        ((a)this.Rh.get(j)).NK.I(false);
      }
      a locala = (a)this.Rh.remove(i);
      locala.NK.b(this);
      if (this.Rx)
      {
        ax localax = locala.RD;
        if (Build.VERSION.SDK_INT >= 23) {
          localax.adj.setExitTransition(null);
        }
        locala.RD.adj.setAnimationStyle(0);
      }
      locala.RD.dismiss();
      i = this.Rh.size();
      if (i > 0) {}
      for (this.Ro = ((a)this.Rh.get(i - 1)).position; i == 0; this.Ro = fb())
      {
        dismiss();
        if (this.Ru != null) {
          this.Ru.a(paramh, true);
        }
        if (this.Rv != null)
        {
          if (this.Rv.isAlive()) {
            this.Rv.removeGlobalOnLayoutListener(this.Ri);
          }
          this.Rv = null;
        }
        this.Rn.removeOnAttachStateChangeListener(this.Rj);
        this.Rw.onDismiss();
        return;
      }
    } while (!paramBoolean);
    ((a)this.Rh.get(0)).NK.I(false);
  }
  
  public final void a(o.a parama)
  {
    this.Ru = parama;
  }
  
  public final boolean a(u paramu)
  {
    Iterator localIterator = this.Rh.iterator();
    while (localIterator.hasNext())
    {
      a locala = (a)localIterator.next();
      if (paramu == locala.NK)
      {
        locala.RD.acK.requestFocus();
        return true;
      }
    }
    if (paramu.hasVisibleItems())
    {
      f(paramu);
      if (this.Ru != null) {
        this.Ru.d(paramu);
      }
      return true;
    }
    return false;
  }
  
  public final void dismiss()
  {
    int i = this.Rh.size();
    if (i > 0)
    {
      a[] arrayOfa = (a[])this.Rh.toArray(new a[i]);
      i -= 1;
      while (i >= 0)
      {
        a locala = arrayOfa[i];
        if (locala.RD.adj.isShowing()) {
          locala.RD.dismiss();
        }
        i -= 1;
      }
    }
  }
  
  public final void f(h paramh)
  {
    paramh.a(this, this.mContext);
    if (isShowing())
    {
      g(paramh);
      return;
    }
    this.Rg.add(paramh);
  }
  
  public final boolean fa()
  {
    return false;
  }
  
  protected final boolean fc()
  {
    return false;
  }
  
  public final ListView getListView()
  {
    if (this.Rh.isEmpty()) {
      return null;
    }
    return ((a)this.Rh.get(this.Rh.size() - 1)).RD.acK;
  }
  
  public final boolean isShowing()
  {
    return (this.Rh.size() > 0) && (((a)this.Rh.get(0)).RD.adj.isShowing());
  }
  
  public final void onDismiss()
  {
    int j = this.Rh.size();
    int i = 0;
    a locala;
    if (i < j)
    {
      locala = (a)this.Rh.get(i);
      if (locala.RD.adj.isShowing()) {}
    }
    for (;;)
    {
      if (locala != null) {
        locala.NK.I(false);
      }
      return;
      i += 1;
      break;
      locala = null;
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
    if (this.mc != paramView)
    {
      this.mc = paramView;
      this.Rm = android.support.v4.view.e.getAbsoluteGravity(this.Rl, r.K(this.mc));
    }
  }
  
  public final void setForceShowIcon(boolean paramBoolean)
  {
    this.Rt = paramBoolean;
  }
  
  public final void setGravity(int paramInt)
  {
    if (this.Rl != paramInt)
    {
      this.Rl = paramInt;
      this.Rm = android.support.v4.view.e.getAbsoluteGravity(paramInt, r.K(this.mc));
    }
  }
  
  public final void setHorizontalOffset(int paramInt)
  {
    this.Rp = true;
    this.Rr = paramInt;
  }
  
  public final void setOnDismissListener(PopupWindow.OnDismissListener paramOnDismissListener)
  {
    this.Rw = paramOnDismissListener;
  }
  
  public final void setVerticalOffset(int paramInt)
  {
    this.Rq = true;
    this.Rs = paramInt;
  }
  
  public final void show()
  {
    if (isShowing()) {}
    do
    {
      return;
      Iterator localIterator = this.Rg.iterator();
      while (localIterator.hasNext()) {
        g((h)localIterator.next());
      }
      this.Rg.clear();
      this.Rn = this.mc;
    } while (this.Rn == null);
    if (this.Rv == null) {}
    for (int i = 1;; i = 0)
    {
      this.Rv = this.Rn.getViewTreeObserver();
      if (i != 0) {
        this.Rv.addOnGlobalLayoutListener(this.Ri);
      }
      this.Rn.addOnAttachStateChangeListener(this.Rj);
      return;
    }
  }
  
  private static final class a
  {
    public final h NK;
    public final ax RD;
    public final int position;
    
    public a(ax paramax, h paramh, int paramInt)
    {
      this.RD = paramax;
      this.NK = paramh;
      this.position = paramInt;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/view/menu/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */