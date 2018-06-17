package android.support.design.widget;

import android.view.View;

final class r
{
  private final View mView;
  int qf;
  private int qg;
  int qh;
  int qi;
  
  public r(View paramView)
  {
    this.mView = paramView;
  }
  
  public final void cc()
  {
    this.qf = this.mView.getTop();
    this.qg = this.mView.getLeft();
    cd();
  }
  
  final void cd()
  {
    android.support.v4.view.r.m(this.mView, this.qh - (this.mView.getTop() - this.qf));
    android.support.v4.view.r.n(this.mView, this.qi - (this.mView.getLeft() - this.qg));
  }
  
  public final boolean r(int paramInt)
  {
    if (this.qh != paramInt)
    {
      this.qh = paramInt;
      cd();
      return true;
    }
    return false;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/design/widget/r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */