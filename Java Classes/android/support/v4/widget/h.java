package android.support.v4.widget;

import android.support.v4.g.k.a;
import android.support.v4.g.k.b;
import android.support.v4.g.m;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

public final class h<T>
{
  public final k.a<ArrayList<T>> Jk = new k.b(10);
  public final m<T, ArrayList<T>> Jl = new m();
  private final ArrayList<T> Jm = new ArrayList();
  private final HashSet<T> Jn = new HashSet();
  
  private void a(T paramT, ArrayList<T> paramArrayList, HashSet<T> paramHashSet)
  {
    if (paramArrayList.contains(paramT)) {
      return;
    }
    if (paramHashSet.contains(paramT)) {
      throw new RuntimeException("This graph contains cyclic dependencies");
    }
    paramHashSet.add(paramT);
    ArrayList localArrayList = (ArrayList)this.Jl.get(paramT);
    if (localArrayList != null)
    {
      int i = 0;
      int j = localArrayList.size();
      while (i < j)
      {
        a(localArrayList.get(i), paramArrayList, paramHashSet);
        i += 1;
      }
    }
    paramHashSet.remove(paramT);
    paramArrayList.add(paramT);
  }
  
  public final void H(T paramT)
  {
    if (!this.Jl.containsKey(paramT)) {
      this.Jl.put(paramT, null);
    }
  }
  
  public final List I(T paramT)
  {
    return (List)this.Jl.get(paramT);
  }
  
  public final ArrayList<T> ee()
  {
    this.Jm.clear();
    this.Jn.clear();
    int i = 0;
    int j = this.Jl.size();
    while (i < j)
    {
      a(this.Jl.keyAt(i), this.Jm, this.Jn);
      i += 1;
    }
    return this.Jm;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/widget/h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */