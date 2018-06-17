package io.intercom.a.a.a.d;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;

final class a
  implements h
{
  private boolean cOA;
  private final Set<i> cPa = Collections.newSetFromMap(new WeakHashMap());
  private boolean cPb;
  
  public final void a(i parami)
  {
    this.cPa.add(parami);
    if (this.cPb)
    {
      parami.onDestroy();
      return;
    }
    if (this.cOA)
    {
      parami.onStart();
      return;
    }
    parami.onStop();
  }
  
  public final void b(i parami)
  {
    this.cPa.remove(parami);
  }
  
  final void onDestroy()
  {
    this.cPb = true;
    Iterator localIterator = io.intercom.a.a.a.i.i.i(this.cPa).iterator();
    while (localIterator.hasNext()) {
      ((i)localIterator.next()).onDestroy();
    }
  }
  
  final void onStart()
  {
    this.cOA = true;
    Iterator localIterator = io.intercom.a.a.a.i.i.i(this.cPa).iterator();
    while (localIterator.hasNext()) {
      ((i)localIterator.next()).onStart();
    }
  }
  
  final void onStop()
  {
    this.cOA = false;
    Iterator localIterator = io.intercom.a.a.a.i.i.i(this.cPa).iterator();
    while (localIterator.hasNext()) {
      ((i)localIterator.next()).onStop();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/d/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */