package android.arch.lifecycle;

import android.arch.a.a.a;
import android.arch.a.b.b;

public abstract class LiveData<T>
{
  public static final Object aR = new Object();
  protected b<k<T>, LiveData<T>.a> aS;
  public int aT;
  public volatile Object aU;
  private int aV;
  private boolean aW;
  private boolean aX;
  
  private void a(LiveData<T>.a paramLiveData)
  {
    if (!paramLiveData.mActive) {}
    do
    {
      return;
      if (!paramLiveData.ac())
      {
        paramLiveData.g(false);
        return;
      }
    } while (paramLiveData.bb >= this.aV);
    paramLiveData.bb = this.aV;
    paramLiveData.ba.g(this.aU);
  }
  
  public void a(k<T> paramk)
  {
    if (!a.F().Y.V()) {
      throw new IllegalStateException("Cannot invoke " + "removeObserver" + " on a background thread");
    }
    paramk = (a)this.aS.remove(paramk);
    if (paramk == null) {
      return;
    }
    paramk.ad();
    paramk.g(false);
  }
  
  public void ab() {}
  
  public void onActive() {}
  
  public class LifecycleBoundObserver
    extends LiveData<T>.a
    implements GenericLifecycleObserver
  {
    final e aY;
    
    public LifecycleBoundObserver(k<T> paramk)
    {
      super(localk);
      this.aY = paramk;
    }
    
    public final void a(e parame, c.a parama)
    {
      if (this.aY.getLifecycle().Y() == c.b.aA)
      {
        LiveData.this.a(this.ba);
        return;
      }
      g(ac());
    }
    
    final boolean ac()
    {
      return this.aY.getLifecycle().Y().a(c.b.aD);
    }
    
    final void ad()
    {
      this.aY.getLifecycle().b(this);
    }
    
    final boolean b(e parame)
    {
      return this.aY == parame;
    }
  }
  
  private abstract class a
  {
    final k<T> ba;
    int bb = -1;
    boolean mActive;
    
    a()
    {
      k localk;
      this.ba = localk;
    }
    
    abstract boolean ac();
    
    void ad() {}
    
    public boolean b(e parame)
    {
      return false;
    }
    
    final void g(boolean paramBoolean)
    {
      int j = 1;
      if (paramBoolean == this.mActive) {
        return;
      }
      this.mActive = paramBoolean;
      int i;
      label28:
      LiveData localLiveData;
      int k;
      if (LiveData.a(LiveData.this) == 0)
      {
        i = 1;
        localLiveData = LiveData.this;
        k = LiveData.a(localLiveData);
        if (!this.mActive) {
          break label121;
        }
      }
      for (;;)
      {
        LiveData.a(localLiveData, j + k);
        if ((i != 0) && (this.mActive)) {
          LiveData.this.onActive();
        }
        if ((LiveData.a(LiveData.this) == 0) && (!this.mActive)) {
          LiveData.this.ab();
        }
        if (!this.mActive) {
          break;
        }
        LiveData.a(LiveData.this, this);
        return;
        i = 0;
        break label28;
        label121:
        j = -1;
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/arch/lifecycle/LiveData.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */