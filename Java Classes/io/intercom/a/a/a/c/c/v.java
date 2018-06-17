package io.intercom.a.a.a.c.c;

import io.intercom.a.a.a.c.a;
import io.intercom.a.a.a.c.a.b.a;
import io.intercom.a.a.a.c.j;
import io.intercom.a.a.a.g;

public final class v<Model>
  implements n<Model, Model>
{
  private static final v<?> cNo = new v();
  
  public static <T> v<T> IS()
  {
    return cNo;
  }
  
  public final boolean aw(Model paramModel)
  {
    return true;
  }
  
  public final n.a<Model> b(Model paramModel, int paramInt1, int paramInt2, j paramj)
  {
    return new n.a(new io.intercom.a.a.a.h.b(paramModel), new b(paramModel));
  }
  
  public static final class a<Model>
    implements o<Model, Model>
  {
    private static final a<?> cNp = new a();
    
    public static <T> a<T> IT()
    {
      return cNp;
    }
    
    public final n<Model, Model> a(r paramr)
    {
      return v.IS();
    }
  }
  
  private static final class b<Model>
    implements io.intercom.a.a.a.c.a.b<Model>
  {
    private final Model cNq;
    
    b(Model paramModel)
    {
      this.cNq = paramModel;
    }
    
    public final a HT()
    {
      return a.cHC;
    }
    
    public final Class<Model> HU()
    {
      return this.cNq.getClass();
    }
    
    public final void a(g paramg, b.a<? super Model> parama)
    {
      parama.as(this.cNq);
    }
    
    public final void cancel() {}
    
    public final void cleanup() {}
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/c/v.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */