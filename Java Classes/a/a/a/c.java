package a.a.a;

import a.a.a.i.f;
import java.io.IOException;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.logging.Level;
import java.util.logging.Logger;

public class c
  extends a
{
  static final List<a.a.a.b.d> coS = new ArrayList();
  static final Set<Inet4Address> coT = new CopyOnWriteArraySet();
  static final Set<Inet6Address> coU = new CopyOnWriteArraySet();
  private static final Set<String> coV;
  private final Set<InetAddress> coW = Collections.newSetFromMap(new ConcurrentHashMap(4));
  private boolean coX = false;
  private boolean coY = false;
  private boolean coZ = true;
  
  static
  {
    a(a.a.a.b.b.csX);
    a(a.a.a.b.c.csX);
    a(a.a.a.b.e.csX);
    try
    {
      localObject = a.a.a.i.e.w("8.8.8.8");
      coT.add(localObject);
    }
    catch (IllegalArgumentException localIllegalArgumentException1)
    {
      try
      {
        for (;;)
        {
          Object localObject = a.a.a.i.e.x("[2001:4860:4860::8888]");
          coU.add(localObject);
          coV = Collections.newSetFromMap(new ConcurrentHashMap(4));
          return;
          localIllegalArgumentException1 = localIllegalArgumentException1;
          coH.log(Level.WARNING, "Could not add static IPv4 DNS Server", localIllegalArgumentException1);
        }
      }
      catch (IllegalArgumentException localIllegalArgumentException2)
      {
        for (;;)
        {
          coH.log(Level.WARNING, "Could not add static IPv6 DNS Server", localIllegalArgumentException2);
        }
      }
    }
  }
  
  public c(b paramb)
  {
    super(paramb);
  }
  
  private static String[] FI()
  {
    String[] arrayOfString1 = null;
    label185:
    label190:
    label193:
    for (;;)
    {
      ArrayList localArrayList;
      try
      {
        Iterator localIterator1 = coS.iterator();
        if (!localIterator1.hasNext()) {
          break label185;
        }
        a.a.a.b.d locald = (a.a.a.b.d)localIterator1.next();
        arrayOfString1 = locald.FX();
        if (arrayOfString1 == null) {
          break label193;
        }
        localArrayList = new ArrayList(Arrays.asList(arrayOfString1));
        Iterator localIterator2 = localArrayList.iterator();
        if (localIterator2.hasNext())
        {
          String str = (String)localIterator2.next();
          if (!coV.contains(str)) {
            continue;
          }
          coH.fine("The DNS server lookup mechanism '" + locald.getName() + "' returned a blacklisted result: '" + str + "'");
          localIterator2.remove();
          continue;
        }
        if (localArrayList.isEmpty()) {
          break label190;
        }
      }
      finally {}
      String[] arrayOfString2 = (String[])localArrayList.toArray(new String[localArrayList.size()]);
      return arrayOfString2;
    }
  }
  
  private InetAddress FJ()
  {
    return (InetAddress)a.a.a.i.c.a(coT, this.coI);
  }
  
  private InetAddress FK()
  {
    return (InetAddress)a.a.a.i.c.a(coU, this.coI);
  }
  
  /* Error */
  private static void a(a.a.a.b.d paramd)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: aload_0
    //   4: invokeinterface 216 1 0
    //   9: ifne +39 -> 48
    //   12: getstatic 93	a/a/a/c:coH	Ljava/util/logging/Logger;
    //   15: new 160	java/lang/StringBuilder
    //   18: dup
    //   19: ldc -38
    //   21: invokespecial 165	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   24: aload_0
    //   25: invokeinterface 169 1 0
    //   30: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   33: ldc -36
    //   35: invokevirtual 173	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   38: invokevirtual 180	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   41: invokevirtual 183	java/util/logging/Logger:fine	(Ljava/lang/String;)V
    //   44: ldc 2
    //   46: monitorexit
    //   47: return
    //   48: getstatic 33	a/a/a/c:coS	Ljava/util/List;
    //   51: aload_0
    //   52: invokeinterface 221 2 0
    //   57: pop
    //   58: getstatic 33	a/a/a/c:coS	Ljava/util/List;
    //   61: invokestatic 225	java/util/Collections:sort	(Ljava/util/List;)V
    //   64: goto -20 -> 44
    //   67: astore_0
    //   68: ldc 2
    //   70: monitorexit
    //   71: aload_0
    //   72: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	73	0	paramd	a.a.a.b.d
    // Exception table:
    //   from	to	target	type
    //   3	44	67	finally
    //   48	64	67	finally
  }
  
  public final d a(d.a parama)
    throws IOException
  {
    int j = 0;
    d locald1 = b(parama).FQ();
    if (this.coJ == null) {}
    for (parama = null; parama != null; parama = this.coJ.a(locald1)) {
      return parama;
    }
    parama = FI();
    label73:
    Object localObject1;
    if (parama == null)
    {
      parama = new String[0];
      i = 0;
      localObject2 = new ArrayList(i + 2);
      int k = parama.length;
      i = 0;
      if (i >= k) {
        break label134;
      }
      localObject1 = parama[i];
      if ((localObject1 != null) && (!((String)localObject1).isEmpty())) {
        break label118;
      }
      coH.finest("findDns() returned null or empty string as dns server");
    }
    for (;;)
    {
      i += 1;
      break label73;
      i = parama.length;
      break;
      label118:
      ((List)localObject2).add(InetAddress.getByName((String)localObject1));
    }
    label134:
    Object localObject3 = new InetAddress[2];
    int i = j;
    if (this.coZ) {
      switch (1.cpa[(coL - 1)])
      {
      default: 
        parama = null;
        localObject1 = null;
      }
    }
    for (;;)
    {
      localObject3[0] = localObject1;
      localObject3[1] = parama;
      i = j;
      while (i < 2)
      {
        parama = localObject3[i];
        if (parama != null) {
          ((List)localObject2).add(parama);
        }
        i += 1;
      }
      localObject1 = FJ();
      parama = FK();
      continue;
      localObject1 = FK();
      parama = FJ();
      continue;
      localObject1 = FJ();
      parama = null;
      continue;
      localObject1 = FK();
      parama = null;
    }
    localObject3 = new ArrayList(((List)localObject2).size());
    Object localObject2 = ((List)localObject2).iterator();
    d locald2;
    while (((Iterator)localObject2).hasNext())
    {
      parama = (InetAddress)((Iterator)localObject2).next();
      if (this.coW.contains(parama))
      {
        coH.finer("Skipping " + parama + " because it was marked as \"recursion not available\"");
      }
      else
      {
        try
        {
          locald2 = super.a(locald1, parama);
          if (locald2 == null) {
            continue;
          }
          if (locald2.cpi) {
            break label457;
          }
          if (!this.coW.add(parama)) {
            continue;
          }
          coH.warning("The DNS server " + parama + " returned a response without the \"recursion available\" (RA) flag set. This likely indicates a misconfiguration because the server is not suitable for DNS resolution");
        }
        catch (IOException parama)
        {
          ((List)localObject3).add(parama);
        }
        continue;
        label457:
        if (this.coY) {
          return locald2;
        }
        switch (1.cpb[locald2.cpd.ordinal()])
        {
        }
      }
    }
    for (;;)
    {
      localObject1 = "Response from " + parama + " asked for " + locald1.FM() + " with error code: " + locald2.cpd + '.';
      parama = (d.a)localObject1;
      if (!coH.isLoggable(Level.FINE)) {
        parama = (String)localObject1 + "\n" + locald2;
      }
      coH.warning(parama);
      break;
      return locald2;
      f.B((List)localObject3);
      return null;
    }
  }
  
  public d.a b(d.a parama)
  {
    parama.cph = true;
    parama.FP().eX(this.coK.Gn()).cqJ = this.coX;
    return parama;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/a/a/a/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */