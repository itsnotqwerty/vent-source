package b;

import java.io.IOException;
import java.util.zip.Deflater;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

public final class g
  implements r
{
  private final d bKK;
  private boolean c;
  private final Deflater cUz;
  
  private g(d paramd, Deflater paramDeflater)
  {
    if (paramd == null) {
      throw new IllegalArgumentException("source == null");
    }
    if (paramDeflater == null) {
      throw new IllegalArgumentException("inflater == null");
    }
    this.bKK = paramd;
    this.cUz = paramDeflater;
  }
  
  public g(r paramr, Deflater paramDeflater)
  {
    this(m.b(paramr), paramDeflater);
  }
  
  @IgnoreJRERequirement
  private void a(boolean paramBoolean)
    throws IOException
  {
    c localc = this.bKK.KU();
    p localp;
    label119:
    do
    {
      localp = localc.fI(1);
      if (paramBoolean) {}
      for (int i = this.cUz.deflate(localp.bIG, localp.c, 2048 - localp.c, 2);; i = this.cUz.deflate(localp.bIG, localp.c, 2048 - localp.c))
      {
        if (i <= 0) {
          break label119;
        }
        localp.c += i;
        localc.b += i;
        this.bKK.Li();
        break;
      }
    } while (!this.cUz.needsInput());
    if (localp.b == localp.c)
    {
      localc.cUy = localp.Lp();
      q.b(localp);
    }
  }
  
  public final void a(c paramc, long paramLong)
    throws IOException
  {
    u.a(paramc.b, 0L, paramLong);
    while (paramLong > 0L)
    {
      p localp = paramc.cUy;
      int i = (int)Math.min(paramLong, localp.c - localp.b);
      this.cUz.setInput(localp.bIG, localp.b, i);
      a(false);
      paramc.b -= i;
      localp.b += i;
      if (localp.b == localp.c)
      {
        paramc.cUy = localp.Lp();
        q.b(localp);
      }
      paramLong -= i;
    }
  }
  
  public final void close()
    throws IOException
  {
    if (this.c) {}
    for (;;)
    {
      return;
      Object localObject2 = null;
      try
      {
        this.cUz.finish();
        a(false);
        try
        {
          this.cUz.end();
          localObject1 = localObject2;
        }
        catch (Throwable localThrowable1)
        {
          for (;;)
          {
            Object localObject1;
            label42:
            if (localThrowable3 != null) {
              localThrowable2 = localThrowable3;
            }
          }
        }
        try
        {
          this.bKK.close();
          localObject2 = localObject1;
        }
        catch (Throwable localThrowable4)
        {
          Object localObject3 = localThrowable2;
          if (localThrowable2 != null) {
            break label42;
          }
          localObject3 = localThrowable4;
          break label42;
        }
        this.c = true;
        if (localObject2 == null) {
          continue;
        }
        u.j((Throwable)localObject2);
        return;
      }
      catch (Throwable localThrowable3)
      {
        for (;;) {}
      }
    }
  }
  
  public final void flush()
    throws IOException
  {
    a(true);
    this.bKK.flush();
  }
  
  public final String toString()
  {
    return "DeflaterSink(" + this.bKK + ")";
  }
  
  public final t zA()
  {
    return this.bKK.zA();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/b/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */