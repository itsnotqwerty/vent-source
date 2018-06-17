package android.support.v7.app;

import android.app.UiModeManager;
import android.content.Context;
import android.view.ActionMode;
import android.view.ActionMode.Callback;
import android.view.Window;
import android.view.Window.Callback;

class j
  extends i
{
  private final UiModeManager Nd;
  
  j(Context paramContext, Window paramWindow, e parame)
  {
    super(paramContext, paramWindow, parame);
    this.Nd = ((UiModeManager)paramContext.getSystemService("uimode"));
  }
  
  Window.Callback a(Window.Callback paramCallback)
  {
    return new a(paramCallback);
  }
  
  final int aR(int paramInt)
  {
    if ((paramInt == 0) && (this.Nd.getNightMode() == 0)) {
      return -1;
    }
    return super.aR(paramInt);
  }
  
  class a
    extends i.a
  {
    a(Window.Callback paramCallback)
    {
      super(paramCallback);
    }
    
    public ActionMode onWindowStartingActionMode(ActionMode.Callback paramCallback)
    {
      return null;
    }
    
    public ActionMode onWindowStartingActionMode(ActionMode.Callback paramCallback, int paramInt)
    {
      if (j.this.MV) {}
      switch (paramInt)
      {
      default: 
        return super.onWindowStartingActionMode(paramCallback, paramInt);
      }
      return a(paramCallback);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/app/j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */