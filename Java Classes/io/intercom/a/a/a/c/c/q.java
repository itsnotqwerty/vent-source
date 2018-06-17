package io.intercom.a.a.a.c.c;

import android.support.v4.g.k.a;
import io.intercom.a.a.a.c.a;
import io.intercom.a.a.a.c.a.b;
import io.intercom.a.a.a.c.a.b.a;
import io.intercom.a.a.a.c.b.p;
import io.intercom.a.a.a.c.j;
import io.intercom.a.a.a.g;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

final class q<Model, Data>
  implements n<Model, Data>
{
  private final List<n<Model, Data>> cIT;
  private final k.a<List<Throwable>> cNb;
  
  q(List<n<Model, Data>> paramList, k.a<List<Throwable>> parama)
  {
    this.cIT = paramList;
    this.cNb = parama;
  }
  
  public final boolean aw(Model paramModel)
  {
    Iterator localIterator = this.cIT.iterator();
    while (localIterator.hasNext()) {
      if (((n)localIterator.next()).aw(paramModel)) {
        return true;
      }
    }
    return false;
  }
  
  public final n.a<Data> b(Model paramModel, int paramInt1, int paramInt2, j paramj)
  {
    int j = this.cIT.size();
    ArrayList localArrayList = new ArrayList(j);
    int i = 0;
    io.intercom.a.a.a.c.h localh = null;
    if (i < j)
    {
      Object localObject = (n)this.cIT.get(i);
      if (!((n)localObject).aw(paramModel)) {
        break label145;
      }
      localObject = ((n)localObject).b(paramModel, paramInt1, paramInt2, paramj);
      if (localObject == null) {
        break label145;
      }
      localh = ((n.a)localObject).cIS;
      localArrayList.add(((n.a)localObject).cMW);
    }
    label145:
    for (;;)
    {
      i += 1;
      break;
      if (!localArrayList.isEmpty()) {
        return new n.a(localh, new a(localArrayList, this.cNb));
      }
      return null;
    }
  }
  
  public final String toString()
  {
    return "MultiModelLoader{modelLoaders=" + Arrays.toString(this.cIT.toArray(new n[this.cIT.size()])) + '}';
  }
  
  static final class a<Data>
    implements b<Data>, b.a<Data>
  {
    private final k.a<List<Throwable>> cGf;
    private g cJg;
    private final List<b<Data>> cNc;
    private b.a<? super Data> cNd;
    private List<Throwable> cNe;
    private int currentIndex;
    
    a(List<b<Data>> paramList, k.a<List<Throwable>> parama)
    {
      this.cGf = parama;
      io.intercom.a.a.a.i.h.h(paramList);
      this.cNc = paramList;
      this.currentIndex = 0;
    }
    
    private void IR()
    {
      if (this.currentIndex < this.cNc.size() - 1)
      {
        this.currentIndex += 1;
        a(this.cJg, this.cNd);
        return;
      }
      io.intercom.a.a.a.i.h.checkNotNull(this.cNe, "Argument must not be null");
      this.cNd.i(new p("Fetch failed", new ArrayList(this.cNe)));
    }
    
    public final a HT()
    {
      return ((b)this.cNc.get(0)).HT();
    }
    
    public final Class<Data> HU()
    {
      return ((b)this.cNc.get(0)).HU();
    }
    
    public final void a(g paramg, b.a<? super Data> parama)
    {
      this.cJg = paramg;
      this.cNd = parama;
      this.cNe = ((List)this.cGf.as());
      ((b)this.cNc.get(this.currentIndex)).a(paramg, this);
    }
    
    public final void as(Data paramData)
    {
      if (paramData != null)
      {
        this.cNd.as(paramData);
        return;
      }
      IR();
    }
    
    public final void cancel()
    {
      Iterator localIterator = this.cNc.iterator();
      while (localIterator.hasNext()) {
        ((b)localIterator.next()).cancel();
      }
    }
    
    public final void cleanup()
    {
      if (this.cNe != null) {
        this.cGf.j(this.cNe);
      }
      this.cNe = null;
      Iterator localIterator = this.cNc.iterator();
      while (localIterator.hasNext()) {
        ((b)localIterator.next()).cleanup();
      }
    }
    
    public final void i(Exception paramException)
    {
      ((List)io.intercom.a.a.a.i.h.checkNotNull(this.cNe, "Argument must not be null")).add(paramException);
      IR();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/c/q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */