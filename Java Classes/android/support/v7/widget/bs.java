package android.support.v7.widget;

import android.content.Context;
import android.graphics.Rect;
import android.support.v7.a.a.f;
import android.support.v7.a.a.g;
import android.support.v7.a.a.i;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.TextView;

final class bs
{
  final View OM;
  final WindowManager.LayoutParams aku = new WindowManager.LayoutParams();
  final Rect akv = new Rect();
  final int[] akw = new int[2];
  final int[] akx = new int[2];
  final TextView ix;
  final Context mContext;
  
  bs(Context paramContext)
  {
    this.mContext = paramContext;
    this.OM = LayoutInflater.from(this.mContext).inflate(a.g.abc_tooltip, null);
    this.ix = ((TextView)this.OM.findViewById(a.f.message));
    this.aku.setTitle(getClass().getSimpleName());
    this.aku.packageName = this.mContext.getPackageName();
    this.aku.type = 1002;
    this.aku.width = -2;
    this.aku.height = -2;
    this.aku.format = -3;
    this.aku.windowAnimations = a.i.Animation_AppCompat_Tooltip;
    this.aku.flags = 24;
  }
  
  final void hide()
  {
    if (!isShowing()) {
      return;
    }
    ((WindowManager)this.mContext.getSystemService("window")).removeView(this.OM);
  }
  
  final boolean isShowing()
  {
    return this.OM.getParent() != null;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/bs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */