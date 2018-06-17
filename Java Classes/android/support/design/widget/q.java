package android.support.design.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;

class q<V extends View>
  extends CoordinatorLayout.b<V>
{
  private r qc;
  private int qd = 0;
  private int qe = 0;
  
  public q() {}
  
  public q(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public boolean a(CoordinatorLayout paramCoordinatorLayout, V paramV, int paramInt)
  {
    d(paramCoordinatorLayout, paramV, paramInt);
    if (this.qc == null) {
      this.qc = new r(paramV);
    }
    this.qc.cc();
    if (this.qd != 0)
    {
      this.qc.r(this.qd);
      this.qd = 0;
    }
    if (this.qe != 0)
    {
      paramCoordinatorLayout = this.qc;
      paramInt = this.qe;
      if (paramCoordinatorLayout.qi != paramInt)
      {
        paramCoordinatorLayout.qi = paramInt;
        paramCoordinatorLayout.cd();
      }
      this.qe = 0;
    }
    return true;
  }
  
  public int be()
  {
    if (this.qc != null) {
      return this.qc.qh;
    }
    return 0;
  }
  
  protected void d(CoordinatorLayout paramCoordinatorLayout, V paramV, int paramInt)
  {
    paramCoordinatorLayout.e(paramV, paramInt);
  }
  
  public boolean r(int paramInt)
  {
    if (this.qc != null) {
      return this.qc.r(paramInt);
    }
    this.qd = paramInt;
    return false;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/design/widget/q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */