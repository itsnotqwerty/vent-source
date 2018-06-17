package android.support.v7.widget;

import android.content.Context;
import android.support.v7.a.a.a;
import android.support.v7.view.g;
import android.support.v7.view.menu.h;
import android.support.v7.view.menu.h.a;
import android.support.v7.view.menu.n;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.PopupWindow.OnDismissListener;

public final class ba
{
  public final h Pj;
  private final View adt;
  public final n adu;
  public a adv;
  private final Context mContext;
  
  public ba(Context paramContext, View paramView)
  {
    this(paramContext, paramView, (byte)0);
  }
  
  private ba(Context paramContext, View paramView, byte paramByte)
  {
    this(paramContext, paramView, a.a.popupMenuStyle);
  }
  
  private ba(Context paramContext, View paramView, int paramInt)
  {
    this.mContext = paramContext;
    this.adt = paramView;
    this.Pj = new h(paramContext);
    this.Pj.a(new h.a()
    {
      public final boolean a(h paramAnonymoush, MenuItem paramAnonymousMenuItem)
      {
        if (ba.this.adv != null) {
          return ba.this.adv.onMenuItemClick(paramAnonymousMenuItem);
        }
        return false;
      }
      
      public final void b(h paramAnonymoush) {}
    });
    this.adu = new n(paramContext, this.Pj, paramView, false, paramInt, 0);
    this.adu.Rm = 0;
    this.adu.Rw = new PopupWindow.OnDismissListener()
    {
      public final void onDismiss() {}
    };
  }
  
  public final MenuInflater getMenuInflater()
  {
    return new g(this.mContext);
  }
  
  public static abstract interface a
  {
    public abstract boolean onMenuItemClick(MenuItem paramMenuItem);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/ba.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */