package android.arch.lifecycle;

import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;

public final class p
{
  public final HashMap<String, n> bi = new HashMap();
  
  public final void clear()
  {
    Iterator localIterator = this.bi.values().iterator();
    while (localIterator.hasNext()) {
      ((n)localIterator.next()).af();
    }
    this.bi.clear();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/arch/lifecycle/p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */