package android.arch.lifecycle;

class FullLifecycleObserverAdapter
  implements GenericLifecycleObserver
{
  private final FullLifecycleObserver ay;
  
  FullLifecycleObserverAdapter(FullLifecycleObserver paramFullLifecycleObserver)
  {
    this.ay = paramFullLifecycleObserver;
  }
  
  public final void a(e parame, c.a parama)
  {
    switch (1.az[parama.ordinal()])
    {
    case 1: 
    case 2: 
    case 3: 
    case 4: 
    case 5: 
    case 6: 
    default: 
      return;
    }
    throw new IllegalArgumentException("ON_ANY must not been send by anybody");
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/arch/lifecycle/FullLifecycleObserverAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */