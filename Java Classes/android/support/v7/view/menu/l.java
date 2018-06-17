package android.support.v7.view.menu;

import android.content.Context;
import android.support.v4.b.a.b;
import android.support.v4.view.c.b;
import android.view.ActionProvider;
import android.view.ActionProvider.VisibilityListener;
import android.view.MenuItem;
import android.view.View;

final class l
  extends k
{
  l(Context paramContext, b paramb)
  {
    super(paramContext, paramb);
  }
  
  final k.a a(ActionProvider paramActionProvider)
  {
    return new a(this.mContext, paramActionProvider);
  }
  
  final class a
    extends k.a
    implements ActionProvider.VisibilityListener
  {
    c.b SP;
    
    public a(Context paramContext, ActionProvider paramActionProvider)
    {
      super(paramContext, paramActionProvider);
    }
    
    public final void a(c.b paramb)
    {
      this.SP = paramb;
      this.SM.setVisibilityListener(this);
    }
    
    public final boolean isVisible()
    {
      return this.SM.isVisible();
    }
    
    public final void onActionProviderVisibilityChanged(boolean paramBoolean)
    {
      if (this.SP != null) {
        this.SP.dL();
      }
    }
    
    public final View onCreateActionView(MenuItem paramMenuItem)
    {
      return this.SM.onCreateActionView(paramMenuItem);
    }
    
    public final boolean overridesItemVisibility()
    {
      return this.SM.overridesItemVisibility();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/view/menu/l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */