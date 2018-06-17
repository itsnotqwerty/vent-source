package android.support.v7.widget;

import android.view.View;

final class bu
{
  final b aky;
  a akz;
  
  bu(b paramb)
  {
    this.aky = paramb;
    this.akz = new a();
  }
  
  final boolean bi(View paramView)
  {
    this.akz.setBounds(this.aky.ik(), this.aky.il(), this.aky.ba(paramView), this.aky.bb(paramView));
    this.akz.akA = 0;
    this.akz.addFlags(24579);
    return this.akz.jc();
  }
  
  final View h(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int j = this.aky.ik();
    int k = this.aky.il();
    if (paramInt2 > paramInt1) {}
    Object localObject;
    View localView;
    for (int i = 1;; i = -1)
    {
      localObject = null;
      if (paramInt1 == paramInt2) {
        break label174;
      }
      localView = this.aky.getChildAt(paramInt1);
      int m = this.aky.ba(localView);
      int n = this.aky.bb(localView);
      this.akz.setBounds(j, k, m, n);
      if (paramInt3 == 0) {
        break;
      }
      this.akz.akA = 0;
      this.akz.addFlags(paramInt3);
      if (!this.akz.jc()) {
        break;
      }
      return localView;
    }
    if (paramInt4 != 0)
    {
      this.akz.akA = 0;
      this.akz.addFlags(paramInt4);
      if (this.akz.jc()) {
        localObject = localView;
      }
    }
    for (;;)
    {
      paramInt1 += i;
      break;
      label174:
      return (View)localObject;
    }
  }
  
  static final class a
  {
    int akA = 0;
    int akB;
    int akC;
    int akD;
    int akE;
    
    private static int compare(int paramInt1, int paramInt2)
    {
      if (paramInt1 > paramInt2) {
        return 1;
      }
      if (paramInt1 == paramInt2) {
        return 2;
      }
      return 4;
    }
    
    final void addFlags(int paramInt)
    {
      this.akA |= paramInt;
    }
    
    final boolean jc()
    {
      if (((this.akA & 0x7) != 0) && ((this.akA & compare(this.akD, this.akB) << 0) == 0)) {}
      while ((((this.akA & 0x70) != 0) && ((this.akA & compare(this.akD, this.akC) << 4) == 0)) || (((this.akA & 0x700) != 0) && ((this.akA & compare(this.akE, this.akB) << 8) == 0)) || (((this.akA & 0x7000) != 0) && ((this.akA & compare(this.akE, this.akC) << 12) == 0))) {
        return false;
      }
      return true;
    }
    
    final void setBounds(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      this.akB = paramInt1;
      this.akC = paramInt2;
      this.akD = paramInt3;
      this.akE = paramInt4;
    }
  }
  
  static abstract interface b
  {
    public abstract int ba(View paramView);
    
    public abstract int bb(View paramView);
    
    public abstract View getChildAt(int paramInt);
    
    public abstract int ik();
    
    public abstract int il();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/bu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */