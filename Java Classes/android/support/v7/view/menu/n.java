package android.support.v7.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.support.v4.view.r;
import android.support.v7.a.a.d;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow.OnDismissListener;

public class n
{
  private final h Pj;
  private final int Rc;
  private final int Rd;
  private final boolean Re;
  public int Rm = 8388611;
  private boolean Rt;
  private o.a Ru;
  public PopupWindow.OnDismissListener Rw;
  private m SS;
  private final PopupWindow.OnDismissListener ST = new PopupWindow.OnDismissListener()
  {
    public final void onDismiss()
    {
      n.this.onDismiss();
    }
  };
  private final Context mContext;
  protected View mc;
  
  public n(Context paramContext, h paramh, View paramView, boolean paramBoolean, int paramInt)
  {
    this(paramContext, paramh, paramView, paramBoolean, paramInt, 0);
  }
  
  public n(Context paramContext, h paramh, View paramView, boolean paramBoolean, int paramInt1, int paramInt2)
  {
    this.mContext = paramContext;
    this.Pj = paramh;
    this.mc = paramView;
    this.Re = paramBoolean;
    this.Rc = paramInt1;
    this.Rd = paramInt2;
  }
  
  final void a(int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2)
  {
    m localm = fz();
    localm.H(paramBoolean2);
    if (paramBoolean1)
    {
      int i = paramInt1;
      if ((android.support.v4.view.e.getAbsoluteGravity(this.Rm, r.K(this.mc)) & 0x7) == 5) {
        i = paramInt1 + this.mc.getWidth();
      }
      localm.setHorizontalOffset(i);
      localm.setVerticalOffset(paramInt2);
      paramInt1 = (int)(this.mContext.getResources().getDisplayMetrics().density * 48.0F / 2.0F);
      localm.SR = new Rect(i - paramInt1, paramInt2 - paramInt1, i + paramInt1, paramInt1 + paramInt2);
    }
    localm.show();
  }
  
  public final void b(o.a parama)
  {
    this.Ru = parama;
    if (this.SS != null) {
      this.SS.a(parama);
    }
  }
  
  public final void dismiss()
  {
    if (isShowing()) {
      this.SS.dismiss();
    }
  }
  
  public final boolean fA()
  {
    if (isShowing()) {
      return true;
    }
    if (this.mc == null) {
      return false;
    }
    a(0, 0, false, false);
    return true;
  }
  
  public final m fz()
  {
    Point localPoint;
    int i;
    if (this.SS == null)
    {
      localObject = ((WindowManager)this.mContext.getSystemService("window")).getDefaultDisplay();
      localPoint = new Point();
      if (Build.VERSION.SDK_INT < 17) {
        break label165;
      }
      ((Display)localObject).getRealSize(localPoint);
      if (Math.min(localPoint.x, localPoint.y) < this.mContext.getResources().getDimensionPixelSize(a.d.abc_cascading_menus_min_smallest_width)) {
        break label173;
      }
      i = 1;
      label75:
      if (i == 0) {
        break label178;
      }
    }
    label165:
    label173:
    label178:
    for (Object localObject = new e(this.mContext, this.mc, this.Rc, this.Rd, this.Re);; localObject = new t(this.mContext, this.Pj, this.mc, this.Rc, this.Rd, this.Re))
    {
      ((m)localObject).f(this.Pj);
      ((m)localObject).setOnDismissListener(this.ST);
      ((m)localObject).setAnchorView(this.mc);
      ((m)localObject).a(this.Ru);
      ((m)localObject).setForceShowIcon(this.Rt);
      ((m)localObject).setGravity(this.Rm);
      this.SS = ((m)localObject);
      return this.SS;
      ((Display)localObject).getSize(localPoint);
      break;
      i = 0;
      break label75;
    }
  }
  
  public final boolean isShowing()
  {
    return (this.SS != null) && (this.SS.isShowing());
  }
  
  protected void onDismiss()
  {
    this.SS = null;
    if (this.Rw != null) {
      this.Rw.onDismiss();
    }
  }
  
  public final void setForceShowIcon(boolean paramBoolean)
  {
    this.Rt = paramBoolean;
    if (this.SS != null) {
      this.SS.setForceShowIcon(paramBoolean);
    }
  }
  
  public final void show()
  {
    if (!fA()) {
      throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/view/menu/n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */