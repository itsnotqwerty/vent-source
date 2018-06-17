package android.support.v7.view.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

public final class u
  extends h
  implements SubMenu
{
  public h Tc;
  private j Td;
  
  public u(Context paramContext, h paramh, j paramj)
  {
    super(paramContext);
    this.Tc = paramh;
    this.Td = paramj;
  }
  
  public final void a(h.a parama)
  {
    this.Tc.a(parama);
  }
  
  final boolean d(h paramh, MenuItem paramMenuItem)
  {
    return (super.d(paramh, paramMenuItem)) || (this.Tc.d(paramh, paramMenuItem));
  }
  
  public final boolean f(j paramj)
  {
    return this.Tc.f(paramj);
  }
  
  public final String fg()
  {
    if (this.Td != null) {}
    for (int i = this.Td.getItemId(); i == 0; i = 0) {
      return null;
    }
    return super.fg() + ":" + i;
  }
  
  public final boolean fh()
  {
    return this.Tc.fh();
  }
  
  public final boolean fi()
  {
    return this.Tc.fi();
  }
  
  public final h fq()
  {
    return this.Tc.fq();
  }
  
  public final boolean g(j paramj)
  {
    return this.Tc.g(paramj);
  }
  
  public final MenuItem getItem()
  {
    return this.Td;
  }
  
  public final SubMenu setHeaderIcon(int paramInt)
  {
    super.a(0, null, paramInt, null, null);
    return (SubMenu)this;
  }
  
  public final SubMenu setHeaderIcon(Drawable paramDrawable)
  {
    super.a(0, null, 0, paramDrawable, null);
    return (SubMenu)this;
  }
  
  public final SubMenu setHeaderTitle(int paramInt)
  {
    super.a(paramInt, null, 0, null, null);
    return (SubMenu)this;
  }
  
  public final SubMenu setHeaderTitle(CharSequence paramCharSequence)
  {
    super.a(0, paramCharSequence, 0, null, null);
    return (SubMenu)this;
  }
  
  public final SubMenu setHeaderView(View paramView)
  {
    super.a(0, null, 0, null, paramView);
    return (SubMenu)this;
  }
  
  public final SubMenu setIcon(int paramInt)
  {
    this.Td.setIcon(paramInt);
    return this;
  }
  
  public final SubMenu setIcon(Drawable paramDrawable)
  {
    this.Td.setIcon(paramDrawable);
    return this;
  }
  
  public final void setQwertyMode(boolean paramBoolean)
  {
    this.Tc.setQwertyMode(paramBoolean);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/view/menu/u.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */