package android.arch.lifecycle;

import java.util.List;
import java.util.Map;

class ReflectiveGenericLifecycleObserver
  implements GenericLifecycleObserver
{
  private final Object bd;
  private final a.a be;
  
  ReflectiveGenericLifecycleObserver(Object paramObject)
  {
    this.bd = paramObject;
    this.be = a.aq.c(this.bd.getClass());
  }
  
  public final void a(e parame, c.a parama)
  {
    a.a locala = this.be;
    Object localObject = this.bd;
    a.a.a((List)locala.at.get(parama), parame, parama, localObject);
    a.a.a((List)locala.at.get(c.a.ON_ANY), parame, parama, localObject);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/arch/lifecycle/ReflectiveGenericLifecycleObserver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */