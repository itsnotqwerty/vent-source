package android.arch.lifecycle;

import android.arch.a.b.a;
import android.arch.a.b.b;
import android.arch.a.b.b.b;
import android.arch.a.b.b.c;
import android.arch.a.b.b.d;
import android.util.Log;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.WeakHashMap;

public final class f
  extends c
{
  private a<d, a> aG = new a();
  private c.b aH;
  private final WeakReference<e> aI;
  private int aJ = 0;
  private boolean aK = false;
  private boolean aL = false;
  private ArrayList<c.b> aM = new ArrayList();
  
  public f(e parame)
  {
    this.aI = new WeakReference(parame);
    this.aH = c.b.aB;
  }
  
  private void Z()
  {
    this.aM.remove(this.aM.size() - 1);
  }
  
  static c.b a(c.b paramb1, c.b paramb2)
  {
    if ((paramb2 != null) && (paramb2.compareTo(paramb1) < 0)) {
      return paramb2;
    }
    return paramb1;
  }
  
  private void a(e parame)
  {
    b.d locald = this.aG.W();
    while ((locald.hasNext()) && (!this.aL))
    {
      Map.Entry localEntry = (Map.Entry)locald.next();
      a locala = (a)localEntry.getValue();
      while ((locala.aH.compareTo(this.aH) < 0) && (!this.aL) && (this.aG.contains(localEntry.getKey())))
      {
        c(locala.aH);
        locala.b(parame, d(locala.aH));
        Z();
      }
    }
  }
  
  static c.b b(c.a parama)
  {
    switch (1.az[parama.ordinal()])
    {
    default: 
      throw new IllegalArgumentException("Unexpected event value " + parama);
    case 1: 
    case 2: 
      return c.b.aC;
    case 3: 
    case 4: 
      return c.b.aD;
    case 5: 
      return c.b.aE;
    }
    return c.b.aA;
  }
  
  private c.b c(d paramd)
  {
    Object localObject = this.aG;
    if (((a)localObject).contains(paramd))
    {
      paramd = ((b.c)((a)localObject).ae.get(paramd)).al;
      if (paramd == null) {
        break label93;
      }
      paramd = ((a)paramd.getValue()).aH;
      label45:
      if (this.aM.isEmpty()) {
        break label98;
      }
    }
    label93:
    label98:
    for (localObject = (c.b)this.aM.get(this.aM.size() - 1);; localObject = null)
    {
      return a(a(this.aH, paramd), (c.b)localObject);
      paramd = null;
      break;
      paramd = null;
      break label45;
    }
  }
  
  private void c(c.b paramb)
  {
    this.aM.add(paramb);
  }
  
  private static c.a d(c.b paramb)
  {
    switch (1.aN[paramb.ordinal()])
    {
    default: 
      throw new IllegalArgumentException("Unexpected state value " + paramb);
    case 1: 
    case 5: 
      return c.a.ON_CREATE;
    case 2: 
      return c.a.ON_START;
    case 3: 
      return c.a.ON_RESUME;
    }
    throw new IllegalArgumentException();
  }
  
  private void sync()
  {
    e locale = (e)this.aI.get();
    label24:
    Object localObject1;
    if (locale == null)
    {
      Log.w("LifecycleRegistry", "LifecycleOwner is garbage collected, you shouldn't try dispatch new events from it.");
      return;
      break label155;
      localObject1 = this.aG.ag;
      if ((!this.aL) && (localObject1 != null) && (this.aH.compareTo(((a)((Map.Entry)localObject1).getValue()).aH) > 0)) {
        a(locale);
      }
    }
    int i;
    if (this.aG.ai == 0) {
      i = 1;
    }
    for (;;)
    {
      if (i == 0)
      {
        this.aL = false;
        if (this.aH.compareTo(((a)this.aG.af.getValue()).aH) >= 0) {
          break label24;
        }
        localObject1 = this.aG;
        Object localObject2 = new b.b(((b)localObject1).ag, ((b)localObject1).af);
        ((b)localObject1).ah.put(localObject2, Boolean.valueOf(false));
        label155:
        if ((!((Iterator)localObject2).hasNext()) || (this.aL)) {
          break label24;
        }
        Map.Entry localEntry = (Map.Entry)((Iterator)localObject2).next();
        a locala = (a)localEntry.getValue();
        if ((locala.aH.compareTo(this.aH) <= 0) || (this.aL) || (!this.aG.contains(localEntry.getKey()))) {
          break;
        }
        localObject1 = locala.aH;
        switch (1.aN[localObject1.ordinal()])
        {
        default: 
          throw new IllegalArgumentException("Unexpected state value " + localObject1);
          localObject1 = ((a)this.aG.af.getValue()).aH;
          localObject2 = ((a)this.aG.ag.getValue()).aH;
          if ((localObject1 == localObject2) && (this.aH == localObject2)) {
            i = 1;
          } else {
            i = 0;
          }
          break;
        case 1: 
          throw new IllegalArgumentException();
        case 2: 
          localObject1 = c.a.ON_DESTROY;
        case 3: 
        case 4: 
          for (;;)
          {
            c(b((c.a)localObject1));
            locala.b(locale, (c.a)localObject1);
            Z();
            break;
            localObject1 = c.a.ON_STOP;
            continue;
            localObject1 = c.a.ON_PAUSE;
          }
        case 5: 
          throw new IllegalArgumentException();
        }
      }
    }
    this.aL = false;
  }
  
  public final c.b Y()
  {
    return this.aH;
  }
  
  public final void a(c.a parama)
  {
    b(b(parama));
  }
  
  public final void a(d paramd)
  {
    c.b localb;
    a locala;
    if (this.aH == c.b.aA)
    {
      localb = c.b.aA;
      locala = new a(paramd, localb);
      if ((a)this.aG.putIfAbsent(paramd, locala) == null) {
        break label49;
      }
    }
    label49:
    e locale;
    do
    {
      return;
      localb = c.b.aB;
      break;
      locale = (e)this.aI.get();
    } while (locale == null);
    if ((this.aJ != 0) || (this.aK)) {}
    for (int i = 1;; i = 0)
    {
      localb = c(paramd);
      this.aJ += 1;
      while ((locala.aH.compareTo(localb) < 0) && (this.aG.contains(paramd)))
      {
        c(locala.aH);
        locala.b(locale, d(locala.aH));
        Z();
        localb = c(paramd);
      }
    }
    if (i == 0) {
      sync();
    }
    this.aJ -= 1;
  }
  
  public final void b(c.b paramb)
  {
    if (this.aH == paramb) {
      return;
    }
    this.aH = paramb;
    if ((this.aK) || (this.aJ != 0))
    {
      this.aL = true;
      return;
    }
    this.aK = true;
    sync();
    this.aK = false;
  }
  
  public final void b(d paramd)
  {
    this.aG.remove(paramd);
  }
  
  static final class a
  {
    c.b aH;
    GenericLifecycleObserver aO;
    
    a(d paramd, c.b paramb)
    {
      this.aO = h.f(paramd);
      this.aH = paramb;
    }
    
    final void b(e parame, c.a parama)
    {
      c.b localb = f.b(parama);
      this.aH = f.a(this.aH, localb);
      this.aO.a(parame, parama);
      this.aH = localb;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/arch/lifecycle/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */