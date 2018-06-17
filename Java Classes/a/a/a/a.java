package a.a.a;

import a.a.a.g.g;
import java.io.IOException;
import java.net.InetAddress;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;

public abstract class a
{
  protected static final a.a.a.a.a coG = new a.a.a.a.a((byte)0);
  protected static final Logger coH = Logger.getLogger(a.class.getName());
  protected static int coL = a.coP;
  protected final Random coI = new Random();
  protected final b coJ;
  protected a.a.a.h.a coK = new a.a.a.h.b();
  protected final Random random;
  
  protected a()
  {
    this(coG);
  }
  
  protected a(b paramb)
  {
    try
    {
      SecureRandom localSecureRandom1 = SecureRandom.getInstance("SHA1PRNG");
      this.random = localSecureRandom1;
      this.coJ = paramb;
      return;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      for (;;)
      {
        SecureRandom localSecureRandom2 = new SecureRandom();
      }
    }
  }
  
  private Set<a.a.a.g.a> a(e parame)
  {
    return a(parame, k.b.cri);
  }
  
  private <D extends g> Set<D> a(e parame, k.b paramb)
  {
    parame = new j(parame, paramb);
    paramb = b(parame);
    paramb = this.coJ.a(paramb);
    if (paramb == null) {
      return Collections.emptySet();
    }
    return paramb.c(parame);
  }
  
  private Set<a.a.a.g.b> b(e parame)
  {
    return a(parame, k.b.crJ);
  }
  
  private <D extends g> Set<D> b(e parame, k.b paramb)
  {
    parame = a(parame, k.b.crj);
    if (parame.isEmpty()) {
      return Collections.emptySet();
    }
    HashSet localHashSet = new HashSet(parame.size() * 3);
    Iterator localIterator = parame.iterator();
    if (localIterator.hasNext())
    {
      parame = (a.a.a.g.j)localIterator.next();
      switch (1.coM[paramb.ordinal()])
      {
      default: 
        throw new AssertionError();
      }
      for (parame = a(parame.cqS);; parame = b(parame.cqS))
      {
        localHashSet.addAll(parame);
        break;
      }
    }
    return localHashSet;
  }
  
  public final d.a a(j paramj)
  {
    d.a locala = d.FO();
    locala.d(paramj);
    locala.id = (this.random.nextInt() & 0xFFFF);
    return b(locala);
  }
  
  public abstract d a(d.a parama)
    throws IOException;
  
  protected final d a(d paramd, InetAddress paramInetAddress)
    throws IOException
  {
    d locald;
    if (this.coJ == null)
    {
      locald = null;
      if (locald == null) {
        break label29;
      }
      paramInetAddress = locald;
    }
    label29:
    j localj;
    do
    {
      do
      {
        return paramInetAddress;
        locald = this.coJ.a(paramd);
        break;
        localj = paramd.FM();
        Level localLevel = Level.FINE;
        coH.log(localLevel, "Asking {0} on {1} for {2} with:\n{3}", new Object[] { paramInetAddress, Integer.valueOf(53), localj, paramd });
        for (;;)
        {
          try
          {
            locald = this.coK.a(paramd, paramInetAddress);
            if (locald != null)
            {
              coH.log(localLevel, "Response from {0} on {1} for {2}:\n{3}", new Object[] { paramInetAddress, Integer.valueOf(53), localj, locald });
              if (locald != null) {
                break;
              }
              return null;
            }
          }
          catch (IOException paramd)
          {
            coH.log(localLevel, "IOException {0} on {1} while resolving {2}: {3}", new Object[] { paramInetAddress, Integer.valueOf(53), localj, paramd });
            throw paramd;
          }
          coH.log(Level.SEVERE, "NULL response from " + paramInetAddress + " on 53 for " + localj);
        }
        paramInetAddress = locald;
      } while (this.coJ == null);
      paramInetAddress = locald;
    } while (!a(localj, locald));
    this.coJ.a(paramd.FN().FN(), locald);
    return locald;
  }
  
  public boolean a(j paramj, d paramd)
  {
    paramd = paramd.cpm.iterator();
    while (paramd.hasNext()) {
      if (((k)paramd.next()).e(paramj)) {
        return true;
      }
    }
    return false;
  }
  
  public abstract d.a b(d.a parama);
  
  protected final d b(j paramj)
  {
    return a(paramj).FQ();
  }
  
  public final Set<a.a.a.g.a> c(e parame)
  {
    return b(parame, k.b.cri);
  }
  
  public final Set<a.a.a.g.b> d(e parame)
  {
    return b(parame, k.b.crJ);
  }
  
  public static enum a
  {
    public static final int coN = 1;
    public static final int coO = 2;
    public static final int coP = 3;
    public static final int coQ = 4;
    
    public static int[] FH()
    {
      return (int[])coR.clone();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/a/a/a/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */