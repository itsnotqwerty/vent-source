package android.support.v7.view;

import android.content.Context;
import android.support.v7.view.menu.h;
import android.support.v7.view.menu.h.a;
import android.support.v7.widget.ActionBarContextView;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import java.lang.ref.WeakReference;

public final class e
  extends b
  implements h.a
{
  private ActionBarContextView OL;
  private h Pj;
  private b.a Pk;
  private WeakReference<View> Pl;
  private boolean Pw;
  private boolean Px;
  private Context mContext;
  
  public e(Context paramContext, ActionBarContextView paramActionBarContextView, b.a parama, boolean paramBoolean)
  {
    this.mContext = paramContext;
    this.OL = paramActionBarContextView;
    this.Pk = parama;
    paramContext = new h(paramActionBarContextView.getContext());
    paramContext.Sh = 1;
    this.Pj = paramContext;
    this.Pj.a(this);
    this.Px = paramBoolean;
  }
  
  public final boolean a(h paramh, MenuItem paramMenuItem)
  {
    return this.Pk.a(this, paramMenuItem);
  }
  
  public final void b(h paramh)
  {
    invalidate();
    this.OL.showOverflowMenu();
  }
  
  public final void finish()
  {
    if (this.Pw) {
      return;
    }
    this.Pw = true;
    this.OL.sendAccessibilityEvent(32);
    this.Pk.a(this);
  }
  
  public final View getCustomView()
  {
    if (this.Pl != null) {
      return (View)this.Pl.get();
    }
    return null;
  }
  
  public final Menu getMenu()
  {
    return this.Pj;
  }
  
  public final MenuInflater getMenuInflater()
  {
    return new g(this.OL.getContext());
  }
  
  public final CharSequence getSubtitle()
  {
    return this.OL.getSubtitle();
  }
  
  public final CharSequence getTitle()
  {
    return this.OL.getTitle();
  }
  
  public final void invalidate()
  {
    this.Pk.b(this, this.Pj);
  }
  
  public final boolean isTitleOptional()
  {
    return this.OL.Tx;
  }
  
  public final void setCustomView(View paramView)
  {
    this.OL.setCustomView(paramView);
    if (paramView != null) {}
    for (paramView = new WeakReference(paramView);; paramView = null)
    {
      this.Pl = paramView;
      return;
    }
  }
  
  public final void setSubtitle(int paramInt)
  {
    setSubtitle(this.mContext.getString(paramInt));
  }
  
  public final void setSubtitle(CharSequence paramCharSequence)
  {
    this.OL.setSubtitle(paramCharSequence);
  }
  
  public final void setTitle(int paramInt)
  {
    setTitle(this.mContext.getString(paramInt));
  }
  
  public final void setTitle(CharSequence paramCharSequence)
  {
    this.OL.setTitle(paramCharSequence);
  }
  
  public final void setTitleOptionalHint(boolean paramBoolean)
  {
    super.setTitleOptionalHint(paramBoolean);
    this.OL.setTitleOptional(paramBoolean);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/view/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */