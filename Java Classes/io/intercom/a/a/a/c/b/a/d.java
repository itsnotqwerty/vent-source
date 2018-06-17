package io.intercom.a.a.a.c.b.a;

import io.intercom.a.a.a.i.i;
import java.util.Queue;

abstract class d<T extends m>
{
  private final Queue<T> cLj = i.ft(20);
  
  final T IA()
  {
    m localm2 = (m)this.cLj.poll();
    m localm1 = localm2;
    if (localm2 == null) {
      localm1 = Iz();
    }
    return localm1;
  }
  
  abstract T Iz();
  
  public final void a(T paramT)
  {
    if (this.cLj.size() < 20) {
      this.cLj.offer(paramT);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/b/a/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */