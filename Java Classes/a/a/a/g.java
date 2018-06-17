package a.a.a;

import a.a.a.c.a;
import a.a.a.c.b;
import a.a.a.c.c;
import a.a.a.g.o;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class g
{
  public final int cqG;
  public final int cqH;
  public final List<a> cqI;
  public final boolean cqJ;
  k<o> cqK;
  private String cqL;
  public final int flags;
  public final int version;
  
  static
  {
    if (!g.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  public g(a parama)
  {
    this.cqG = parama.cqG;
    this.cqH = parama.cqH;
    this.version = parama.version;
    int i = 0;
    if (parama.cqJ) {
      i = 32768;
    }
    this.cqJ = parama.cqJ;
    this.flags = i;
    if (parama.cqI != null)
    {
      this.cqI = parama.cqI;
      return;
    }
    this.cqI = Collections.emptyList();
  }
  
  private g(k<o> paramk)
  {
    assert (paramk.cqT == k.b.crW);
    this.cqG = paramk.cqW;
    this.cqH = ((int)(paramk.cqX >> 8 & 0xFF));
    this.version = ((int)(paramk.cqX >> 16 & 0xFF));
    this.flags = ((int)paramk.cqX & 0xFFFF);
    if ((paramk.cqX & 0x8000) > 0L) {}
    for (boolean bool = true;; bool = false)
    {
      this.cqJ = bool;
      this.cqI = ((o)paramk.cqY).cqI;
      this.cqK = paramk;
      return;
    }
  }
  
  public static a FW()
  {
    return new a((byte)0);
  }
  
  public static g a(k<? extends a.a.a.g.g> paramk)
  {
    if (paramk.cqT != k.b.crW) {
      return null;
    }
    return new g(paramk);
  }
  
  public String toString()
  {
    if (this.cqL == null)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("EDNS: version: ").append(this.version).append(", flags:");
      if (this.cqJ) {
        localStringBuilder.append(" do");
      }
      localStringBuilder.append("; udp: ").append(this.cqG);
      if (!this.cqI.isEmpty())
      {
        localStringBuilder.append('\n');
        Iterator localIterator = this.cqI.iterator();
        while (localIterator.hasNext())
        {
          a locala = (a)localIterator.next();
          localStringBuilder.append(locala.FY()).append(": ");
          localStringBuilder.append(locala.Ga());
          if (localIterator.hasNext()) {
            localStringBuilder.append('\n');
          }
        }
      }
      this.cqL = localStringBuilder.toString();
    }
    return this.cqL;
  }
  
  public static final class a
  {
    int cqG;
    int cqH;
    List<a> cqI;
    boolean cqJ;
    int version;
    
    public final a eX(int paramInt)
    {
      if (paramInt > 65535) {
        throw new IllegalArgumentException("UDP payload size must not be greater than 65536, was " + paramInt);
      }
      this.cqG = paramInt;
      return this;
    }
  }
  
  public static enum b
  {
    private static Map<Integer, b> cqc;
    public final Class<? extends a> axf;
    public final int cqO;
    
    static
    {
      int i = 0;
      cqM = new b("UNKNOWN", 0, -1, c.class);
      cqN = new b("NSID", 1, 3, b.class);
      cqP = new b[] { cqM, cqN };
      cqc = new HashMap(values().length);
      b[] arrayOfb = values();
      int j = arrayOfb.length;
      while (i < j)
      {
        b localb = arrayOfb[i];
        cqc.put(Integer.valueOf(localb.cqO), localb);
        i += 1;
      }
    }
    
    private b(int paramInt, Class<? extends a> paramClass)
    {
      this.cqO = paramInt;
      this.axf = paramClass;
    }
    
    public static b eY(int paramInt)
    {
      b localb2 = (b)cqc.get(Integer.valueOf(paramInt));
      b localb1 = localb2;
      if (localb2 == null) {
        localb1 = cqM;
      }
      return localb1;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/a/a/a/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */