package android.support.v4.app;

import android.support.v4.view.o;
import android.view.View;
import android.view.ViewGroup;

public abstract class r
  extends o
{
  private t yA = null;
  private i yB = null;
  private final n yz;
  
  public r(n paramn)
  {
    this.yz = paramn;
  }
  
  private static String a(int paramInt, long paramLong)
  {
    return "android:switcher:" + paramInt + ":" + paramLong;
  }
  
  public Object a(ViewGroup paramViewGroup, int paramInt)
  {
    if (this.yA == null) {
      this.yA = this.yz.cG();
    }
    long l = paramInt;
    Object localObject = a(paramViewGroup.getId(), l);
    localObject = this.yz.w((String)localObject);
    if (localObject != null) {
      this.yA.c((i)localObject);
    }
    for (paramViewGroup = (ViewGroup)localObject;; paramViewGroup = (ViewGroup)localObject)
    {
      if (paramViewGroup != this.yB)
      {
        paramViewGroup.setMenuVisibility(false);
        paramViewGroup.setUserVisibleHint(false);
      }
      return paramViewGroup;
      localObject = ac(paramInt);
      this.yA.a(paramViewGroup.getId(), (i)localObject, a(paramViewGroup.getId(), l));
    }
  }
  
  public final boolean a(View paramView, Object paramObject)
  {
    return ((i)paramObject).getView() == paramView;
  }
  
  public abstract i ac(int paramInt);
  
  public final void c(ViewGroup paramViewGroup)
  {
    if (paramViewGroup.getId() == -1) {
      throw new IllegalStateException("ViewPager with adapter " + this + " requires a view id");
    }
  }
  
  public final void cU()
  {
    if (this.yA != null)
    {
      this.yA.commitNowAllowingStateLoss();
      this.yA = null;
    }
  }
  
  public final void o(Object paramObject)
  {
    if (this.yA == null) {
      this.yA = this.yz.cG();
    }
    this.yA.b((i)paramObject);
  }
  
  public final void p(Object paramObject)
  {
    paramObject = (i)paramObject;
    if (paramObject != this.yB)
    {
      if (this.yB != null)
      {
        this.yB.setMenuVisibility(false);
        this.yB.setUserVisibleHint(false);
      }
      if (paramObject != null)
      {
        ((i)paramObject).setMenuVisibility(true);
        ((i)paramObject).setUserVisibleHint(true);
      }
      this.yB = ((i)paramObject);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/app/r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */