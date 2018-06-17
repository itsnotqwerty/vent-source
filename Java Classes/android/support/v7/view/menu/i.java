package android.support.v7.view.menu;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.DialogInterface.OnKeyListener;
import android.support.v7.app.c;
import android.view.KeyEvent;
import android.view.KeyEvent.DispatcherState;
import android.view.View;
import android.view.Window;
import android.widget.ListAdapter;

final class i
  implements DialogInterface.OnClickListener, DialogInterface.OnDismissListener, DialogInterface.OnKeyListener, o.a
{
  h Pj;
  private o.a Ru;
  c Sv;
  f Sw;
  
  public i(h paramh)
  {
    this.Pj = paramh;
  }
  
  public final void a(h paramh, boolean paramBoolean)
  {
    if (((paramBoolean) || (paramh == this.Pj)) && (this.Sv != null)) {
      this.Sv.dismiss();
    }
    if (this.Ru != null) {
      this.Ru.a(paramh, paramBoolean);
    }
  }
  
  public final boolean d(h paramh)
  {
    if (this.Ru != null) {
      return this.Ru.d(paramh);
    }
    return false;
  }
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.Pj.a((j)this.Sw.getAdapter().getItem(paramInt), null, 0);
  }
  
  public final void onDismiss(DialogInterface paramDialogInterface)
  {
    this.Sw.a(this.Pj, true);
  }
  
  public final boolean onKey(DialogInterface paramDialogInterface, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 82) || (paramInt == 4)) {
      if ((paramKeyEvent.getAction() == 0) && (paramKeyEvent.getRepeatCount() == 0))
      {
        paramDialogInterface = this.Sv.getWindow();
        if (paramDialogInterface != null)
        {
          paramDialogInterface = paramDialogInterface.getDecorView();
          if (paramDialogInterface != null)
          {
            paramDialogInterface = paramDialogInterface.getKeyDispatcherState();
            if (paramDialogInterface != null)
            {
              paramDialogInterface.startTracking(paramKeyEvent, this);
              return true;
            }
          }
        }
      }
      else if ((paramKeyEvent.getAction() == 1) && (!paramKeyEvent.isCanceled()))
      {
        Object localObject = this.Sv.getWindow();
        if (localObject != null)
        {
          localObject = ((Window)localObject).getDecorView();
          if (localObject != null)
          {
            localObject = ((View)localObject).getKeyDispatcherState();
            if ((localObject != null) && (((KeyEvent.DispatcherState)localObject).isTracking(paramKeyEvent)))
            {
              this.Pj.I(true);
              paramDialogInterface.dismiss();
              return true;
            }
          }
        }
      }
    }
    return this.Pj.performShortcut(paramInt, paramKeyEvent, 0);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/view/menu/i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */