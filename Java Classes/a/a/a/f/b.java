package a.a.a.f;

import a.a.a.d.a;
import a.a.a.e;
import a.a.a.g.a;
import a.a.a.g.c;
import a.a.a.g.h;
import a.a.a.i.f;
import a.a.a.k;
import a.a.a.k.b;
import java.io.IOException;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;

public class b
  extends a.a.a.a
{
  private static final Map<Character, InetAddress> ctn = new HashMap();
  private static final Map<Character, InetAddress> cto = new HashMap();
  protected static final Inet4Address[] ctp = { a('a', 198, 41, 0, 4), a('b', 192, 228, 79, 201), a('c', 192, 33, 4, 12), a('d', 199, 7, 91, 13), a('e', 192, 203, 230, 10), a('f', 192, 5, 5, 241), a('g', 192, 112, 36, 4), a('h', 198, 97, 190, 53), a('i', 192, 36, 148, 17), a('j', 192, 58, 128, 30), a('k', 193, 0, 14, 129), a('l', 199, 7, 83, 42), a('m', 202, 12, 27, 33) };
  protected static final Inet6Address[] ctq = { b('a', 1283, 47678, 2, 48), b('b', 1280, 132, 0, 11), b('c', 1280, 2, 0, 12), b('d', 1280, 45, 0, 13), b('f', 1280, 47, 0, 15), b('h', 1280, 1, 0, 83), b('i', 2046, 0, 0, 83), b('j', 1283, 3111, 2, 48), b('l', 1280, 3, 0, 66), b('m', 3523, 0, 0, 53) };
  int ctr = 128;
  
  public b(a.a.a.b paramb)
  {
    super(paramb);
  }
  
  private Inet4Address Gc()
  {
    return ctp[this.coI.nextInt(ctp.length)];
  }
  
  private Inet6Address Gd()
  {
    return ctq[this.coI.nextInt(ctq.length)];
  }
  
  private b.a.a Ge()
  {
    return new b.a.a(this.coI, (byte)0);
  }
  
  private a.a.a.d a(d paramd, a.a.a.d paramd1)
    throws IOException
  {
    Object localObject2 = paramd1.FM().cqS;
    if (((e)localObject2).FT()) {
      localObject1 = e.cqe;
    }
    for (;;)
    {
      switch (1.cpa[(coL - 1)])
      {
      default: 
        throw new AssertionError();
        ((e)localObject2).FS();
        int j = ((e)localObject2).cqi.length - 1;
        ((e)localObject2).FS();
        if (j > ((e)localObject2).cqi.length) {
          throw new IllegalArgumentException();
        }
        localObject1 = localObject2;
        if (j != ((e)localObject2).cqi.length) {
          if (j == 0)
          {
            localObject1 = e.cqe;
          }
          else
          {
            localObject1 = new String[j];
            int i = 0;
            while (i < j)
            {
              localObject1[i] = localObject2.cqi[i];
              i += 1;
            }
            localObject1 = new e((String[])localObject1);
          }
        }
        break;
      }
    }
    Object localObject1 = c((e)localObject1).iterator();
    Object localObject4;
    for (localObject2 = null;; localObject2 = ((a.a.a.g.a)localObject4).getInetAddress())
    {
      localObject4 = localObject2;
      if (!((Iterator)localObject1).hasNext()) {
        break label571;
      }
      localObject4 = (a.a.a.g.a)((Iterator)localObject1).next();
      if (localObject2 != null) {
        break;
      }
    }
    localObject1 = ((a.a.a.g.a)localObject4).getInetAddress();
    for (;;)
    {
      Object localObject5 = localObject1;
      localObject4 = localObject2;
      if (localObject2 == null)
      {
        localObject4 = e.cqf;
        switch (1.cpa[(coL - 1)])
        {
        default: 
          localObject4 = localObject2;
          localObject5 = localObject1;
        }
      }
      for (;;)
      {
        localObject1 = new LinkedList();
        try
        {
          localObject2 = a(paramd, paramd1, (InetAddress)localObject4);
          return (a.a.a.d)localObject2;
        }
        catch (IOException localIOException)
        {
          c(localIOException);
          ((List)localObject1).add(localIOException);
          if (localObject5 == null) {
            break label564;
          }
          try
          {
            paramd = a(paramd, paramd1, (InetAddress)localObject5);
            return paramd;
          }
          catch (IOException paramd)
          {
            ((List)localObject1).add(paramd);
          }
          f.B((List)localObject1);
          return null;
        }
        localObject1 = d((e)localObject1).iterator();
        for (localObject2 = null;; localObject2 = ((a.a.a.g.b)localObject4).getInetAddress())
        {
          localObject4 = localObject2;
          if (!((Iterator)localObject1).hasNext()) {
            break label571;
          }
          localObject4 = (a.a.a.g.b)((Iterator)localObject1).next();
          if (localObject2 != null) {
            break;
          }
        }
        localObject1 = ((a.a.a.g.b)localObject4).getInetAddress();
        break;
        localObject1 = a(c((e)localObject1), d((e)localObject1));
        localObject2 = localObject1[0];
        localObject1 = localObject1[1];
        break;
        localObject1 = a(d((e)localObject1), c((e)localObject1));
        localObject2 = localObject1[0];
        localObject1 = localObject1[1];
        break;
        localObject4 = Gc();
        localObject5 = localObject1;
        continue;
        localObject4 = Gd();
        localObject5 = localObject1;
        continue;
        localObject4 = Gc();
        localObject5 = Gd();
        continue;
        localObject4 = Gd();
        localObject5 = Gc();
      }
      label564:
      label571:
      localObject1 = null;
      Object localObject3 = localObject4;
    }
  }
  
  private a.a.a.d a(d paramd, a.a.a.d paramd1, InetAddress paramInetAddress)
    throws IOException
  {
    Object localObject1 = paramd1.FM();
    if (!paramd.ctD.containsKey(paramInetAddress)) {
      paramd.ctD.put(paramInetAddress, new HashSet());
    }
    while (!((Set)paramd.ctD.get(paramInetAddress)).contains(localObject1))
    {
      int i = paramd.ctE + 1;
      paramd.ctE = i;
      if (i <= paramd.ctv.ctr) {
        break;
      }
      throw new a.b();
    }
    throw new a.a();
    boolean bool = ((Set)paramd.ctD.get(paramInetAddress)).add(localObject1);
    if ((!d.$assertionsDisabled) && (!bool)) {
      throw new AssertionError();
    }
    paramInetAddress = super.a(paramd1, paramInetAddress);
    if (paramInetAddress == null) {
      return null;
    }
    if (paramInetAddress.cpf) {
      return paramInetAddress;
    }
    Object localObject2 = new ArrayList(paramInetAddress.cpn.size());
    ((List)localObject2).addAll(paramInetAddress.cpn);
    localObject1 = new LinkedList();
    Object localObject3 = ((List)localObject2).iterator();
    while (((Iterator)localObject3).hasNext())
    {
      Object localObject4 = (k)((Iterator)localObject3).next();
      if (((k)localObject4).cqT != k.b.crj)
      {
        ((Iterator)localObject3).remove();
      }
      else
      {
        localObject4 = a(paramInetAddress, ((a.a.a.g.j)((k)localObject4).cqY).cqS).cts.iterator();
        while (((Iterator)localObject4).hasNext())
        {
          Object localObject5 = (InetAddress)((Iterator)localObject4).next();
          try
          {
            localObject5 = a(paramd, paramd1, (InetAddress)localObject5);
            return (a.a.a.d)localObject5;
          }
          catch (IOException localIOException2)
          {
            c(localIOException2);
            coH.log(Level.FINER, "Exception while recursing", localIOException2);
            paramd.Gk();
            ((List)localObject1).add(localIOException2);
          }
          if (!((Iterator)localObject4).hasNext()) {
            ((Iterator)localObject3).remove();
          }
        }
      }
    }
    localObject2 = ((List)localObject2).iterator();
    for (;;)
    {
      if (((Iterator)localObject2).hasNext())
      {
        localObject3 = (k)((Iterator)localObject2).next();
        paramInetAddress = paramd1.FM();
        localObject3 = ((a.a.a.g.j)((k)localObject3).cqY).cqS;
        if ((paramInetAddress.cqS.equals(localObject3)) && ((paramInetAddress.cqT == k.b.cri) || (paramInetAddress.cqT == k.b.crJ))) {
          continue;
        }
        try
        {
          paramInetAddress = a(paramd, (e)localObject3);
          if (paramInetAddress != null)
          {
            paramInetAddress = paramInetAddress.cts.iterator();
            if (paramInetAddress.hasNext()) {
              localObject3 = (InetAddress)paramInetAddress.next();
            }
          }
        }
        catch (IOException paramInetAddress)
        {
          for (;;)
          {
            try
            {
              localObject3 = a(paramd, paramd1, (InetAddress)localObject3);
              return (a.a.a.d)localObject3;
            }
            catch (IOException localIOException1)
            {
              paramd.Gk();
              ((List)localObject1).add(localIOException1);
            }
            paramInetAddress = paramInetAddress;
            paramd.Gk();
            ((List)localObject1).add(paramInetAddress);
            paramInetAddress = null;
          }
        }
      }
    }
    f.B((List)localObject1);
    return null;
  }
  
  private a a(a.a.a.d paramd, e parame)
  {
    b.a.a locala = Ge();
    paramd = paramd.cpo.iterator();
    while (paramd.hasNext())
    {
      k localk = (k)paramd.next();
      if (localk.cqS.equals(parame)) {
        switch (1.coM[localk.cqT.ordinal()])
        {
        default: 
          break;
        case 1: 
          locala.ctt.add(a(parame.cqh, (a.a.a.g.a)localk.cqY));
          break;
        case 2: 
          locala.ctu.add(a(parame.cqh, (a.a.a.g.b)localk.cqY));
        }
      }
    }
    return locala.Gj();
  }
  
  private a a(d paramd, e parame)
    throws IOException
  {
    b.a.a locala;
    for (;;)
    {
      locala = Ge();
      Object localObject2;
      if (coL != a.a.a.a.a.coO)
      {
        localj = new a.a.a.j(parame, k.b.cri);
        localObject1 = a(paramd, b(localj));
        if (localObject1 != null)
        {
          localObject1 = ((a.a.a.d)localObject1).cpm.iterator();
          for (;;)
          {
            if (((Iterator)localObject1).hasNext())
            {
              localObject2 = (k)((Iterator)localObject1).next();
              if (((k)localObject2).e(localj))
              {
                localObject2 = a(parame.cqh, (a.a.a.g.a)((k)localObject2).cqY);
                locala.ctt.add(localObject2);
              }
              else if ((((k)localObject2).cqT == k.b.crm) && (((k)localObject2).cqS.equals(parame)))
              {
                parame = ((c)((k)localObject2).cqY).cqS;
                break;
              }
            }
          }
        }
      }
      if (coL == a.a.a.a.a.coN) {
        break;
      }
      a.a.a.j localj = new a.a.a.j(parame, k.b.crJ);
      Object localObject1 = a(paramd, b(localj));
      if (localObject1 == null) {
        break;
      }
      localObject1 = ((a.a.a.d)localObject1).cpm.iterator();
      do
      {
        for (;;)
        {
          if (!((Iterator)localObject1).hasNext()) {
            break label313;
          }
          localObject2 = (k)((Iterator)localObject1).next();
          if (!((k)localObject2).e(localj)) {
            break;
          }
          localObject2 = a(parame.cqh, (a.a.a.g.b)((k)localObject2).cqY);
          locala.ctu.add(localObject2);
        }
      } while ((((k)localObject2).cqT != k.b.crm) || (!((k)localObject2).cqS.equals(parame)));
      parame = ((c)((k)localObject2).cqY).cqS;
    }
    label313:
    return locala.Gj();
  }
  
  private static Inet4Address a(char paramChar, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    Object localObject = paramChar + ".root-servers.net";
    try
    {
      localObject = (Inet4Address)InetAddress.getByAddress((String)localObject, new byte[] { (byte)paramInt1, (byte)paramInt2, (byte)paramInt3, (byte)paramInt4 });
      ctn.put(Character.valueOf(paramChar), localObject);
      return (Inet4Address)localObject;
    }
    catch (UnknownHostException localUnknownHostException)
    {
      throw new RuntimeException(localUnknownHostException);
    }
  }
  
  private static InetAddress a(String paramString, a.a.a.g.a parama)
  {
    try
    {
      paramString = InetAddress.getByAddress(paramString, parama.Gm());
      return paramString;
    }
    catch (UnknownHostException paramString)
    {
      throw new RuntimeException(paramString);
    }
  }
  
  private static InetAddress a(String paramString, a.a.a.g.b paramb)
  {
    try
    {
      paramString = InetAddress.getByAddress(paramString, paramb.Gm());
      return paramString;
    }
    catch (UnknownHostException paramString)
    {
      throw new RuntimeException(paramString);
    }
  }
  
  private static InetAddress[] a(Collection<? extends h> paramCollection1, Collection<? extends h> paramCollection2)
  {
    InetAddress[] arrayOfInetAddress = new InetAddress[2];
    paramCollection1 = paramCollection1.iterator();
    while (paramCollection1.hasNext())
    {
      h localh = (h)paramCollection1.next();
      if (arrayOfInetAddress[0] == null)
      {
        arrayOfInetAddress[0] = localh.getInetAddress();
        if (paramCollection2.isEmpty()) {
          break;
        }
      }
      else if (arrayOfInetAddress[1] == null)
      {
        arrayOfInetAddress[1] = localh.getInetAddress();
      }
    }
    paramCollection1 = paramCollection2.iterator();
    while (paramCollection1.hasNext())
    {
      paramCollection2 = (h)paramCollection1.next();
      if (arrayOfInetAddress[0] == null) {
        arrayOfInetAddress[0] = paramCollection2.getInetAddress();
      } else if (arrayOfInetAddress[1] == null) {
        arrayOfInetAddress[1] = paramCollection2.getInetAddress();
      }
    }
    return arrayOfInetAddress;
  }
  
  private static Inet6Address b(char paramChar, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    Object localObject = paramChar + ".root-servers.net";
    try
    {
      localObject = (Inet6Address)InetAddress.getByAddress((String)localObject, new byte[] { 32, 1, (byte)(paramInt1 >> 8), (byte)paramInt1, (byte)(paramInt2 >> 8), (byte)paramInt2, 0, 0, 0, 0, 0, 0, (byte)(paramInt3 >> 8), (byte)paramInt3, (byte)(paramInt4 >> 8), (byte)paramInt4 });
      cto.put(Character.valueOf(paramChar), localObject);
      return (Inet6Address)localObject;
    }
    catch (UnknownHostException localUnknownHostException)
    {
      throw new RuntimeException(localUnknownHostException);
    }
  }
  
  private static void c(IOException paramIOException)
    throws IOException
  {
    if ((paramIOException instanceof a.a)) {
      throw paramIOException;
    }
  }
  
  protected final a.a.a.d a(d.a parama)
    throws IOException
  {
    parama = parama.FQ();
    return a(new d(this), parama);
  }
  
  protected boolean a(a.a.a.j paramj, a.a.a.d paramd)
  {
    return paramd.cpf;
  }
  
  protected d.a b(d.a parama)
  {
    parama.cph = false;
    parama.FP().eX(this.coK.Gn());
    return parama;
  }
  
  private static final class a
  {
    final List<InetAddress> cts;
    
    private a(List<InetAddress> paramList1, List<InetAddress> paramList2, Random paramRandom)
    {
      int i;
      switch (b.1.cpa[(b.Gf() - 1)])
      {
      default: 
        i = paramList1.size() + paramList2.size();
      }
      while (i == 0)
      {
        this.cts = Collections.emptyList();
        return;
        i = paramList1.size();
        continue;
        i = paramList2.size();
      }
      switch (b.1.cpa[(b.Gg() - 1)])
      {
      case 2: 
      default: 
        switch (b.1.cpa[(b.Gh() - 1)])
        {
        default: 
          label160:
          paramRandom = new ArrayList(i);
          switch (b.1.cpa[(b.Gi() - 1)])
          {
          }
          break;
        }
        break;
      }
      for (;;)
      {
        this.cts = Collections.unmodifiableList(paramRandom);
        return;
        Collections.shuffle(paramList1, paramRandom);
        break;
        Collections.shuffle(paramList2, paramRandom);
        break label160;
        paramRandom.addAll(paramList1);
        continue;
        paramRandom.addAll(paramList2);
        continue;
        paramRandom.addAll(paramList1);
        paramRandom.addAll(paramList2);
        continue;
        paramRandom.addAll(paramList2);
        paramRandom.addAll(paramList1);
      }
    }
    
    private static final class a
    {
      final List<InetAddress> ctt = new ArrayList(8);
      final List<InetAddress> ctu = new ArrayList(8);
      private final Random random;
      
      private a(Random paramRandom)
      {
        this.random = paramRandom;
      }
      
      public final b.a Gj()
      {
        return new b.a(this.ctt, this.ctu, this.random, (byte)0);
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/a/a/a/f/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */