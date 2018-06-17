package android.support.v7.view;

import android.support.v4.view.v;
import android.support.v4.view.w;
import android.support.v4.view.x;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.animation.Interpolator;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

public final class h
{
  boolean MO;
  w Qo;
  private final x Qp = new x()
  {
    private boolean Qq = false;
    private int Qr = 0;
    
    public final void ao(View paramAnonymousView)
    {
      if (this.Qq) {}
      do
      {
        return;
        this.Qq = true;
      } while (h.this.Qo == null);
      h.this.Qo.ao(null);
    }
    
    public final void ap(View paramAnonymousView)
    {
      int i = this.Qr + 1;
      this.Qr = i;
      if (i == h.this.qG.size())
      {
        if (h.this.Qo != null) {
          h.this.Qo.ap(null);
        }
        this.Qr = 0;
        this.Qq = false;
        h.this.MO = false;
      }
    }
  };
  private Interpolator mInterpolator;
  public final ArrayList<v> qG = new ArrayList();
  private long ug = -1L;
  
  public final h a(v paramv)
  {
    if (!this.MO) {
      this.qG.add(paramv);
    }
    return this;
  }
  
  public final h b(w paramw)
  {
    if (!this.MO) {
      this.Qo = paramw;
    }
    return this;
  }
  
  public final h b(Interpolator paramInterpolator)
  {
    if (!this.MO) {
      this.mInterpolator = paramInterpolator;
    }
    return this;
  }
  
  public final void cancel()
  {
    if (!this.MO) {
      return;
    }
    Iterator localIterator = this.qG.iterator();
    while (localIterator.hasNext()) {
      ((v)localIterator.next()).cancel();
    }
    this.MO = false;
  }
  
  public final h eS()
  {
    if (!this.MO) {
      this.ug = 250L;
    }
    return this;
  }
  
  public final void start()
  {
    if (this.MO) {
      return;
    }
    Iterator localIterator = this.qG.iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (v)localIterator.next();
      if (this.ug >= 0L) {
        ((v)localObject).e(this.ug);
      }
      if (this.mInterpolator != null)
      {
        Interpolator localInterpolator = this.mInterpolator;
        View localView = (View)((v)localObject).Hr.get();
        if (localView != null) {
          localView.animate().setInterpolator(localInterpolator);
        }
      }
      if (this.Qo != null) {
        ((v)localObject).a(this.Qp);
      }
      localObject = (View)((v)localObject).Hr.get();
      if (localObject != null) {
        ((View)localObject).animate().start();
      }
    }
    this.MO = true;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/view/h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */