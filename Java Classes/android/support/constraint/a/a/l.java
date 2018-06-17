package android.support.constraint.a.a;

import java.util.HashSet;
import java.util.Iterator;

public class l
{
  HashSet<l> hX = new HashSet(2);
  public int state = 0;
  
  public final void a(l paraml)
  {
    this.hX.add(paraml);
  }
  
  public final void aU()
  {
    this.state = 1;
    Iterator localIterator = this.hX.iterator();
    while (localIterator.hasNext()) {
      ((l)localIterator.next()).aw();
    }
  }
  
  public final boolean aV()
  {
    return this.state == 1;
  }
  
  public void aw() {}
  
  public final void invalidate()
  {
    this.state = 0;
    Iterator localIterator = this.hX.iterator();
    while (localIterator.hasNext()) {
      ((l)localIterator.next()).invalidate();
    }
  }
  
  public void reset()
  {
    this.state = 0;
    this.hX.clear();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/constraint/a/a/l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */