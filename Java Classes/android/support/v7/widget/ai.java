package android.support.v7.widget;

import android.view.View;
import android.view.ViewGroup.LayoutParams;
import java.util.ArrayList;
import java.util.List;

public final class ai
{
  final a XA;
  final List<View> XB;
  final b Xz;
  
  ai(b paramb)
  {
    this.Xz = paramb;
    this.XA = new a();
    this.XB = new ArrayList();
  }
  
  final void a(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams, boolean paramBoolean)
  {
    if (paramInt < 0) {}
    for (paramInt = this.Xz.getChildCount();; paramInt = bk(paramInt))
    {
      this.XA.f(paramInt, paramBoolean);
      if (paramBoolean) {
        ay(paramView);
      }
      this.Xz.attachViewToParent(paramView, paramInt, paramLayoutParams);
      return;
    }
  }
  
  final void a(View paramView, int paramInt, boolean paramBoolean)
  {
    if (paramInt < 0) {}
    for (paramInt = this.Xz.getChildCount();; paramInt = bk(paramInt))
    {
      this.XA.f(paramInt, paramBoolean);
      if (paramBoolean) {
        ay(paramView);
      }
      this.Xz.addView(paramView, paramInt);
      return;
    }
  }
  
  final boolean aA(View paramView)
  {
    return this.XB.contains(paramView);
  }
  
  final void ay(View paramView)
  {
    this.XB.add(paramView);
    this.Xz.aC(paramView);
  }
  
  final boolean az(View paramView)
  {
    if (this.XB.remove(paramView))
    {
      this.Xz.aD(paramView);
      return true;
    }
    return false;
  }
  
  final int bk(int paramInt)
  {
    if (paramInt < 0)
    {
      paramInt = -1;
      return paramInt;
    }
    int j = this.Xz.getChildCount();
    int i = paramInt;
    for (;;)
    {
      if (i >= j) {
        break label72;
      }
      int k = paramInt - (i - this.XA.bn(i));
      if (k == 0) {
        for (;;)
        {
          paramInt = i;
          if (!this.XA.get(i)) {
            break;
          }
          i += 1;
        }
      }
      i += k;
    }
    label72:
    return -1;
  }
  
  final View bl(int paramInt)
  {
    return this.Xz.getChildAt(paramInt);
  }
  
  final void detachViewFromParent(int paramInt)
  {
    paramInt = bk(paramInt);
    this.XA.bm(paramInt);
    this.Xz.detachViewFromParent(paramInt);
  }
  
  public final View getChildAt(int paramInt)
  {
    paramInt = bk(paramInt);
    return this.Xz.getChildAt(paramInt);
  }
  
  public final int getChildCount()
  {
    return this.Xz.getChildCount() - this.XB.size();
  }
  
  final int gw()
  {
    return this.Xz.getChildCount();
  }
  
  final int indexOfChild(View paramView)
  {
    int i = this.Xz.indexOfChild(paramView);
    if (i == -1) {}
    while (this.XA.get(i)) {
      return -1;
    }
    return i - this.XA.bn(i);
  }
  
  public final String toString()
  {
    return this.XA.toString() + ", hidden list:" + this.XB.size();
  }
  
  static final class a
  {
    long XC = 0L;
    a XD;
    
    private void gx()
    {
      if (this.XD == null) {
        this.XD = new a();
      }
    }
    
    final boolean bm(int paramInt)
    {
      a locala = this;
      while (paramInt >= 64)
      {
        locala.gx();
        locala = locala.XD;
        paramInt -= 64;
      }
      long l1 = 1L << paramInt;
      if ((locala.XC & l1) != 0L) {}
      for (boolean bool = true;; bool = false)
      {
        locala.XC &= (l1 ^ 0xFFFFFFFFFFFFFFFF);
        l1 -= 1L;
        long l2 = locala.XC;
        locala.XC = (Long.rotateRight((l1 ^ 0xFFFFFFFFFFFFFFFF) & locala.XC, 1) | l2 & l1);
        if (locala.XD != null)
        {
          if (locala.XD.get(0)) {
            locala.set(63);
          }
          locala.XD.bm(0);
        }
        return bool;
      }
    }
    
    final int bn(int paramInt)
    {
      if (this.XD == null)
      {
        if (paramInt >= 64) {
          return Long.bitCount(this.XC);
        }
        return Long.bitCount(this.XC & (1L << paramInt) - 1L);
      }
      if (paramInt < 64) {
        return Long.bitCount(this.XC & (1L << paramInt) - 1L);
      }
      return this.XD.bn(paramInt - 64) + Long.bitCount(this.XC);
    }
    
    final void clear(int paramInt)
    {
      a locala = this;
      while (paramInt >= 64)
      {
        if (locala.XD == null) {
          return;
        }
        locala = locala.XD;
        paramInt -= 64;
      }
      locala.XC &= (1L << paramInt ^ 0xFFFFFFFFFFFFFFFF);
    }
    
    final void f(int paramInt, boolean paramBoolean)
    {
      boolean bool = paramBoolean;
      a locala = this;
      while (paramInt >= 64)
      {
        locala.gx();
        locala = locala.XD;
        paramInt -= 64;
      }
      if ((locala.XC & 0x8000000000000000) != 0L)
      {
        paramBoolean = true;
        label47:
        long l1 = (1L << paramInt) - 1L;
        long l2 = locala.XC;
        locala.XC = (((l1 ^ 0xFFFFFFFFFFFFFFFF) & locala.XC) << 1 | l2 & l1);
        if (!bool) {
          break label132;
        }
        locala.set(paramInt);
      }
      for (;;)
      {
        if ((!paramBoolean) && (locala.XD == null)) {
          return;
        }
        locala.gx();
        locala = locala.XD;
        paramInt = 0;
        bool = paramBoolean;
        break;
        paramBoolean = false;
        break label47;
        label132:
        locala.clear(paramInt);
      }
    }
    
    final boolean get(int paramInt)
    {
      a locala = this;
      while (paramInt >= 64)
      {
        locala.gx();
        locala = locala.XD;
        paramInt -= 64;
      }
      return (locala.XC & 1L << paramInt) != 0L;
    }
    
    final void set(int paramInt)
    {
      a locala = this;
      while (paramInt >= 64)
      {
        locala.gx();
        locala = locala.XD;
        paramInt -= 64;
      }
      locala.XC |= 1L << paramInt;
    }
    
    public final String toString()
    {
      if (this.XD == null) {
        return Long.toBinaryString(this.XC);
      }
      return this.XD.toString() + "xx" + Long.toBinaryString(this.XC);
    }
  }
  
  static abstract interface b
  {
    public abstract RecyclerView.x aB(View paramView);
    
    public abstract void aC(View paramView);
    
    public abstract void aD(View paramView);
    
    public abstract void addView(View paramView, int paramInt);
    
    public abstract void attachViewToParent(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams);
    
    public abstract void detachViewFromParent(int paramInt);
    
    public abstract View getChildAt(int paramInt);
    
    public abstract int getChildCount();
    
    public abstract int indexOfChild(View paramView);
    
    public abstract void removeAllViews();
    
    public abstract void removeViewAt(int paramInt);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/ai.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */