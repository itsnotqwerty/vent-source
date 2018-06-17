package android.support.v7.view;

import android.content.Context;
import android.support.v4.b.a.a;
import android.support.v4.g.m;
import android.support.v7.view.menu.q;
import android.view.ActionMode;
import android.view.ActionMode.Callback;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import java.util.ArrayList;

public final class f
  extends ActionMode
{
  final b Py;
  final Context mContext;
  
  public f(Context paramContext, b paramb)
  {
    this.mContext = paramContext;
    this.Py = paramb;
  }
  
  public final void finish()
  {
    this.Py.finish();
  }
  
  public final View getCustomView()
  {
    return this.Py.getCustomView();
  }
  
  public final Menu getMenu()
  {
    return q.a(this.mContext, (a)this.Py.getMenu());
  }
  
  public final MenuInflater getMenuInflater()
  {
    return this.Py.getMenuInflater();
  }
  
  public final CharSequence getSubtitle()
  {
    return this.Py.getSubtitle();
  }
  
  public final Object getTag()
  {
    return this.Py.oX;
  }
  
  public final CharSequence getTitle()
  {
    return this.Py.getTitle();
  }
  
  public final boolean getTitleOptionalHint()
  {
    return this.Py.Ps;
  }
  
  public final void invalidate()
  {
    this.Py.invalidate();
  }
  
  public final boolean isTitleOptional()
  {
    return this.Py.isTitleOptional();
  }
  
  public final void setCustomView(View paramView)
  {
    this.Py.setCustomView(paramView);
  }
  
  public final void setSubtitle(int paramInt)
  {
    this.Py.setSubtitle(paramInt);
  }
  
  public final void setSubtitle(CharSequence paramCharSequence)
  {
    this.Py.setSubtitle(paramCharSequence);
  }
  
  public final void setTag(Object paramObject)
  {
    this.Py.oX = paramObject;
  }
  
  public final void setTitle(int paramInt)
  {
    this.Py.setTitle(paramInt);
  }
  
  public final void setTitle(CharSequence paramCharSequence)
  {
    this.Py.setTitle(paramCharSequence);
  }
  
  public final void setTitleOptionalHint(boolean paramBoolean)
  {
    this.Py.setTitleOptionalHint(paramBoolean);
  }
  
  public static final class a
    implements b.a
  {
    final ArrayList<f> PA;
    final m<Menu, Menu> PB;
    final ActionMode.Callback Pz;
    final Context mContext;
    
    public a(Context paramContext, ActionMode.Callback paramCallback)
    {
      this.mContext = paramContext;
      this.Pz = paramCallback;
      this.PA = new ArrayList();
      this.PB = new m();
    }
    
    private Menu b(Menu paramMenu)
    {
      Menu localMenu2 = (Menu)this.PB.get(paramMenu);
      Menu localMenu1 = localMenu2;
      if (localMenu2 == null)
      {
        localMenu1 = q.a(this.mContext, (a)paramMenu);
        this.PB.put(paramMenu, localMenu1);
      }
      return localMenu1;
    }
    
    public final void a(b paramb)
    {
      this.Pz.onDestroyActionMode(b(paramb));
    }
    
    public final boolean a(b paramb, Menu paramMenu)
    {
      return this.Pz.onCreateActionMode(b(paramb), b(paramMenu));
    }
    
    public final boolean a(b paramb, MenuItem paramMenuItem)
    {
      return this.Pz.onActionItemClicked(b(paramb), q.a(this.mContext, (android.support.v4.b.a.b)paramMenuItem));
    }
    
    public final ActionMode b(b paramb)
    {
      int j = this.PA.size();
      int i = 0;
      while (i < j)
      {
        f localf = (f)this.PA.get(i);
        if ((localf != null) && (localf.Py == paramb)) {
          return localf;
        }
        i += 1;
      }
      paramb = new f(this.mContext, paramb);
      this.PA.add(paramb);
      return paramb;
    }
    
    public final boolean b(b paramb, Menu paramMenu)
    {
      return this.Pz.onPrepareActionMode(b(paramb), b(paramMenu));
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/view/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */