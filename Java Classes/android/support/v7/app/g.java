package android.support.v7.app;

import android.content.Context;
import android.content.res.Resources.NotFoundException;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v7.view.b;
import android.support.v7.view.i;
import android.support.v7.view.menu.h;
import android.support.v7.widget.bo;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import android.view.Window;
import android.view.Window.Callback;

abstract class g
  extends f
{
  private static boolean MB;
  private static final boolean MC;
  private static final int[] MD;
  CharSequence Ch;
  final Window Le;
  final Window.Callback ME;
  final Window.Callback MF;
  final e MG;
  a MH;
  MenuInflater MI;
  boolean MJ;
  boolean MK;
  boolean ML;
  boolean MM;
  boolean MN;
  private boolean MO;
  boolean MP;
  final Context mContext;
  
  static
  {
    if (Build.VERSION.SDK_INT < 21) {}
    for (boolean bool = true;; bool = false)
    {
      MC = bool;
      if ((bool) && (!MB))
      {
        Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler()
        {
          public final void uncaughtException(Thread paramAnonymousThread, Throwable paramAnonymousThrowable)
          {
            int j = 0;
            int i = j;
            Object localObject;
            if ((paramAnonymousThrowable instanceof Resources.NotFoundException))
            {
              localObject = paramAnonymousThrowable.getMessage();
              i = j;
              if (localObject != null) {
                if (!((String)localObject).contains("drawable"))
                {
                  i = j;
                  if (!((String)localObject).contains("Drawable")) {}
                }
                else
                {
                  i = 1;
                }
              }
            }
            if (i != 0)
            {
              localObject = new Resources.NotFoundException(paramAnonymousThrowable.getMessage() + ". If the resource you are trying to use is a vector resource, you may be referencing it in an unsupported way. See AppCompatDelegate.setCompatVectorFromResourcesEnabled() for more info.");
              ((Throwable)localObject).initCause(paramAnonymousThrowable.getCause());
              ((Throwable)localObject).setStackTrace(paramAnonymousThrowable.getStackTrace());
              this.MQ.uncaughtException(paramAnonymousThread, (Throwable)localObject);
              return;
            }
            this.MQ.uncaughtException(paramAnonymousThread, paramAnonymousThrowable);
          }
        });
        MB = true;
      }
      MD = new int[] { 16842836 };
      return;
    }
  }
  
  g(Context paramContext, Window paramWindow, e parame)
  {
    this.mContext = paramContext;
    this.Le = paramWindow;
    this.MG = parame;
    this.ME = this.Le.getCallback();
    if ((this.ME instanceof b)) {
      throw new IllegalStateException("AppCompat has already installed itself into the Window");
    }
    this.MF = a(this.ME);
    this.Le.setCallback(this.MF);
    paramContext = bo.a(paramContext, null, MD);
    paramWindow = paramContext.ch(0);
    if (paramWindow != null) {
      this.Le.setBackgroundDrawable(paramWindow);
    }
    paramContext.ajT.recycle();
  }
  
  Window.Callback a(Window.Callback paramCallback)
  {
    return new b(paramCallback);
  }
  
  abstract void aP(int paramInt);
  
  abstract boolean aQ(int paramInt);
  
  abstract b b(android.support.v7.view.b.a parama);
  
  abstract boolean dispatchKeyEvent(KeyEvent paramKeyEvent);
  
  public boolean ew()
  {
    return false;
  }
  
  abstract void ey();
  
  final Context ez()
  {
    Context localContext = null;
    Object localObject = getSupportActionBar();
    if (localObject != null) {
      localContext = ((a)localObject).getThemedContext();
    }
    localObject = localContext;
    if (localContext == null) {
      localObject = this.mContext;
    }
    return (Context)localObject;
  }
  
  public final b.a getDrawerToggleDelegate()
  {
    return new a();
  }
  
  public final MenuInflater getMenuInflater()
  {
    if (this.MI == null)
    {
      ey();
      if (this.MH == null) {
        break label43;
      }
    }
    label43:
    for (Context localContext = this.MH.getThemedContext();; localContext = this.mContext)
    {
      this.MI = new android.support.v7.view.g(localContext);
      return this.MI;
    }
  }
  
  public final a getSupportActionBar()
  {
    ey();
    return this.MH;
  }
  
  abstract void l(CharSequence paramCharSequence);
  
  public void onDestroy()
  {
    this.MP = true;
  }
  
  abstract boolean onKeyShortcut(int paramInt, KeyEvent paramKeyEvent);
  
  public void onSaveInstanceState(Bundle paramBundle) {}
  
  public void onStart()
  {
    this.MO = true;
  }
  
  public void onStop()
  {
    this.MO = false;
  }
  
  public final void setTitle(CharSequence paramCharSequence)
  {
    this.Ch = paramCharSequence;
    l(paramCharSequence);
  }
  
  private final class a
    implements b.a
  {
    a() {}
  }
  
  class b
    extends i
  {
    b(Window.Callback paramCallback)
    {
      super();
    }
    
    public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
    {
      return (g.this.dispatchKeyEvent(paramKeyEvent)) || (super.dispatchKeyEvent(paramKeyEvent));
    }
    
    public boolean dispatchKeyShortcutEvent(KeyEvent paramKeyEvent)
    {
      return (super.dispatchKeyShortcutEvent(paramKeyEvent)) || (g.this.onKeyShortcut(paramKeyEvent.getKeyCode(), paramKeyEvent));
    }
    
    public void onContentChanged() {}
    
    public boolean onCreatePanelMenu(int paramInt, Menu paramMenu)
    {
      if ((paramInt == 0) && (!(paramMenu instanceof h))) {
        return false;
      }
      return super.onCreatePanelMenu(paramInt, paramMenu);
    }
    
    public boolean onMenuOpened(int paramInt, Menu paramMenu)
    {
      super.onMenuOpened(paramInt, paramMenu);
      g.this.aQ(paramInt);
      return true;
    }
    
    public void onPanelClosed(int paramInt, Menu paramMenu)
    {
      super.onPanelClosed(paramInt, paramMenu);
      g.this.aP(paramInt);
    }
    
    public boolean onPreparePanel(int paramInt, View paramView, Menu paramMenu)
    {
      h localh;
      boolean bool1;
      if ((paramMenu instanceof h))
      {
        localh = (h)paramMenu;
        if ((paramInt != 0) || (localh != null)) {
          break label34;
        }
        bool1 = false;
      }
      label34:
      boolean bool2;
      do
      {
        return bool1;
        localh = null;
        break;
        if (localh != null) {
          localh.Su = true;
        }
        bool2 = super.onPreparePanel(paramInt, paramView, paramMenu);
        bool1 = bool2;
      } while (localh == null);
      localh.Su = false;
      return bool2;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/app/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */