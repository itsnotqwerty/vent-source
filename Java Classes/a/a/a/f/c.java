package a.a.a.f;

import a.a.a.a;
import a.a.a.d;
import a.a.a.d.a;
import a.a.a.i.f;
import a.a.a.j;
import java.io.IOException;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public final class c
  extends a
{
  private final b ctv;
  private final a.a.a.c ctw;
  private int ctx = a.ctz;
  
  public c()
  {
    this(coG);
  }
  
  private c(a.a.a.b paramb)
  {
    super(paramb);
    this.ctv = new b(paramb)
    {
      protected final boolean a(j paramAnonymousj, d paramAnonymousd)
      {
        boolean bool = super.a(paramAnonymousj, paramAnonymousd);
        return (c.this.a(paramAnonymousj, paramAnonymousd)) && (bool);
      }
      
      protected final d.a b(d.a paramAnonymousa)
      {
        paramAnonymousa = super.b(paramAnonymousa);
        return c.this.b(paramAnonymousa);
      }
    };
    this.ctw = new a.a.a.c(paramb)
    {
      protected final boolean a(j paramAnonymousj, d paramAnonymousd)
      {
        boolean bool = super.a(paramAnonymousj, paramAnonymousd);
        return (c.this.a(paramAnonymousj, paramAnonymousd)) && (bool);
      }
      
      protected final d.a b(d.a paramAnonymousa)
      {
        paramAnonymousa = super.b(paramAnonymousa);
        return c.this.b(paramAnonymousa);
      }
    };
  }
  
  protected final d a(d.a parama)
    throws IOException
  {
    Object localObject3 = null;
    localLinkedList = new LinkedList();
    Object localObject1 = localObject3;
    if (this.ctx != a.ctB) {}
    Object localObject2;
    do
    {
      try
      {
        localObject1 = this.ctw.a(parama);
        localObject3 = localObject1;
        localObject1 = localObject3;
        if (localObject3 != null) {
          return (d)localObject3;
        }
      }
      catch (IOException localIOException)
      {
        localLinkedList.add(localIOException);
        localObject2 = localObject3;
      }
      localObject3 = localObject2;
    } while (this.ctx == a.ctA);
    Level localLevel = Level.FINE;
    if ((coH.isLoggable(localLevel)) && (this.ctx != a.ctB)) {
      if (localLinkedList.isEmpty()) {
        break label162;
      }
    }
    for (localObject3 = "Resolution fall back to iterative mode because: " + localLinkedList.get(0);; localObject3 = "Resolution fall back to iterative mode because: " + " DNSClient did not return a response")
    {
      coH.log(localLevel, (String)localObject3);
      try
      {
        parama = this.ctv.a(parama);
        localObject2 = parama;
      }
      catch (IOException parama)
      {
        for (;;)
        {
          localLinkedList.add(parama);
        }
      }
      localObject3 = localObject2;
      if (localObject2 != null) {
        break;
      }
      f.B(localLinkedList);
      return (d)localObject2;
      label162:
      if (localObject2 != null) {
        break label190;
      }
    }
    label190:
    throw new AssertionError("This should never been reached");
  }
  
  protected final boolean a(j paramj, d paramd)
  {
    return true;
  }
  
  protected final d.a b(d.a parama)
  {
    return parama;
  }
  
  public static enum a
  {
    public static final int ctA = 2;
    public static final int ctB = 3;
    public static final int ctz = 1;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/a/a/a/f/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */