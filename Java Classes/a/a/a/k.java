package a.a.a;

import a.a.a.g.a;
import a.a.a.g.b;
import a.a.a.g.c;
import a.a.a.g.d;
import a.a.a.g.f;
import a.a.a.g.g;
import a.a.a.g.i;
import a.a.a.g.l;
import a.a.a.g.m;
import a.a.a.g.n;
import a.a.a.g.o;
import a.a.a.g.p;
import a.a.a.g.q;
import a.a.a.g.r;
import a.a.a.g.s;
import a.a.a.g.t;
import a.a.a.g.u;
import a.a.a.g.v;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public final class k<D extends g>
{
  private transient Integer cpv;
  public final e cqS;
  public final b cqT;
  public final a cqU;
  protected final boolean cqV;
  public final int cqW;
  public final long cqX;
  public final D cqY;
  private byte[] sY;
  
  public k(e parame, b paramb, int paramInt, long paramLong, D paramD)
  {
    this(parame, paramb, a.crd, paramInt, paramLong, paramD, false);
  }
  
  private k(e parame, b paramb, a parama, int paramInt, long paramLong, D paramD, boolean paramBoolean)
  {
    this.cqS = parame;
    this.cqT = paramb;
    this.cqU = parama;
    this.cqW = paramInt;
    this.cqX = paramLong;
    this.cqY = paramD;
    this.cqV = paramBoolean;
  }
  
  public static k<g> b(DataInputStream paramDataInputStream, byte[] paramArrayOfByte)
    throws IOException
  {
    e locale = e.a(paramDataInputStream, paramArrayOfByte);
    b localb = b.fa(paramDataInputStream.readUnsignedShort());
    int i = paramDataInputStream.readUnsignedShort();
    a locala = a.eZ(i & 0x7FFF);
    boolean bool;
    long l1;
    long l2;
    int j;
    if ((0x8000 & i) > 0)
    {
      bool = true;
      l1 = paramDataInputStream.readUnsignedShort();
      l2 = paramDataInputStream.readUnsignedShort();
      j = paramDataInputStream.readUnsignedShort();
      switch (1.coM[localb.ordinal()])
      {
      default: 
        paramDataInputStream = new v(paramDataInputStream, j, localb);
      }
    }
    for (;;)
    {
      return new k(locale, localb, locala, i, (l1 << 16) + l2, paramDataInputStream, bool);
      bool = false;
      break;
      paramDataInputStream = new r(e.a(paramDataInputStream, paramArrayOfByte), e.a(paramDataInputStream, paramArrayOfByte), paramDataInputStream.readInt() & 0xFFFFFFFF, paramDataInputStream.readInt(), paramDataInputStream.readInt(), paramDataInputStream.readInt(), paramDataInputStream.readInt() & 0xFFFFFFFF);
      continue;
      paramDataInputStream = new s(paramDataInputStream.readUnsignedShort(), paramDataInputStream.readUnsignedShort(), paramDataInputStream.readUnsignedShort(), e.a(paramDataInputStream, paramArrayOfByte));
      continue;
      paramDataInputStream = i.d(paramDataInputStream, paramArrayOfByte);
      continue;
      paramArrayOfByte = new byte[16];
      paramDataInputStream.readFully(paramArrayOfByte);
      paramDataInputStream = new b(paramArrayOfByte);
      continue;
      paramArrayOfByte = new byte[4];
      paramDataInputStream.readFully(paramArrayOfByte);
      paramDataInputStream = new a(paramArrayOfByte);
      continue;
      paramDataInputStream = new a.a.a.g.j(c.c(paramDataInputStream, paramArrayOfByte).cqS);
      continue;
      paramDataInputStream = c.c(paramDataInputStream, paramArrayOfByte);
      continue;
      paramDataInputStream = new p(c.c(paramDataInputStream, paramArrayOfByte).cqS);
      continue;
      paramArrayOfByte = new byte[j];
      paramDataInputStream.readFully(paramArrayOfByte);
      paramDataInputStream = new u(paramArrayOfByte);
      continue;
      paramDataInputStream = o.e(paramDataInputStream, j);
      continue;
      paramDataInputStream = a.a.a.g.e.b(paramDataInputStream, j);
      continue;
      paramDataInputStream = q.a(paramDataInputStream, paramArrayOfByte, j);
      continue;
      paramDataInputStream = f.c(paramDataInputStream, j);
      continue;
      paramArrayOfByte = e.a(paramDataInputStream, paramArrayOfByte);
      byte[] arrayOfByte = new byte[j - paramArrayOfByte.size()];
      if (paramDataInputStream.read(arrayOfByte) != arrayOfByte.length) {
        throw new IOException();
      }
      paramDataInputStream = new a.a.a.g.k(paramArrayOfByte, a.a.a.g.k.w(arrayOfByte));
      continue;
      paramDataInputStream = l.d(paramDataInputStream, j);
      continue;
      paramDataInputStream = m.a(paramDataInputStream);
      continue;
      byte b1 = paramDataInputStream.readByte();
      byte b2 = paramDataInputStream.readByte();
      byte b3 = paramDataInputStream.readByte();
      paramArrayOfByte = new byte[j - 3];
      if (paramDataInputStream.read(paramArrayOfByte) != paramArrayOfByte.length) {
        throw new IOException();
      }
      paramDataInputStream = new t(b1, b2, b3, paramArrayOfByte);
      continue;
      paramArrayOfByte = new byte[j];
      paramDataInputStream.readFully(paramArrayOfByte);
      paramDataInputStream = new n(paramArrayOfByte);
      continue;
      paramDataInputStream = d.a(paramDataInputStream, j);
    }
  }
  
  public final boolean e(j paramj)
  {
    return ((paramj.cqT == this.cqT) || (paramj.cqT == b.csH)) && ((paramj.cqU == this.cqU) || (paramj.cqU == a.cre)) && (paramj.cqS.equals(this.cqS));
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof k)) {}
    do
    {
      return false;
      if (paramObject == this) {
        return true;
      }
      paramObject = (k)paramObject;
    } while ((!this.cqS.equals(((k)paramObject).cqS)) || (this.cqT != ((k)paramObject).cqT) || (this.cqU != ((k)paramObject).cqU) || (!this.cqY.equals(((k)paramObject).cqY)));
    return true;
  }
  
  public final int hashCode()
  {
    if (this.cpv == null) {
      this.cpv = Integer.valueOf((((this.cqS.hashCode() + 37) * 37 + this.cqT.hashCode()) * 37 + this.cqU.hashCode()) * 37 + this.cqY.hashCode());
    }
    return this.cpv.intValue();
  }
  
  public final byte[] toByteArray()
  {
    if (this.sY == null)
    {
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream(this.cqS.size() + 8 + this.cqY.length());
      DataOutputStream localDataOutputStream = new DataOutputStream(localByteArrayOutputStream);
      try
      {
        if (this.cqY == null) {
          throw new IllegalStateException("Empty Record has no byte representation");
        }
      }
      catch (IOException localIOException)
      {
        throw new AssertionError(localIOException);
      }
      this.cqS.writeToStream(localDataOutputStream);
      localDataOutputStream.writeShort(this.cqT.value);
      localDataOutputStream.writeShort(this.cqW);
      localDataOutputStream.writeInt((int)this.cqX);
      localDataOutputStream.writeShort(this.cqY.length());
      g localg = this.cqY;
      localg.Gl();
      localDataOutputStream.write(localg.sY);
      this.sY = localIOException.toByteArray();
    }
    return (byte[])this.sY.clone();
  }
  
  public final String toString()
  {
    return this.cqS + ".\t" + this.cqX + '\t' + this.cqU + '\t' + this.cqT + '\t' + this.cqY;
  }
  
  public static enum a
  {
    private static final HashMap<Integer, a> crf;
    final int value;
    
    static
    {
      int i = 0;
      cqZ = new a("IN", 0, 1);
      cra = new a("CH", 1, 3);
      crb = new a("HS", 2, 4);
      crd = new a("NONE", 3, 254);
      cre = new a("ANY", 4, 255);
      crg = new a[] { cqZ, cra, crb, crd, cre };
      crf = new HashMap();
      a[] arrayOfa = values();
      int j = arrayOfa.length;
      while (i < j)
      {
        a locala = arrayOfa[i];
        crf.put(Integer.valueOf(locala.value), locala);
        i += 1;
      }
    }
    
    private a(int paramInt)
    {
      this.value = paramInt;
    }
    
    public static a eZ(int paramInt)
    {
      return (a)crf.get(Integer.valueOf(paramInt));
    }
  }
  
  public static enum b
  {
    private static final Map<Integer, b> cqc;
    private static final Map<Class<?>, b> csN;
    private final Class<?> csM;
    public final int value;
    
    static
    {
      int i = 0;
      crh = new b("UNKNOWN", 0, -1);
      cri = new b("A", 1, 1, a.class);
      crj = new b("NS", 2, 2, a.a.a.g.j.class);
      crk = new b("MD", 3, 3);
      crl = new b("MF", 4, 4);
      crm = new b("CNAME", 5, 5, c.class);
      crn = new b("SOA", 6, 6, r.class);
      cro = new b("MB", 7, 7);
      crp = new b("MG", 8, 8);
      crq = new b("MR", 9, 9);
      crr = new b("NULL", 10, 10);
      crs = new b("WKS", 11, 11);
      crt = new b("PTR", 12, 12, p.class);
      cru = new b("HINFO", 13, 13);
      crv = new b("MINFO", 14, 14);
      crw = new b("MX", 15, 15, i.class);
      crx = new b("TXT", 16, 16, u.class);
      cry = new b("RP", 17, 17);
      crz = new b("AFSDB", 18, 18);
      crA = new b("X25", 19, 19);
      crB = new b("ISDN", 20, 20);
      crC = new b("RT", 21, 21);
      crD = new b("NSAP", 22, 22);
      crE = new b("NSAP_PTR", 23, 23);
      crF = new b("SIG", 24, 24);
      crG = new b("KEY", 25, 25);
      crH = new b("PX", 26, 26);
      crI = new b("GPOS", 27, 27);
      crJ = new b("AAAA", 28, 28, b.class);
      crK = new b("LOC", 29, 29);
      crL = new b("NXT", 30, 30);
      crM = new b("EID", 31, 31);
      crN = new b("NIMLOC", 32, 32);
      crO = new b("SRV", 33, 33, s.class);
      crP = new b("ATMA", 34, 34);
      crQ = new b("NAPTR", 35, 35);
      crR = new b("KX", 36, 36);
      crS = new b("CERT", 37, 37);
      crT = new b("A6", 38, 38);
      crU = new b("DNAME", 39, 39);
      crV = new b("SINK", 40, 40);
      crW = new b("OPT", 41, 41, o.class);
      crX = new b("APL", 42, 42);
      crY = new b("DS", 43, 43, f.class);
      crZ = new b("SSHFP", 44, 44);
      csa = new b("IPSECKEY", 45, 45);
      csb = new b("RRSIG", 46, 46, q.class);
      csc = new b("NSEC", 47, 47, a.a.a.g.k.class);
      csd = new b("DNSKEY", 48, 48, a.a.a.g.e.class);
      cse = new b("DHCID", 49, 49);
      csf = new b("NSEC3", 50, 50, l.class);
      csg = new b("NSEC3PARAM", 51, 51, m.class);
      csh = new b("TLSA", 52, 52, t.class);
      csi = new b("HIP", 53, 55);
      csj = new b("NINFO", 54, 56);
      csk = new b("RKEY", 55, 57);
      csl = new b("TALINK", 56, 58);
      csm = new b("CDS", 57, 59);
      csn = new b("CDNSKEY", 58, 60);
      cso = new b("OPENPGPKEY", 59, 61, n.class);
      csp = new b("CSYNC", 60, 62);
      csq = new b("SPF", 61, 99);
      csr = new b("UINFO", 62, 100);
      css = new b("UID", 63, 101);
      cst = new b("GID", 64, 102);
      csu = new b("UNSPEC", 65, 103);
      csv = new b("NID", 66, 104);
      csw = new b("L32", 67, 105);
      csx = new b("L64", 68, 106);
      csy = new b("LP", 69, 107);
      csz = new b("EUI48", 70, 108);
      csA = new b("EUI64", 71, 109);
      csB = new b("TKEY", 72, 249);
      csC = new b("TSIG", 73, 250);
      csD = new b("IXFR", 74, 251);
      csE = new b("AXFR", 75, 252);
      csF = new b("MAILB", 76, 253);
      csG = new b("MAILA", 77, 254);
      csH = new b("ANY", 78, 255);
      csI = new b("URI", 79, 256);
      csJ = new b("CAA", 80, 257);
      csK = new b("TA", 81, 32768);
      csL = new b("DLV", 82, 32769, d.class);
      csO = new b[] { crh, cri, crj, crk, crl, crm, crn, cro, crp, crq, crr, crs, crt, cru, crv, crw, crx, cry, crz, crA, crB, crC, crD, crE, crF, crG, crH, crI, crJ, crK, crL, crM, crN, crO, crP, crQ, crR, crS, crT, crU, crV, crW, crX, crY, crZ, csa, csb, csc, csd, cse, csf, csg, csh, csi, csj, csk, csl, csm, csn, cso, csp, csq, csr, css, cst, csu, csv, csw, csx, csy, csz, csA, csB, csC, csD, csE, csF, csG, csH, csI, csJ, csK, csL };
      cqc = new HashMap();
      csN = new HashMap();
      b[] arrayOfb = values();
      int j = arrayOfb.length;
      while (i < j)
      {
        b localb = arrayOfb[i];
        cqc.put(Integer.valueOf(localb.value), localb);
        if (localb.csM != null) {
          csN.put(localb.csM, localb);
        }
        i += 1;
      }
    }
    
    private b(int paramInt)
    {
      this(paramInt, null);
    }
    
    private <D extends g> b(int paramInt, Class<D> paramClass)
    {
      this.value = paramInt;
      this.csM = paramClass;
    }
    
    public static b fa(int paramInt)
    {
      b localb2 = (b)cqc.get(Integer.valueOf(paramInt));
      b localb1 = localb2;
      if (localb2 == null) {
        localb1 = crh;
      }
      return localb1;
    }
    
    public static <D extends g> b w(Class<D> paramClass)
    {
      return (b)csN.get(paramClass);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/a/a/a/k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */