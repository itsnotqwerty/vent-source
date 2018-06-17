package a.a.a;

import a.a.a.g.o;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;

public class d
{
  private static final Logger coH = Logger.getLogger(d.class.getName());
  public final b cpc;
  public final c cpd;
  public final boolean cpe;
  public final boolean cpf;
  public final boolean cpg;
  public final boolean cph;
  public final boolean cpi;
  public final boolean cpj;
  public final boolean cpk;
  public final List<j> cpl;
  public final List<k<? extends a.a.a.g.g>> cpm;
  public final List<k<? extends a.a.a.g.g>> cpn;
  public final List<k<? extends a.a.a.g.g>> cpo;
  public final int cpp;
  private g cpq;
  public final long cpr;
  private byte[] cps;
  private String cpt;
  private d cpu;
  private transient Integer cpv;
  public final int id;
  
  protected d(a parama)
  {
    this.id = parama.id;
    this.cpc = parama.cpc;
    this.cpd = parama.cpd;
    this.cpr = parama.cpr;
    this.cpe = parama.cpw;
    this.cpf = parama.cpf;
    this.cpg = parama.cpg;
    this.cph = parama.cph;
    this.cpi = parama.cpi;
    this.cpj = parama.cpj;
    this.cpk = parama.cpk;
    label120:
    label134:
    label155:
    int i;
    if (parama.cpl == null)
    {
      this.cpl = Collections.emptyList();
      if (parama.cpx != null) {
        break label268;
      }
      this.cpm = Collections.emptyList();
      if (parama.cpy != null) {
        break label310;
      }
      this.cpn = Collections.emptyList();
      if ((parama.cpz != null) || (parama.cpA != null)) {
        break label352;
      }
      this.cpo = Collections.emptyList();
      this.cpp = A(this.cpo);
      if (this.cpp == -1) {
        return;
      }
      i = this.cpp + 1;
    }
    for (;;)
    {
      if (i >= this.cpo.size()) {
        return;
      }
      if (((k)this.cpo.get(i)).cqT == k.b.crW)
      {
        throw new IllegalArgumentException("There must be only one OPT pseudo RR in the additional section");
        ArrayList localArrayList = new ArrayList(parama.cpl.size());
        localArrayList.addAll(parama.cpl);
        this.cpl = Collections.unmodifiableList(localArrayList);
        break;
        label268:
        localArrayList = new ArrayList(parama.cpx.size());
        localArrayList.addAll(parama.cpx);
        this.cpm = Collections.unmodifiableList(localArrayList);
        break label120;
        label310:
        localArrayList = new ArrayList(parama.cpy.size());
        localArrayList.addAll(parama.cpy);
        this.cpn = Collections.unmodifiableList(localArrayList);
        break label134;
        label352:
        i = 0;
        if (parama.cpz != null) {
          i = parama.cpz.size() + 0;
        }
        int j = i;
        if (parama.cpA != null) {
          j = i + 1;
        }
        localArrayList = new ArrayList(j);
        if (parama.cpz != null) {
          localArrayList.addAll(parama.cpz);
        }
        if (parama.cpA != null)
        {
          parama = new g(parama.cpA);
          this.cpq = parama;
          if (parama.cqK == null)
          {
            long l1 = parama.flags;
            long l2 = parama.cqH << 8;
            long l3 = parama.version << 16;
            parama.cqK = new k(e.cqe, k.b.crW, parama.cqG, l1 | l2 | l3, new o(parama.cqI));
          }
          localArrayList.add(parama.cqK);
        }
        this.cpo = Collections.unmodifiableList(localArrayList);
        break label155;
      }
      i += 1;
    }
  }
  
  private d(d paramd)
  {
    this.id = 0;
    this.cpe = paramd.cpe;
    this.cpc = paramd.cpc;
    this.cpf = paramd.cpf;
    this.cpg = paramd.cpg;
    this.cph = paramd.cph;
    this.cpi = paramd.cpi;
    this.cpj = paramd.cpj;
    this.cpk = paramd.cpk;
    this.cpd = paramd.cpd;
    this.cpr = paramd.cpr;
    this.cpl = paramd.cpl;
    this.cpm = paramd.cpm;
    this.cpn = paramd.cpn;
    this.cpo = paramd.cpo;
    this.cpp = paramd.cpp;
  }
  
  public d(byte[] paramArrayOfByte)
    throws IOException
  {
    DataInputStream localDataInputStream = new DataInputStream(new ByteArrayInputStream(paramArrayOfByte));
    this.id = localDataInputStream.readUnsignedShort();
    int i = localDataInputStream.readUnsignedShort();
    if ((i >> 15 & 0x1) == 1)
    {
      bool1 = true;
      this.cpe = bool1;
      this.cpc = b.eV(i >> 11 & 0xF);
      if ((i >> 10 & 0x1) != 1) {
        break label287;
      }
      bool1 = true;
      label87:
      this.cpf = bool1;
      if ((i >> 9 & 0x1) != 1) {
        break label293;
      }
      bool1 = true;
      label106:
      this.cpg = bool1;
      if ((i >> 8 & 0x1) != 1) {
        break label299;
      }
      bool1 = true;
      label125:
      this.cph = bool1;
      if ((i >> 7 & 0x1) != 1) {
        break label305;
      }
      bool1 = true;
      label144:
      this.cpi = bool1;
      if ((i >> 5 & 0x1) != 1) {
        break label311;
      }
      bool1 = true;
      label162:
      this.cpj = bool1;
      if ((i >> 4 & 0x1) != 1) {
        break label317;
      }
    }
    int n;
    int m;
    int k;
    label287:
    label293:
    label299:
    label305:
    label311:
    label317:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      this.cpk = bool1;
      this.cpd = c.eW(i & 0xF);
      this.cpr = System.currentTimeMillis();
      int i1 = localDataInputStream.readUnsignedShort();
      n = localDataInputStream.readUnsignedShort();
      m = localDataInputStream.readUnsignedShort();
      k = localDataInputStream.readUnsignedShort();
      this.cpl = new ArrayList(i1);
      i = 0;
      while (i < i1)
      {
        this.cpl.add(new j(localDataInputStream, paramArrayOfByte));
        i += 1;
      }
      bool1 = false;
      break;
      bool1 = false;
      break label87;
      bool1 = false;
      break label106;
      bool1 = false;
      break label125;
      bool1 = false;
      break label144;
      bool1 = false;
      break label162;
    }
    this.cpm = new ArrayList(n);
    i = 0;
    while (i < n)
    {
      this.cpm.add(k.b(localDataInputStream, paramArrayOfByte));
      i += 1;
    }
    this.cpn = new ArrayList(m);
    i = 0;
    while (i < m)
    {
      this.cpn.add(k.b(localDataInputStream, paramArrayOfByte));
      i += 1;
    }
    this.cpo = new ArrayList(k);
    i = j;
    while (i < k)
    {
      this.cpo.add(k.b(localDataInputStream, paramArrayOfByte));
      i += 1;
    }
    this.cpp = A(this.cpo);
  }
  
  private static int A(List<k<? extends a.a.a.g.g>> paramList)
  {
    int i = 0;
    while (i < paramList.size())
    {
      if (((k)paramList.get(i)).cqT == k.b.crW) {
        return i;
      }
      i += 1;
    }
    return -1;
  }
  
  public static a FO()
  {
    return new a((byte)0);
  }
  
  public final byte[] FL()
  {
    int j = 0;
    if (this.cps != null) {
      return this.cps;
    }
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream(512);
    DataOutputStream localDataOutputStream = new DataOutputStream(localByteArrayOutputStream);
    if (this.cpe) {
      j = 32768;
    }
    int i = j;
    if (this.cpc != null) {
      i = j + (this.cpc.value << 11);
    }
    j = i;
    if (this.cpf) {
      j = i + 1024;
    }
    i = j;
    if (this.cpg) {
      i = j + 512;
    }
    j = i;
    if (this.cph) {
      j = i + 256;
    }
    i = j;
    if (this.cpi) {
      i = j + 128;
    }
    j = i;
    if (this.cpj) {
      j = i + 32;
    }
    i = j;
    if (this.cpk) {
      i = j + 16;
    }
    j = i;
    if (this.cpd != null) {
      j = i + this.cpd.value;
    }
    Iterator localIterator;
    for (;;)
    {
      try
      {
        localDataOutputStream.writeShort((short)this.id);
        localDataOutputStream.writeShort((short)j);
        if (this.cpl == null)
        {
          localDataOutputStream.writeShort(0);
          if (this.cpm != null) {
            break label321;
          }
          localDataOutputStream.writeShort(0);
          if (this.cpn != null) {
            break label339;
          }
          localDataOutputStream.writeShort(0);
          if (this.cpo != null) {
            break label357;
          }
          localDataOutputStream.writeShort(0);
          if (this.cpl == null) {
            break;
          }
          localIterator = this.cpl.iterator();
          if (!localIterator.hasNext()) {
            break;
          }
          localDataOutputStream.write(((j)localIterator.next()).toByteArray());
          continue;
        }
        localDataOutputStream.writeShort((short)this.cpl.size());
      }
      catch (IOException localIOException)
      {
        throw new AssertionError(localIOException);
      }
      continue;
      label321:
      localDataOutputStream.writeShort((short)this.cpm.size());
      continue;
      label339:
      localDataOutputStream.writeShort((short)this.cpn.size());
      continue;
      label357:
      localDataOutputStream.writeShort((short)this.cpo.size());
    }
    if (this.cpm != null)
    {
      localIterator = this.cpm.iterator();
      while (localIterator.hasNext()) {
        localDataOutputStream.write(((k)localIterator.next()).toByteArray());
      }
    }
    if (this.cpn != null)
    {
      localIterator = this.cpn.iterator();
      while (localIterator.hasNext()) {
        localDataOutputStream.write(((k)localIterator.next()).toByteArray());
      }
    }
    if (this.cpo != null)
    {
      localIterator = this.cpo.iterator();
      while (localIterator.hasNext()) {
        localDataOutputStream.write(((k)localIterator.next()).toByteArray());
      }
    }
    localDataOutputStream.flush();
    this.cps = localIOException.toByteArray();
    return this.cps;
  }
  
  public final j FM()
  {
    return (j)this.cpl.get(0);
  }
  
  public final d FN()
  {
    if (this.cpu == null) {
      this.cpu = new d(this);
    }
    return this.cpu;
  }
  
  public final <D extends a.a.a.g.g> Set<D> c(j paramj)
  {
    if (this.cpd != c.cpJ) {
      return null;
    }
    HashSet localHashSet = new HashSet(this.cpm.size());
    Iterator localIterator = this.cpm.iterator();
    while (localIterator.hasNext())
    {
      k localk = (k)localIterator.next();
      if ((localk.e(paramj)) && (!localHashSet.add(localk.cqY))) {
        coH.log(Level.WARNING, "DNSMessage contains duplicate answers. Record: " + localk + "; DNSMessage: " + this);
      }
    }
    return localHashSet;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof d)) {
      return false;
    }
    if (paramObject == this) {
      return true;
    }
    paramObject = ((d)paramObject).FL();
    return Arrays.equals(FL(), (byte[])paramObject);
  }
  
  public int hashCode()
  {
    if (this.cpv == null) {
      this.cpv = Integer.valueOf(Arrays.hashCode(FL()));
    }
    return this.cpv.intValue();
  }
  
  public String toString()
  {
    if (this.cpt != null) {
      return this.cpt;
    }
    StringBuilder localStringBuilder = new StringBuilder("DNSMessage(").append(this.id).append(' ').append(this.cpc).append(' ').append(this.cpd).append(' ');
    if (this.cpe) {
      localStringBuilder.append("resp[qr=1]");
    }
    Iterator localIterator;
    Object localObject;
    for (;;)
    {
      if (this.cpf) {
        localStringBuilder.append(" aa");
      }
      if (this.cpg) {
        localStringBuilder.append(" tr");
      }
      if (this.cph) {
        localStringBuilder.append(" rd");
      }
      if (this.cpi) {
        localStringBuilder.append(" ra");
      }
      if (this.cpj) {
        localStringBuilder.append(" ad");
      }
      if (this.cpk) {
        localStringBuilder.append(" cd");
      }
      localStringBuilder.append(")\n");
      if (this.cpl == null) {
        break;
      }
      localIterator = this.cpl.iterator();
      while (localIterator.hasNext())
      {
        localObject = (j)localIterator.next();
        localStringBuilder.append("[Q: ").append(localObject).append("]\n");
      }
      localStringBuilder.append("query[qr=0]");
    }
    if (this.cpm != null)
    {
      localIterator = this.cpm.iterator();
      while (localIterator.hasNext())
      {
        localObject = (k)localIterator.next();
        localStringBuilder.append("[A: ").append(localObject).append("]\n");
      }
    }
    if (this.cpn != null)
    {
      localIterator = this.cpn.iterator();
      while (localIterator.hasNext())
      {
        localObject = (k)localIterator.next();
        localStringBuilder.append("[N: ").append(localObject).append("]\n");
      }
    }
    if (this.cpo != null)
    {
      localIterator = this.cpo.iterator();
      if (localIterator.hasNext())
      {
        localObject = (k)localIterator.next();
        localStringBuilder.append("[X: ");
        g localg = g.a((k)localObject);
        if (localg != null) {
          localStringBuilder.append(localg.toString());
        }
        for (;;)
        {
          localStringBuilder.append("]\n");
          break;
          localStringBuilder.append(localObject);
        }
      }
    }
    if (localStringBuilder.charAt(localStringBuilder.length() - 1) == '\n') {
      localStringBuilder.setLength(localStringBuilder.length() - 1);
    }
    this.cpt = localStringBuilder.toString();
    return this.cpt;
  }
  
  public static final class a
  {
    g.a cpA;
    d.b cpc = d.b.cpB;
    d.c cpd = d.c.cpJ;
    boolean cpf;
    boolean cpg;
    public boolean cph;
    boolean cpi;
    boolean cpj;
    boolean cpk;
    List<j> cpl;
    long cpr = -1L;
    boolean cpw;
    List<k<? extends a.a.a.g.g>> cpx;
    List<k<? extends a.a.a.g.g>> cpy;
    List<k<? extends a.a.a.g.g>> cpz;
    int id;
    
    public final g.a FP()
    {
      if (this.cpA == null) {
        this.cpA = g.FW();
      }
      return this.cpA;
    }
    
    public final d FQ()
    {
      return new d(this);
    }
    
    public final a d(j paramj)
    {
      this.cpl = new ArrayList(1);
      this.cpl.add(paramj);
      return this;
    }
  }
  
  public static enum b
  {
    private static final b[] cpH;
    final byte value = (byte)ordinal();
    
    static
    {
      int i = 0;
      cpB = new b("QUERY", 0);
      cpC = new b("INVERSE_QUERY", 1);
      cpD = new b("STATUS", 2);
      cpE = new b("UNASSIGNED3", 3);
      cpF = new b("NOTIFY", 4);
      cpG = new b("UPDATE", 5);
      cpI = new b[] { cpB, cpC, cpD, cpE, cpF, cpG };
      cpH = new b[values().length];
      b[] arrayOfb = values();
      int j = arrayOfb.length;
      while (i < j)
      {
        b localb = arrayOfb[i];
        if (cpH[localb.value] != null) {
          throw new IllegalStateException();
        }
        cpH[localb.value] = localb;
        i += 1;
      }
    }
    
    private b() {}
    
    public static b eV(int paramInt)
      throws IllegalArgumentException
    {
      if ((paramInt < 0) || (paramInt > 15)) {
        throw new IllegalArgumentException();
      }
      if (paramInt >= cpH.length) {
        return null;
      }
      return cpH[paramInt];
    }
  }
  
  public static enum c
  {
    private static final Map<Integer, c> cqc;
    final byte value;
    
    static
    {
      int i = 0;
      cpJ = new c("NO_ERROR", 0, 0);
      cpK = new c("FORMAT_ERR", 1, 1);
      cpL = new c("SERVER_FAIL", 2, 2);
      cpM = new c("NX_DOMAIN", 3, 3);
      cpN = new c("NO_IMP", 4, 4);
      cpO = new c("REFUSED", 5, 5);
      cpP = new c("YXDOMAIN", 6, 6);
      cpQ = new c("YXRRSET", 7, 7);
      cpR = new c("NXRRSET", 8, 8);
      cpS = new c("NOT_AUTH", 9, 9);
      cpT = new c("NOT_ZONE", 10, 10);
      cpU = new c("BADVERS_BADSIG", 11, 16);
      cpV = new c("BADKEY", 12, 17);
      cpW = new c("BADTIME", 13, 18);
      cpX = new c("BADMODE", 14, 19);
      cpY = new c("BADNAME", 15, 20);
      cpZ = new c("BADALG", 16, 21);
      cqa = new c("BADTRUNC", 17, 22);
      cqb = new c("BADCOOKIE", 18, 23);
      cqd = new c[] { cpJ, cpK, cpL, cpM, cpN, cpO, cpP, cpQ, cpR, cpS, cpT, cpU, cpV, cpW, cpX, cpY, cpZ, cqa, cqb };
      cqc = new HashMap(values().length);
      c[] arrayOfc = values();
      int j = arrayOfc.length;
      while (i < j)
      {
        c localc = arrayOfc[i];
        cqc.put(Integer.valueOf(localc.value), localc);
        i += 1;
      }
    }
    
    private c(int paramInt)
    {
      this.value = ((byte)paramInt);
    }
    
    public static c eW(int paramInt)
      throws IllegalArgumentException
    {
      if ((paramInt < 0) || (paramInt > 65535)) {
        throw new IllegalArgumentException();
      }
      return (c)cqc.get(Integer.valueOf(paramInt));
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/a/a/a/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */