package io.intercom.a.a.a.d;

import io.intercom.a.a.a.g.a.h;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;

public final class p
  implements i
{
  public final Set<h<?>> cPA = Collections.newSetFromMap(new WeakHashMap());
  
  public final void onDestroy()
  {
    Iterator localIterator = io.intercom.a.a.a.i.i.i(this.cPA).iterator();
    while (localIterator.hasNext()) {
      ((h)localIterator.next()).onDestroy();
    }
  }
  
  public final void onStart()
  {
    Iterator localIterator = io.intercom.a.a.a.i.i.i(this.cPA).iterator();
    while (localIterator.hasNext()) {
      ((h)localIterator.next()).onStart();
    }
  }
  
  public final void onStop()
  {
    Iterator localIterator = io.intercom.a.a.a.i.i.i(this.cPA).iterator();
    while (localIterator.hasNext()) {
      ((h)localIterator.next()).onStop();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/d/p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */