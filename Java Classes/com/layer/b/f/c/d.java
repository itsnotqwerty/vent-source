package com.layer.b.f.c;

import c.a.a.a.f;
import c.a.a.b.h;
import c.a.a.b.i;
import c.a.a.b.m;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class d
  implements c.a.a.c<d, a>, Serializable, Cloneable, Comparable<d>
{
  private static final c.a.a.b.d bCA;
  private static final c.a.a.b.d bCB;
  private static final c.a.a.b.d bCC;
  private static final Map<Class<? extends c.a.a.c.a>, c.a.a.c.b> bCD;
  public static final Map<a, c.a.a.a.b> bCP;
  private static final m bCm = new m("Event");
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
  private static final c.a.a.b.d bCx;
  private static final c.a.a.b.d bCy;
  private static final c.a.a.b.d bCz;
  private static final c.a.a.b.d byb = new c.a.a.b.d("type", (byte)8, (short)1);
  private static final c.a.a.b.d byc = new c.a.a.b.d("ephemeral", (byte)2, (short)2);
  private static final c.a.a.b.d byd = new c.a.a.b.d("creator_id", (byte)11, (short)3);
  private static final c.a.a.b.d bye = new c.a.a.b.d("seq", (byte)8, (short)4);
  private static final c.a.a.b.d byf = new c.a.a.b.d("server_timestamp", (byte)10, (short)5);
  public boolean b;
  public e bCE;
  public List<a> bCF;
  public int bCG;
  public String bCH;
  public Map<String, k> bCI;
  public Set<String> bCJ;
  public ByteBuffer bCK;
  public ByteBuffer bCL;
  public long bCM;
  private short bCN = 0;
  private a[] bCO = { a.bCR, a.bCS, a.bCT, a.bCU, a.bCV, a.bCW, a.bCX, a.bCY, a.bCZ, a.bDa, a.bDb, a.bDc, a.bDd, a.bDe, a.bDf, a.bDg, a.bDh, a.bDi, a.bDj, a.bDk };
  public String brV;
  public ByteBuffer byi;
  public byte bzH;
  public String c;
  public int d;
  public long e;
  public int f;
  public int g;
  public String j;
  public Map<String, ByteBuffer> l;
  public long n;
  
  static
  {
    bCn = new c.a.a.b.d("preceding_seq", (byte)8, (short)6);
    bCo = new c.a.a.b.d("client_seq", (byte)8, (short)7);
    bCp = new c.a.a.b.d("subtype", (byte)3, (short)8);
    bCq = new c.a.a.b.d("content", (byte)15, (short)9);
    bCr = new c.a.a.b.d("member_id", (byte)11, (short)10);
    bCs = new c.a.a.b.d("target_seq", (byte)8, (short)11);
    bCt = new c.a.a.b.d("transient_metadata", (byte)13, (short)12);
    bCu = new c.a.a.b.d("client_id", (byte)11, (short)13);
    bCv = new c.a.a.b.d("client_timestamp", (byte)10, (short)14);
    bCw = new c.a.a.b.d("creator_name", (byte)11, (short)15);
    bCx = new c.a.a.b.d("initial_recipient_status", (byte)13, (short)16);
    bCy = new c.a.a.b.d("tags", (byte)14, (short)17);
    bCz = new c.a.a.b.d("member_id_internal", (byte)11, (short)18);
    bCA = new c.a.a.b.d("creator_id_internal", (byte)11, (short)19);
    bCB = new c.a.a.b.d("name", (byte)11, (short)20);
    bCC = new c.a.a.b.d("target_position", (byte)10, (short)21);
    Object localObject = new HashMap();
    bCD = (Map)localObject;
    ((Map)localObject).put(c.a.a.c.c.class, new c((byte)0));
    bCD.put(c.a.a.c.d.class, new e((byte)0));
    localObject = new EnumMap(a.class);
    ((Map)localObject).put(a.bCQ, new c.a.a.a.b("type", (byte)1, new c.a.a.a.a(e.class)));
    ((Map)localObject).put(a.bCR, new c.a.a.a.b("ephemeral", (byte)2, new c.a.a.a.c((byte)2)));
    ((Map)localObject).put(a.bCS, new c.a.a.a.b("creator_id", (byte)2, new c.a.a.a.c("ProviderUserId")));
    ((Map)localObject).put(a.bCT, new c.a.a.a.b("seq", (byte)2, new c.a.a.a.c((byte)8)));
    ((Map)localObject).put(a.bCU, new c.a.a.a.b("server_timestamp", (byte)2, new c.a.a.a.c((byte)10)));
    ((Map)localObject).put(a.bCV, new c.a.a.a.b("preceding_seq", (byte)2, new c.a.a.a.c((byte)8)));
    ((Map)localObject).put(a.bCW, new c.a.a.a.b("client_seq", (byte)2, new c.a.a.a.c((byte)8)));
    ((Map)localObject).put(a.bCX, new c.a.a.a.b("subtype", (byte)2, new c.a.a.a.c((byte)3)));
    ((Map)localObject).put(a.bCY, new c.a.a.a.b("content", (byte)2, new c.a.a.a.d(new c.a.a.a.g(a.class))));
    ((Map)localObject).put(a.bCZ, new c.a.a.a.b("member_id", (byte)2, new c.a.a.a.c("ProviderUserId")));
    ((Map)localObject).put(a.bDa, new c.a.a.a.b("target_seq", (byte)2, new c.a.a.a.c((byte)8)));
    ((Map)localObject).put(a.bDb, new c.a.a.a.b("transient_metadata", (byte)2, new c.a.a.a.e(new c.a.a.a.c((byte)11), new c.a.a.a.c((byte)11, true))));
    ((Map)localObject).put(a.bDc, new c.a.a.a.b("client_id", (byte)2, new c.a.a.a.c("UUID")));
    ((Map)localObject).put(a.bDd, new c.a.a.a.b("client_timestamp", (byte)2, new c.a.a.a.c((byte)10)));
    ((Map)localObject).put(a.bDe, new c.a.a.a.b("creator_name", (byte)2, new c.a.a.a.c((byte)11)));
    ((Map)localObject).put(a.bDf, new c.a.a.a.b("initial_recipient_status", (byte)2, new c.a.a.a.e(new c.a.a.a.c((byte)11), new c.a.a.a.a(k.class))));
    ((Map)localObject).put(a.bDg, new c.a.a.a.b("tags", (byte)2, new f(new c.a.a.a.c((byte)11))));
    ((Map)localObject).put(a.bDh, new c.a.a.a.b("member_id_internal", (byte)2, new c.a.a.a.c("UUID")));
    ((Map)localObject).put(a.bDi, new c.a.a.a.b("creator_id_internal", (byte)2, new c.a.a.a.c("UUID")));
    ((Map)localObject).put(a.bDj, new c.a.a.a.b("name", (byte)2, new c.a.a.a.c((byte)11)));
    ((Map)localObject).put(a.bDk, new c.a.a.a.b("target_position", (byte)2, new c.a.a.a.c((byte)10)));
    bCP = Collections.unmodifiableMap((Map)localObject);
    c.a.a.a.b.a(d.class, bCP);
  }
  
  public d() {}
  
  public d(d paramd)
  {
    this.bCN = paramd.bCN;
    if (paramd.f()) {
      this.bCE = paramd.bCE;
    }
    this.b = paramd.b;
    if (paramd.j()) {
      this.c = paramd.c;
    }
    this.d = paramd.d;
    this.e = paramd.e;
    this.f = paramd.f;
    this.g = paramd.g;
    this.bzH = paramd.bzH;
    Object localObject;
    Iterator localIterator;
    if (paramd.xm())
    {
      localObject = new ArrayList(paramd.bCF.size());
      localIterator = paramd.bCF.iterator();
      while (localIterator.hasNext()) {
        ((List)localObject).add(new a((a)localIterator.next()));
      }
      this.bCF = ((List)localObject);
    }
    if (paramd.xp()) {
      this.j = paramd.j;
    }
    this.bCG = paramd.bCG;
    if (paramd.yp()) {
      this.l = new HashMap(paramd.l);
    }
    if (paramd.yr()) {
      this.byi = paramd.byi;
    }
    this.n = paramd.n;
    if (paramd.yu()) {
      this.bCH = paramd.bCH;
    }
    if (paramd.yv())
    {
      localObject = new HashMap(paramd.bCI.size());
      localIterator = paramd.bCI.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        ((Map)localObject).put((String)localEntry.getKey(), (k)localEntry.getValue());
      }
      this.bCI = ((Map)localObject);
    }
    if (paramd.yw()) {
      this.bCJ = new HashSet(paramd.bCJ);
    }
    if (paramd.yx()) {
      this.bCK = paramd.bCK;
    }
    if (paramd.K()) {
      this.bCL = paramd.bCL;
    }
    if (paramd.yy()) {
      this.brV = paramd.brV;
    }
    this.bCM = paramd.bCM;
  }
  
  public final boolean K()
  {
    return this.bCL != null;
  }
  
  public final d M(long paramLong)
  {
    this.e = paramLong;
    xF();
    return this;
  }
  
  public final d N(long paramLong)
  {
    this.bCM = paramLong;
    yz();
    return this;
  }
  
  public final boolean N()
  {
    return c.a.a.a.aT(this.bCN, 8);
  }
  
  public final void a(h paramh)
    throws c.a.a.g
  {
    ((c.a.a.c.b)bCD.get(paramh.LS())).xh().b(paramh, this);
  }
  
  public final boolean a(d paramd)
  {
    if (paramd == null) {}
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
                                        do
                                        {
                                          do
                                          {
                                            do
                                            {
                                              return false;
                                              bool1 = f();
                                              bool2 = paramd.f();
                                            } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.bCE.equals(paramd.bCE))));
                                            bool1 = h();
                                            bool2 = paramd.h();
                                          } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (this.b != paramd.b)));
                                          bool1 = j();
                                          bool2 = paramd.j();
                                        } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.c.equals(paramd.c))));
                                        bool1 = xE();
                                        bool2 = paramd.xE();
                                      } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (this.d != paramd.d)));
                                      bool1 = xG();
                                      bool2 = paramd.xG();
                                    } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (this.e != paramd.e)));
                                    bool1 = yk();
                                    bool2 = paramd.yk();
                                  } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (this.f != paramd.f)));
                                  bool1 = r();
                                  bool2 = paramd.r();
                                } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (this.g != paramd.g)));
                                bool1 = t();
                                bool2 = paramd.t();
                              } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (this.bzH != paramd.bzH)));
                              bool1 = xm();
                              bool2 = paramd.xm();
                            } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.bCF.equals(paramd.bCF))));
                            bool1 = xp();
                            bool2 = paramd.xp();
                          } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.j.equals(paramd.j))));
                          bool1 = yo();
                          bool2 = paramd.yo();
                        } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (this.bCG != paramd.bCG)));
                        bool1 = yp();
                        bool2 = paramd.yp();
                      } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.l.equals(paramd.l))));
                      bool1 = yr();
                      bool2 = paramd.yr();
                    } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.byi.equals(paramd.byi))));
                    bool1 = ys();
                    bool2 = paramd.ys();
                  } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (this.n != paramd.n)));
                  bool1 = yu();
                  bool2 = paramd.yu();
                } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.bCH.equals(paramd.bCH))));
                bool1 = yv();
                bool2 = paramd.yv();
              } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.bCI.equals(paramd.bCI))));
              bool1 = yw();
              bool2 = paramd.yw();
            } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.bCJ.equals(paramd.bCJ))));
            bool1 = yx();
            bool2 = paramd.yx();
          } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.bCK.equals(paramd.bCK))));
          bool1 = K();
          bool2 = paramd.K();
        } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.bCL.equals(paramd.bCL))));
        bool1 = yy();
        bool2 = paramd.yy();
      } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (!this.brV.equals(paramd.brV))));
      bool1 = N();
      bool2 = paramd.N();
    } while (((bool1) || (bool2)) && ((!bool1) || (!bool2) || (this.bCM != paramd.bCM)));
    return true;
  }
  
  public final d b(byte paramByte)
  {
    this.bzH = paramByte;
    yn();
    return this;
  }
  
  public final void b(h paramh)
    throws c.a.a.g
  {
    ((c.a.a.c.b)bCD.get(paramh.LS())).xh().a(paramh, this);
  }
  
  public final d dv(int paramInt)
  {
    this.d = paramInt;
    yg();
    return this;
  }
  
  public final d dw(int paramInt)
  {
    this.f = paramInt;
    yl();
    return this;
  }
  
  public final d dx(int paramInt)
  {
    this.g = paramInt;
    ym();
    return this;
  }
  
  public final d dy(int paramInt)
  {
    this.bCG = paramInt;
    xn();
    return this;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == null) {}
    while (!(paramObject instanceof d)) {
      return false;
    }
    return a((d)paramObject);
  }
  
  public final boolean f()
  {
    return this.bCE != null;
  }
  
  public final boolean h()
  {
    return c.a.a.a.aT(this.bCN, 0);
  }
  
  public int hashCode()
  {
    return 0;
  }
  
  public final boolean j()
  {
    return this.c != null;
  }
  
  public final boolean r()
  {
    return c.a.a.a.aT(this.bCN, 4);
  }
  
  public final boolean t()
  {
    return c.a.a.a.aT(this.bCN, 5);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("Event(");
    localStringBuilder.append("type:");
    if (this.bCE == null)
    {
      localStringBuilder.append("null");
      if (h())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("ephemeral:");
        localStringBuilder.append(this.b);
      }
      if (j())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("creator_id:");
        if (this.c != null) {
          break label765;
        }
        localStringBuilder.append("null");
      }
      label104:
      if (xE())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("seq:");
        localStringBuilder.append(this.d);
      }
      if (xG())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("server_timestamp:");
        localStringBuilder.append(this.e);
      }
      if (yk())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("preceding_seq:");
        localStringBuilder.append(this.f);
      }
      if (r())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("client_seq:");
        localStringBuilder.append(this.g);
      }
      if (t())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("subtype:");
        localStringBuilder.append(this.bzH);
      }
      if (xm())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("content:");
        if (this.bCF != null) {
          break label777;
        }
        localStringBuilder.append("null");
      }
      label302:
      if (xp())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("member_id:");
        if (this.j != null) {
          break label789;
        }
        localStringBuilder.append("null");
      }
      label340:
      if (yo())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("target_seq:");
        localStringBuilder.append(this.bCG);
      }
      if (yp())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("transient_metadata:");
        if (this.l != null) {
          break label801;
        }
        localStringBuilder.append("null");
      }
      label410:
      if (yr())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("client_id:");
        if (this.byi != null) {
          break label813;
        }
        localStringBuilder.append("null");
      }
      label448:
      if (ys())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("client_timestamp:");
        localStringBuilder.append(this.n);
      }
      if (yu())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("creator_name:");
        if (this.bCH != null) {
          break label825;
        }
        localStringBuilder.append("null");
      }
      label518:
      if (yv())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("initial_recipient_status:");
        if (this.bCI != null) {
          break label837;
        }
        localStringBuilder.append("null");
      }
      label556:
      if (yw())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("tags:");
        if (this.bCJ != null) {
          break label849;
        }
        localStringBuilder.append("null");
      }
      label594:
      if (yx())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("member_id_internal:");
        if (this.bCK != null) {
          break label861;
        }
        localStringBuilder.append("null");
      }
      label632:
      if (K())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("creator_id_internal:");
        if (this.bCL != null) {
          break label873;
        }
        localStringBuilder.append("null");
      }
      label670:
      if (yy())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("name:");
        if (this.brV != null) {
          break label885;
        }
        localStringBuilder.append("null");
      }
    }
    for (;;)
    {
      if (N())
      {
        localStringBuilder.append(", ");
        localStringBuilder.append("target_position:");
        localStringBuilder.append(this.bCM);
      }
      localStringBuilder.append(")");
      return localStringBuilder.toString();
      localStringBuilder.append(this.bCE);
      break;
      label765:
      localStringBuilder.append(this.c);
      break label104;
      label777:
      localStringBuilder.append(this.bCF);
      break label302;
      label789:
      localStringBuilder.append(this.j);
      break label340;
      label801:
      localStringBuilder.append(this.l);
      break label410;
      label813:
      localStringBuilder.append(this.byi);
      break label448;
      label825:
      localStringBuilder.append(this.bCH);
      break label518;
      label837:
      localStringBuilder.append(this.bCI);
      break label556;
      label849:
      localStringBuilder.append(this.bCJ);
      break label594;
      label861:
      localStringBuilder.append(this.bCK);
      break label632;
      label873:
      localStringBuilder.append(this.bCL);
      break label670;
      label885:
      localStringBuilder.append(this.brV);
    }
  }
  
  public final boolean xE()
  {
    return c.a.a.a.aT(this.bCN, 1);
  }
  
  public final void xF()
  {
    this.bCN = ((short)c.a.a.a.d(this.bCN, 2, true));
  }
  
  public final boolean xG()
  {
    return c.a.a.a.aT(this.bCN, 2);
  }
  
  public final void xQ()
  {
    this.bCN = ((short)c.a.a.a.d(this.bCN, 0, true));
  }
  
  public final boolean xm()
  {
    return this.bCF != null;
  }
  
  public final void xn()
  {
    this.bCN = ((short)c.a.a.a.d(this.bCN, 6, true));
  }
  
  public final boolean xp()
  {
    return this.j != null;
  }
  
  public final void yA()
    throws c.a.a.g
  {
    if (this.bCE == null) {
      throw new i("Required field 'type' was not present! Struct: " + toString());
    }
  }
  
  public final void yg()
  {
    this.bCN = ((short)c.a.a.a.d(this.bCN, 1, true));
  }
  
  public final boolean yk()
  {
    return c.a.a.a.aT(this.bCN, 3);
  }
  
  public final void yl()
  {
    this.bCN = ((short)c.a.a.a.d(this.bCN, 3, true));
  }
  
  public final void ym()
  {
    this.bCN = ((short)c.a.a.a.d(this.bCN, 4, true));
  }
  
  public final void yn()
  {
    this.bCN = ((short)c.a.a.a.d(this.bCN, 5, true));
  }
  
  public final boolean yo()
  {
    return c.a.a.a.aT(this.bCN, 6);
  }
  
  public final boolean yp()
  {
    return this.l != null;
  }
  
  public final byte[] yq()
  {
    this.byi = c.a.a.d.f(this.byi);
    if (this.byi == null) {
      return null;
    }
    return this.byi.array();
  }
  
  public final boolean yr()
  {
    return this.byi != null;
  }
  
  public final boolean ys()
  {
    return c.a.a.a.aT(this.bCN, 7);
  }
  
  public final void yt()
  {
    this.bCN = ((short)c.a.a.a.d(this.bCN, 7, true));
  }
  
  public final boolean yu()
  {
    return this.bCH != null;
  }
  
  public final boolean yv()
  {
    return this.bCI != null;
  }
  
  public final boolean yw()
  {
    return this.bCJ != null;
  }
  
  public final boolean yx()
  {
    return this.bCK != null;
  }
  
  public final boolean yy()
  {
    return this.brV != null;
  }
  
  public final void yz()
  {
    this.bCN = ((short)c.a.a.a.d(this.bCN, 8, true));
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
    extends c.a.a.c.c<d>
  {}
  
  private static final class c
    implements c.a.a.c.b
  {}
  
  private static final class d
    extends c.a.a.c.d<d>
  {}
  
  private static final class e
    implements c.a.a.c.b
  {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/b/f/c/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */