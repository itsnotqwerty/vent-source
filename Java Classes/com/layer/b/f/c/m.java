package com.layer.b.f.c;

import c.a.a.a.e;
import c.a.a.a.f;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class m
  implements c.a.a.c<m, a>, Serializable, Cloneable, Comparable<m>
{
  private static final c.a.a.b.d bCn;
  private static final c.a.a.b.d bCo;
  private static final c.a.a.b.d bCp;
  private static final c.a.a.b.d bCq;
  private static final c.a.a.b.d bCr;
  private static final c.a.a.b.d bCs;
  private static final c.a.a.b.d bCt;
  private static final c.a.a.b.d bCu;
  private static final c.a.a.b.d bCv;
  private static final c.a.a.b.d bCw;
  private static final c.a.a.b.m bEG = new c.a.a.b.m("Stream");
  private static final Map<Class<? extends c.a.a.c.a>, c.a.a.c.b> bEH;
  public static final Map<a, c.a.a.a.b> bEU;
  private static final c.a.a.b.d bxY = new c.a.a.b.d("stream_id", (byte)11, (short)1);
  private static final c.a.a.b.d bxZ = new c.a.a.b.d("type", (byte)8, (short)2);
  private static final c.a.a.b.d bya = new c.a.a.b.d("member_ids", (byte)14, (short)3);
  private static final c.a.a.b.d byb = new c.a.a.b.d("seq", (byte)8, (short)4);
  private static final c.a.a.b.d byc = new c.a.a.b.d("client_id", (byte)11, (short)5);
  private static final c.a.a.b.d byd = new c.a.a.b.d("metadata_timestamp", (byte)10, (short)6);
  private static final c.a.a.b.d bye = new c.a.a.b.d("config", (byte)13, (short)7);
  private static final c.a.a.b.d byf = new c.a.a.b.d("distinct", (byte)2, (short)8);
  public ByteBuffer bEI;
  public o bEJ;
  public ByteBuffer bEK;
  public ByteBuffer bEL;
  public h bEM;
  public int bEN;
  public int bEO;
  public Set<p> bEP;
  public Set<String> bEQ;
  public String bER;
  private byte bES = 0;
  private a[] bET = { a.bEV, a.bEW, a.bEX, a.bEY, a.bEZ, a.bFa, a.bFb, a.bFc, a.bFd, a.bFe, a.bFf, a.bFg, a.bFh, a.bFi, a.bFj, a.bFk, a.bFl, a.bFm };
  public Map<String, ByteBuffer> byH;
  public Set<String> c;
  public int d;
  public long f;
  public Map<String, String> g;
  public boolean h;
  public Map<String, String> k;
  public long n;
  
  static
  {
    bCn = new c.a.a.b.d("request_client_id", (byte)11, (short)9);
    bCo = new c.a.a.b.d("partial_sync_hints", (byte)12, (short)10);
    bCp = new c.a.a.b.d("initial_metadata", (byte)13, (short)11);
    bCq = new c.a.a.b.d("starting_seq", (byte)8, (short)12);
    bCr = new c.a.a.b.d("mutation_seq", (byte)8, (short)13);
    bCs = new c.a.a.b.d("created_at", (byte)10, (short)14);
    bCt = new c.a.a.b.d("mutations", (byte)14, (short)15);
    bCu = new c.a.a.b.d("tags", (byte)14, (short)16);
    bCv = new c.a.a.b.d("participants_internal", (byte)13, (short)17);
    bCw = new c.a.a.b.d("name", (byte)11, (short)18);
    Object localObject = new HashMap();
    bEH = (Map)localObject;
    ((Map)localObject).put(c.a.a.c.c.class, new c((byte)0));
    bEH.put(c.a.a.c.d.class, new e((byte)0));
    localObject = new EnumMap(a.class);
    ((Map)localObject).put(a.bEV, new c.a.a.a.b("stream_id", (byte)2, new c.a.a.a.c("UUID")));
    ((Map)localObject).put(a.bEW, new c.a.a.a.b("type", (byte)2, new c.a.a.a.a(o.class)));
    ((Map)localObject).put(a.bEX, new c.a.a.a.b("member_ids", (byte)2, new f(new c.a.a.a.c("ProviderUserId"))));
    ((Map)localObject).put(a.bEY, new c.a.a.a.b("seq", (byte)2, new c.a.a.a.c((byte)8)));
    ((Map)localObject).put(a.bEZ, new c.a.a.a.b("client_id", (byte)2, new c.a.a.a.c("UUID")));
    ((Map)localObject).put(a.bFa, new c.a.a.a.b("metadata_timestamp", (byte)2, new c.a.a.a.c((byte)10)));
    ((Map)localObject).put(a.bFb, new c.a.a.a.b("config", (byte)2, new e(new c.a.a.a.c((byte)11), new c.a.a.a.c((byte)11))));
    ((Map)localObject).put(a.bFc, new c.a.a.a.b("distinct", (byte)2, new c.a.a.a.c((byte)2)));
    ((Map)localObject).put(a.bFd, new c.a.a.a.b("request_client_id", (byte)2, new c.a.a.a.c("UUID")));
    ((Map)localObject).put(a.bFe, new c.a.a.a.b("partial_sync_hints", (byte)2, new c.a.a.a.g(h.class)));
    ((Map)localObject).put(a.bFf, new c.a.a.a.b("initial_metadata", (byte)2, new e(new c.a.a.a.c((byte)11), new c.a.a.a.c((byte)11))));
    ((Map)localObject).put(a.bFg, new c.a.a.a.b("starting_seq", (byte)2, new c.a.a.a.c((byte)8)));
    ((Map)localObject).put(a.bFh, new c.a.a.a.b("mutation_seq", (byte)2, new c.a.a.a.c((byte)8)));
    ((Map)localObject).put(a.bFi, new c.a.a.a.b("created_at", (byte)2, new c.a.a.a.c((byte)10)));
    ((Map)localObject).put(a.bFj, new c.a.a.a.b("mutations", (byte)2, new f(new c.a.a.a.g(p.class))));
    ((Map)localObject).put(a.bFk, new c.a.a.a.b("tags", (byte)2, new f(new c.a.a.a.c((byte)11))));
    ((Map)localObject).put(a.bFl, new c.a.a.a.b("participants_internal", (byte)2, new e(new c.a.a.a.c((byte)11), new c.a.a.a.c("UUID"))));
    ((Map)localObject).put(a.bFm, new c.a.a.a.b("name", (byte)2, new c.a.a.a.c((byte)11)));
    bEU = Collections.unmodifiableMap((Map)localObject);
    c.a.a.a.b.a(m.class, bEU);
  }
  
  public m()
  {
    this.bEJ = o.bFt;
  }
  
  public m(m paramm)
  {
    this.bES = paramm.bES;
    if (paramm.xG()) {
      this.bEI = paramm.bEI;
    }
    if (paramm.yk()) {
      this.bEJ = paramm.bEJ;
    }
    Object localObject;
    Iterator localIterator;
    if (paramm.r())
    {
      localObject = new HashSet(paramm.c.size());
      localIterator = paramm.c.iterator();
      while (localIterator.hasNext()) {
        ((Set)localObject).add((String)localIterator.next());
      }
      this.c = ((Set)localObject);
    }
    this.d = paramm.d;
    if (paramm.xm()) {
      this.bEK = paramm.bEK;
    }
    this.f = paramm.f;
    if (paramm.yo()) {
      this.g = new HashMap(paramm.g);
    }
    this.h = paramm.h;
    if (paramm.ys()) {
      this.bEL = paramm.bEL;
    }
    if (paramm.yu()) {
      this.bEM = new h(paramm.bEM);
    }
    if (paramm.ze()) {
      this.k = new HashMap(paramm.k);
    }
    this.bEN = paramm.bEN;
    this.bEO = paramm.bEO;
    this.n = paramm.n;
    if (paramm.N())
    {
      localObject = new HashSet(paramm.bEP.size());
      localIterator = paramm.bEP.iterator();
      while (localIterator.hasNext()) {
        ((Set)localObject).add(new p((p)localIterator.next()));
      }
      this.bEP = ((Set)localObject);
    }
    if (paramm.O()) {
      this.bEQ = new HashSet(paramm.bEQ);
    }
    if (paramm.zi())
    {
      localObject = new HashMap(paramm.byH.size());
      localIterator = paramm.byH.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        ((Map)localObject).put((String)localEntry.getKey(), (ByteBuffer)localEntry.getValue());
      }
      this.byH = ((Map)localObject);
    }
    if (paramm.Q()) {
      this.bER = paramm.bER;
    }
  }
  
  public final boolean K()
  {
    return c.a.a.a.aT(this.bES, 4);
  }
  
  public final boolean N()
  {
    return this.bEP != null;
  }
  
  public final m O(long paramLong)
  {
    this.f = paramLong;
    yl();
    return this;
  }
  
  public final boolean O()
  {
    return this.bEQ != null;
  }
  
  public final boolean Q()
  {
    return this.bER != null;
  }
  
  public final void a(c.a.a.b.h paramh)
    throws c.a.a.g
  {
    ((c.a.a.c.b)bEH.get(paramh.LS())).xh().b(paramh, this);
  }
  
  public final m aK(boolean paramBoolean)
  {
    this.h = paramBoolean;
    zc();
    return this;
  }
  
  public final void b(c.a.a.b.h paramh)
    throws c.a.a.g
  {
    ((c.a.a.c.b)bEH.get(paramh.LS())).xh().a(paramh, this);
  }
  
  public final boolean b(m paramm)
  {
    if (paramm == null) {}
    boolean bool1;
    boolean bool2;
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                do
                {
                  do
                  {
                    do
                    {
                      do
                      {
                        do
                        {
                          do
                          {
                            do
                            {
                              do
                              {
                                do
                                {
                                  do
                                  {
                                    do
                                    {
                                      do
                                      {
                                        return false;
                                        bool1 = xG();
                                        bool2 = paramm.xG();
                                      } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.bEI.equals(paramm.bEI))));
                                      bool1 = yk();
                                      bool2 = paramm.yk();
                                    } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.bEJ.equals(paramm.bEJ))));
                                    bool1 = r();
                                    bool2 = paramm.r();
                                  } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.c.equals(paramm.c))));
                                  bool1 = t();
                                  bool2 = paramm.t();
                                } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (this.d != paramm.d)));
                                bool1 = xm();
                                bool2 = paramm.xm();
                              } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.bEK.equals(paramm.bEK))));
                              bool1 = xp();
                              bool2 = paramm.xp();
                            } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (this.f != paramm.f)));
                            bool1 = yo();
                            bool2 = paramm.yo();
                          } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.g.equals(paramm.g))));
                          bool1 = zb();
                          bool2 = paramm.zb();
                        } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (this.h != paramm.h)));
                        bool1 = ys();
                        bool2 = paramm.ys();
                      } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.bEL.equals(paramm.bEL))));
                      bool1 = yu();
                      bool2 = paramm.yu();
                    } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.bEM.a(paramm.bEM))));
                    bool1 = ze();
                    bool2 = paramm.ze();
                  } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.k.equals(paramm.k))));
                  bool1 = yw();
                  bool2 = paramm.yw();
                } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (this.bEN != paramm.bEN)));
                bool1 = K();
                bool2 = paramm.K();
              } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (this.bEO != paramm.bEO)));
              bool1 = zg();
              bool2 = paramm.zg();
            } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (this.n != paramm.n)));
            bool1 = N();
            bool2 = paramm.N();
          } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.bEP.equals(paramm.bEP))));
          bool1 = O();
          bool2 = paramm.O();
        } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.bEQ.equals(paramm.bEQ))));
        bool1 = zi();
        bool2 = paramm.zi();
      } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.byH.equals(paramm.byH))));
      bool1 = Q();
      bool2 = paramm.Q();
    } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.bER.equals(paramm.bER))));
    return true;
  }
  
  public final m dE(int paramInt)
  {
    this.d = paramInt;
    yg();
    return this;
  }
  
  public final m dF(int paramInt)
  {
    this.bEO = paramInt;
    yt();
    return this;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == null) {}
    while (!(paramObject instanceof m)) {
      return false;
    }
    return b((m)paramObject);
  }
  
  public int hashCode()
  {
    return 0;
  }
  
  public final boolean r()
  {
    return this.c != null;
  }
  
  public final boolean t()
  {
    return c.a.a.a.aT(this.bES, 0);
  }
  
  public String toString()
  {
    int m = 0;
    StringBuilder localStringBuilder = new StringBuilder("Stream(");
    int j = 1;
    int i;
    if (xG())
    {
      localStringBuilder.append("stream_id:");
      if (this.bEI == null)
      {
        localStringBuilder.append("null");
        j = 0;
      }
    }
    else
    {
      i = j;
      if (yk())
      {
        if (j == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("type:");
        if (this.bEJ != null) {
          break label869;
        }
        localStringBuilder.append("null");
        label97:
        i = 0;
      }
      j = i;
      if (r())
      {
        if (i == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("member_ids:");
        if (this.c != null) {
          break label882;
        }
        localStringBuilder.append("null");
        label146:
        j = 0;
      }
      i = j;
      if (t())
      {
        if (j == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("seq:");
        localStringBuilder.append(this.d);
        i = 0;
      }
      j = i;
      if (xm())
      {
        if (i == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("client_id:");
        if (this.bEK != null) {
          break label895;
        }
        localStringBuilder.append("null");
        label238:
        j = 0;
      }
      i = j;
      if (xp())
      {
        if (j == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("metadata_timestamp:");
        localStringBuilder.append(this.f);
        i = 0;
      }
      j = i;
      if (yo())
      {
        if (i == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("config:");
        if (this.g != null) {
          break label908;
        }
        localStringBuilder.append("null");
        label330:
        j = 0;
      }
      i = j;
      if (zb())
      {
        if (j == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("distinct:");
        localStringBuilder.append(this.h);
        i = 0;
      }
      j = i;
      if (ys())
      {
        if (i == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("request_client_id:");
        if (this.bEL != null) {
          break label921;
        }
        localStringBuilder.append("null");
        label422:
        j = 0;
      }
      i = j;
      if (yu())
      {
        if (j == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("partial_sync_hints:");
        if (this.bEM != null) {
          break label934;
        }
        localStringBuilder.append("null");
        label471:
        i = 0;
      }
      j = i;
      if (ze())
      {
        if (i == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("initial_metadata:");
        if (this.k != null) {
          break label947;
        }
        localStringBuilder.append("null");
        label520:
        j = 0;
      }
      i = j;
      if (yw())
      {
        if (j == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("starting_seq:");
        localStringBuilder.append(this.bEN);
        i = 0;
      }
      j = i;
      if (K())
      {
        if (i == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("mutation_seq:");
        localStringBuilder.append(this.bEO);
        j = 0;
      }
      i = j;
      if (zg())
      {
        if (j == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("created_at:");
        localStringBuilder.append(this.n);
        i = 0;
      }
      j = i;
      if (N())
      {
        if (i == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("mutations:");
        if (this.bEP != null) {
          break label960;
        }
        localStringBuilder.append("null");
        label698:
        j = 0;
      }
      i = j;
      if (O())
      {
        if (j == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("tags:");
        if (this.bEQ != null) {
          break label973;
        }
        localStringBuilder.append("null");
        label747:
        i = 0;
      }
      if (!zi()) {
        break label1014;
      }
      if (i == 0) {
        localStringBuilder.append(", ");
      }
      localStringBuilder.append("participants_internal:");
      if (this.byH != null) {
        break label986;
      }
      localStringBuilder.append("null");
      i = m;
    }
    label796:
    label869:
    label882:
    label895:
    label908:
    label921:
    label934:
    label947:
    label960:
    label973:
    label986:
    label1001:
    label1014:
    for (;;)
    {
      if (Q())
      {
        if (i == 0) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append("name:");
        if (this.bER != null) {
          break label1001;
        }
        localStringBuilder.append("null");
      }
      for (;;)
      {
        localStringBuilder.append(")");
        return localStringBuilder.toString();
        localStringBuilder.append(this.bEI);
        break;
        localStringBuilder.append(this.bEJ);
        break label97;
        localStringBuilder.append(this.c);
        break label146;
        localStringBuilder.append(this.bEK);
        break label238;
        localStringBuilder.append(this.g);
        break label330;
        localStringBuilder.append(this.bEL);
        break label422;
        localStringBuilder.append(this.bEM);
        break label471;
        localStringBuilder.append(this.k);
        break label520;
        localStringBuilder.append(this.bEP);
        break label698;
        localStringBuilder.append(this.bEQ);
        break label747;
        localStringBuilder.append(this.byH);
        i = m;
        break label796;
        localStringBuilder.append(this.bER);
      }
    }
  }
  
  public final m u(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {}
    for (paramArrayOfByte = null;; paramArrayOfByte = ByteBuffer.wrap(paramArrayOfByte))
    {
      this.bEI = paramArrayOfByte;
      return this;
    }
  }
  
  public final m v(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {}
    for (paramArrayOfByte = null;; paramArrayOfByte = ByteBuffer.wrap(paramArrayOfByte))
    {
      this.bEL = paramArrayOfByte;
      return this;
    }
  }
  
  public final boolean xG()
  {
    return this.bEI != null;
  }
  
  public final boolean xm()
  {
    return this.bEK != null;
  }
  
  public final boolean xp()
  {
    return c.a.a.a.aT(this.bES, 1);
  }
  
  public final byte[] yZ()
  {
    this.bEI = c.a.a.d.f(this.bEI);
    if (this.bEI == null) {
      return null;
    }
    return this.bEI.array();
  }
  
  public final void yg()
  {
    this.bES = ((byte)c.a.a.a.d(this.bES, 0, true));
  }
  
  public final boolean yk()
  {
    return this.bEJ != null;
  }
  
  public final void yl()
  {
    this.bES = ((byte)c.a.a.a.d(this.bES, 1, true));
  }
  
  public final boolean yo()
  {
    return this.g != null;
  }
  
  public final boolean ys()
  {
    return this.bEL != null;
  }
  
  public final void yt()
  {
    this.bES = ((byte)c.a.a.a.d(this.bES, 4, true));
  }
  
  public final boolean yu()
  {
    return this.bEM != null;
  }
  
  public final boolean yw()
  {
    return c.a.a.a.aT(this.bES, 3);
  }
  
  public final byte[] za()
  {
    this.bEK = c.a.a.d.f(this.bEK);
    if (this.bEK == null) {
      return null;
    }
    return this.bEK.array();
  }
  
  public final boolean zb()
  {
    return c.a.a.a.aT(this.bES, 2);
  }
  
  public final void zc()
  {
    this.bES = ((byte)c.a.a.a.d(this.bES, 2, true));
  }
  
  public final byte[] zd()
  {
    this.bEL = c.a.a.d.f(this.bEL);
    if (this.bEL == null) {
      return null;
    }
    return this.bEL.array();
  }
  
  public final boolean ze()
  {
    return this.k != null;
  }
  
  public final void zf()
  {
    this.bES = ((byte)c.a.a.a.d(this.bES, 3, true));
  }
  
  public final boolean zg()
  {
    return c.a.a.a.aT(this.bES, 5);
  }
  
  public final void zh()
  {
    this.bES = ((byte)c.a.a.a.d(this.bES, 5, true));
  }
  
  public final boolean zi()
  {
    return this.byH != null;
  }
  
  public final void zj()
    throws c.a.a.g
  {
    if (this.bEM != null) {
      h.k();
    }
  }
  
  public static enum a
  {
    private static final Map<String, a> a;
    private final short bxI;
    private final String c;
    
    static
    {
      a = new HashMap();
      Iterator localIterator = EnumSet.allOf(a.class).iterator();
      while (localIterator.hasNext())
      {
        a locala = (a)localIterator.next();
        a.put(locala.c, locala);
      }
    }
    
    private a(short paramShort, String paramString)
    {
      this.bxI = paramShort;
      this.c = paramString;
    }
  }
  
  private static final class b
    extends c.a.a.c.c<m>
  {}
  
  private static final class c
    implements c.a.a.c.b
  {}
  
  private static final class d
    extends c.a.a.c.d<m>
  {}
  
  private static final class e
    implements c.a.a.c.b
  {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/b/f/c/m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */