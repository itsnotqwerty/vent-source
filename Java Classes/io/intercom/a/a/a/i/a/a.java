package io.intercom.a.a.a.i.a;

import android.support.v4.g.k.a;
import android.support.v4.g.k.b;
import android.support.v4.g.k.c;
import android.util.Log;
import java.util.List;

public final class a
{
  private static final d<Object> cRc = new d()
  {
    public final void reset(Object paramAnonymousObject) {}
  };
  
  public static <T> k.a<List<T>> JW()
  {
    a(new k.c(20), new a()new d {}, new d() {});
  }
  
  public static <T extends c> k.a<T> a(int paramInt, a<T> parama)
  {
    return a(new k.c(paramInt), parama);
  }
  
  private static <T extends c> k.a<T> a(k.a<T> parama, a<T> parama1)
  {
    return a(parama, parama1, cRc);
  }
  
  private static <T> k.a<T> a(k.a<T> parama, a<T> parama1, d<T> paramd)
  {
    return new b(parama, parama1, paramd);
  }
  
  public static <T extends c> k.a<T> a(a<T> parama)
  {
    return a(new k.b(150), parama);
  }
  
  public static abstract interface a<T>
  {
    public abstract T create();
  }
  
  private static final class b<T>
    implements k.a<T>
  {
    private final k.a<T> cJm;
    private final a.a<T> cRd;
    private final a.d<T> cRe;
    
    b(k.a<T> parama, a.a<T> parama1, a.d<T> paramd)
    {
      this.cJm = parama;
      this.cRd = parama1;
      this.cRe = paramd;
    }
    
    public final T as()
    {
      Object localObject2 = this.cJm.as();
      Object localObject1 = localObject2;
      if (localObject2 == null)
      {
        localObject2 = this.cRd.create();
        localObject1 = localObject2;
        if (Log.isLoggable("FactoryPools", 2))
        {
          Log.v("FactoryPools", "Created new " + localObject2.getClass());
          localObject1 = localObject2;
        }
      }
      if ((localObject1 instanceof a.c)) {
        ((a.c)localObject1).Ij().bw(false);
      }
      return (T)localObject1;
    }
    
    public final boolean j(T paramT)
    {
      if ((paramT instanceof a.c)) {
        ((a.c)paramT).Ij().bw(true);
      }
      this.cRe.reset(paramT);
      return this.cJm.j(paramT);
    }
  }
  
  public static abstract interface c
  {
    public abstract b Ij();
  }
  
  public static abstract interface d<T>
  {
    public abstract void reset(T paramT);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/i/a/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */