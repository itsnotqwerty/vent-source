package io.intercom.a.a.a.c.c;

import io.intercom.a.a.a.c.a.b;
import io.intercom.a.a.a.c.j;
import java.util.Collections;
import java.util.List;

public abstract interface n<Model, Data>
{
  public abstract boolean aw(Model paramModel);
  
  public abstract a<Data> b(Model paramModel, int paramInt1, int paramInt2, j paramj);
  
  public static final class a<Data>
  {
    public final io.intercom.a.a.a.c.h cIS;
    public final List<io.intercom.a.a.a.c.h> cMV;
    public final b<Data> cMW;
    
    public a(io.intercom.a.a.a.c.h paramh, b<Data> paramb)
    {
      this(paramh, Collections.emptyList(), paramb);
    }
    
    private a(io.intercom.a.a.a.c.h paramh, List<io.intercom.a.a.a.c.h> paramList, b<Data> paramb)
    {
      this.cIS = ((io.intercom.a.a.a.c.h)io.intercom.a.a.a.i.h.checkNotNull(paramh, "Argument must not be null"));
      this.cMV = ((List)io.intercom.a.a.a.i.h.checkNotNull(paramList, "Argument must not be null"));
      this.cMW = ((b)io.intercom.a.a.a.i.h.checkNotNull(paramb, "Argument must not be null"));
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/c/n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */