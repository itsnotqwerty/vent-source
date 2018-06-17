package android.support.v7.widget;

import android.support.v4.g.a;
import android.support.v4.g.f;
import android.support.v4.g.k.a;
import android.support.v4.g.k.b;

final class bv
{
  final a<RecyclerView.x, a> akF = new a();
  final f<RecyclerView.x> akG = new f();
  
  final void a(long paramLong, RecyclerView.x paramx)
  {
    this.akG.put(paramLong, paramx);
  }
  
  final void a(b paramb)
  {
    int i = this.akF.size() - 1;
    if (i >= 0)
    {
      RecyclerView.x localx = (RecyclerView.x)this.akF.keyAt(i);
      a locala = (a)this.akF.removeAt(i);
      if ((locala.flags & 0x3) == 3) {
        paramb.i(localx);
      }
      for (;;)
      {
        a.a(locala);
        i -= 1;
        break;
        if ((locala.flags & 0x1) != 0)
        {
          if (locala.akH == null) {
            paramb.i(localx);
          } else {
            paramb.a(localx, locala.akH, locala.akI);
          }
        }
        else if ((locala.flags & 0xE) == 14) {
          paramb.b(localx, locala.akH, locala.akI);
        } else if ((locala.flags & 0xC) == 12) {
          paramb.c(localx, locala.akH, locala.akI);
        } else if ((locala.flags & 0x4) != 0) {
          paramb.a(localx, locala.akH, null);
        } else if ((locala.flags & 0x8) != 0) {
          paramb.b(localx, locala.akH, locala.akI);
        } else {
          int j = locala.flags;
        }
      }
    }
  }
  
  final RecyclerView.f.b b(RecyclerView.x paramx, int paramInt)
  {
    Object localObject2 = null;
    int i = this.akF.indexOfKey(paramx);
    Object localObject1;
    if (i < 0) {
      localObject1 = localObject2;
    }
    a locala;
    do
    {
      do
      {
        return (RecyclerView.f.b)localObject1;
        locala = (a)this.akF.valueAt(i);
        localObject1 = localObject2;
      } while (locala == null);
      localObject1 = localObject2;
    } while ((locala.flags & paramInt) == 0);
    locala.flags &= (paramInt ^ 0xFFFFFFFF);
    if (paramInt == 4) {}
    for (paramx = locala.akH;; paramx = locala.akI)
    {
      localObject1 = paramx;
      if ((locala.flags & 0xC) != 0) {
        break;
      }
      this.akF.removeAt(i);
      a.a(locala);
      return paramx;
      if (paramInt != 8) {
        break label129;
      }
    }
    label129:
    throw new IllegalArgumentException("Must provide flag PRE or POST");
  }
  
  final void b(RecyclerView.x paramx, RecyclerView.f.b paramb)
  {
    a locala2 = (a)this.akF.get(paramx);
    a locala1 = locala2;
    if (locala2 == null)
    {
      locala1 = a.jd();
      this.akF.put(paramx, locala1);
    }
    locala1.akH = paramb;
    locala1.flags |= 0x4;
  }
  
  final void c(RecyclerView.x paramx, RecyclerView.f.b paramb)
  {
    a locala2 = (a)this.akF.get(paramx);
    a locala1 = locala2;
    if (locala2 == null)
    {
      locala1 = a.jd();
      this.akF.put(paramx, locala1);
    }
    locala1.akI = paramb;
    locala1.flags |= 0x8;
  }
  
  final void clear()
  {
    this.akF.clear();
    this.akG.clear();
  }
  
  final boolean q(RecyclerView.x paramx)
  {
    paramx = (a)this.akF.get(paramx);
    return (paramx != null) && ((paramx.flags & 0x1) != 0);
  }
  
  final void r(RecyclerView.x paramx)
  {
    a locala2 = (a)this.akF.get(paramx);
    a locala1 = locala2;
    if (locala2 == null)
    {
      locala1 = a.jd();
      this.akF.put(paramx, locala1);
    }
    locala1.flags |= 0x1;
  }
  
  final void s(RecyclerView.x paramx)
  {
    paramx = (a)this.akF.get(paramx);
    if (paramx == null) {
      return;
    }
    paramx.flags &= 0xFFFFFFFE;
  }
  
  final void t(RecyclerView.x paramx)
  {
    int i = this.akG.size() - 1;
    for (;;)
    {
      if (i >= 0)
      {
        if (paramx != this.akG.valueAt(i)) {
          break label78;
        }
        f localf = this.akG;
        if (localf.EC[i] != f.Ez)
        {
          localf.EC[i] = f.Ez;
          localf.EA = true;
        }
      }
      paramx = (a)this.akF.remove(paramx);
      if (paramx != null) {
        a.a(paramx);
      }
      return;
      label78:
      i -= 1;
    }
  }
  
  static final class a
  {
    static k.a<a> akJ = new k.b(20);
    RecyclerView.f.b akH;
    RecyclerView.f.b akI;
    int flags;
    
    static void a(a parama)
    {
      parama.flags = 0;
      parama.akH = null;
      parama.akI = null;
      akJ.j(parama);
    }
    
    static a jd()
    {
      a locala2 = (a)akJ.as();
      a locala1 = locala2;
      if (locala2 == null) {
        locala1 = new a();
      }
      return locala1;
    }
    
    static void je()
    {
      while (akJ.as() != null) {}
    }
  }
  
  static abstract interface b
  {
    public abstract void a(RecyclerView.x paramx, RecyclerView.f.b paramb1, RecyclerView.f.b paramb2);
    
    public abstract void b(RecyclerView.x paramx, RecyclerView.f.b paramb1, RecyclerView.f.b paramb2);
    
    public abstract void c(RecyclerView.x paramx, RecyclerView.f.b paramb1, RecyclerView.f.b paramb2);
    
    public abstract void i(RecyclerView.x paramx);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/bv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */