package io.intercom.a.a.a.c.c;

import io.intercom.a.a.a.c.a;
import io.intercom.a.a.a.c.a.b;
import io.intercom.a.a.a.c.a.b.a;
import io.intercom.a.a.a.g;
import java.io.IOException;
import java.io.InputStream;

public final class e<Data>
  implements n<String, Data>
{
  private final a<Data> cMz;
  
  public e(a<Data> parama)
  {
    this.cMz = parama;
  }
  
  public static abstract interface a<Data>
  {
    public abstract Class<Data> HU();
    
    public abstract void ar(Data paramData)
      throws IOException;
    
    public abstract Data eY(String paramString)
      throws IllegalArgumentException;
  }
  
  private static final class b<Data>
    implements b<Data>
  {
    private final String cMA;
    private final e.a<Data> cMB;
    private Data data;
    
    b(String paramString, e.a<Data> parama)
    {
      this.cMA = paramString;
      this.cMB = parama;
    }
    
    public final a HT()
    {
      return a.cHC;
    }
    
    public final Class<Data> HU()
    {
      return this.cMB.HU();
    }
    
    public final void a(g paramg, b.a<? super Data> parama)
    {
      try
      {
        this.data = this.cMB.eY(this.cMA);
        parama.as(this.data);
        return;
      }
      catch (IllegalArgumentException paramg)
      {
        parama.i(paramg);
      }
    }
    
    public final void cancel() {}
    
    public final void cleanup()
    {
      try
      {
        this.cMB.ar(this.data);
        return;
      }
      catch (IOException localIOException) {}
    }
  }
  
  public static final class c
    implements o<String, InputStream>
  {
    private final e.a<InputStream> cMC = new e.a()
    {
      public final Class<InputStream> HU()
      {
        return InputStream.class;
      }
    };
    
    public final n<String, InputStream> a(r paramr)
    {
      return new e(this.cMC);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/c/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */