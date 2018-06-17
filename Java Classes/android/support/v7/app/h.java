package android.support.v7.app;

import android.content.Context;
import android.view.KeyboardShortcutGroup;
import android.view.Menu;
import android.view.Window;
import android.view.Window.Callback;
import java.util.List;

final class h
  extends j
{
  h(Context paramContext, Window paramWindow, e parame)
  {
    super(paramContext, paramWindow, parame);
  }
  
  final Window.Callback a(Window.Callback paramCallback)
  {
    return new a(paramCallback);
  }
  
  final class a
    extends j.a
  {
    a(Window.Callback paramCallback)
    {
      super(paramCallback);
    }
    
    public final void onProvideKeyboardShortcuts(List<KeyboardShortcutGroup> paramList, Menu paramMenu, int paramInt)
    {
      k.d locald = h.this.aS(0);
      if ((locald != null) && (locald.NK != null))
      {
        super.onProvideKeyboardShortcuts(paramList, locald.NK, paramInt);
        return;
      }
      super.onProvideKeyboardShortcuts(paramList, paramMenu, paramInt);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/app/h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */