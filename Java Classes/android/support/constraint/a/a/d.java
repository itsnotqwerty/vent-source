package android.support.constraint.a.a;

import android.support.constraint.a.b;
import android.support.constraint.a.f;
import java.util.ArrayList;

public class d
{
  public static float gN = 0.5F;
  protected int bw;
  protected int bx;
  int db = 0;
  int dc = 0;
  public int fW = -1;
  public int fX = -1;
  k fY;
  k fZ;
  protected float gA = 0.0F;
  protected int gB = -1;
  protected int gC = 0;
  protected int gD = 0;
  private int gE = 0;
  private int gF = 0;
  private int gG = 0;
  private int gH = 0;
  protected int gI = 0;
  protected int gJ = 0;
  public int gK = 0;
  public int gL;
  public int gM;
  public float gO = gN;
  public float gP = gN;
  public Object gQ;
  private int gR = 0;
  public int gS = 0;
  public String gT = null;
  private String gU = null;
  boolean gV;
  boolean gW;
  public int gX = 0;
  public int gY = 0;
  boolean gZ;
  public int ga = 0;
  public int gb = 0;
  public int gc = 0;
  public int gd = 0;
  public float ge = 1.0F;
  public int gf = 0;
  public int gg = 0;
  public float gh = 1.0F;
  public boolean gi;
  public boolean gj;
  int gk = -1;
  float gl = 1.0F;
  public int[] gm = { Integer.MAX_VALUE, Integer.MAX_VALUE };
  public float gn = 0.0F;
  c go = new c(this, c.c.fN);
  c gp = new c(this, c.c.fO);
  c gq = new c(this, c.c.fP);
  c gr = new c(this, c.c.fQ);
  c gs = new c(this, c.c.fR);
  c gt = new c(this, c.c.fT);
  c gu = new c(this, c.c.fU);
  c gv = new c(this, c.c.fS);
  protected c[] gw = { this.go, this.gq, this.gp, this.gr, this.gs, this.gv };
  protected ArrayList<c> gx = new ArrayList();
  protected int[] gy = { a.hh, a.hh };
  d gz = null;
  boolean ha;
  public float[] hb = { 0.0F, 0.0F };
  protected d[] hc = { null, null };
  protected d[] hd = { null, null };
  d he = null;
  d hf = null;
  
  public d()
  {
    this.gx.add(this.go);
    this.gx.add(this.gp);
    this.gx.add(this.gq);
    this.gx.add(this.gr);
    this.gx.add(this.gt);
    this.gx.add(this.gu);
    this.gx.add(this.gv);
    this.gx.add(this.gs);
  }
  
  private void a(android.support.constraint.a.e parame, boolean paramBoolean1, android.support.constraint.a.h paramh1, android.support.constraint.a.h paramh2, int paramInt1, boolean paramBoolean2, c paramc1, c paramc2, int paramInt2, int paramInt3, int paramInt4, int paramInt5, float paramFloat1, boolean paramBoolean3, boolean paramBoolean4, int paramInt6, int paramInt7, int paramInt8, float paramFloat2, boolean paramBoolean5)
  {
    android.support.constraint.a.h localh3 = parame.h(paramc1);
    android.support.constraint.a.h localh2 = parame.h(paramc2);
    android.support.constraint.a.h localh4 = parame.h(paramc1.fx);
    android.support.constraint.a.h localh5 = parame.h(paramc2.fx);
    if ((parame.ei) && (paramc1.fu.state == 1) && (paramc2.fu.state == 1))
    {
      if (android.support.constraint.a.e.am() != null)
      {
        paramh1 = android.support.constraint.a.e.am();
        paramh1.eK += 1L;
      }
      paramc1.fu.b(parame);
      paramc2.fu.b(parame);
      if ((!paramBoolean4) && (paramBoolean1)) {
        parame.a(paramh2, localh2, 0, 6);
      }
      return;
    }
    Object localObject;
    if (android.support.constraint.a.e.am() != null)
    {
      localObject = android.support.constraint.a.e.am();
      ((f)localObject).eT += 1L;
    }
    boolean bool1 = paramc1.isConnected();
    boolean bool2 = paramc2.isConnected();
    boolean bool3 = this.gv.isConnected();
    int k = 0;
    int i = 0;
    if (bool1) {
      i = 1;
    }
    int j = i;
    if (bool2) {
      j = i + 1;
    }
    if (bool3) {}
    for (i = j + 1;; i = j)
    {
      j = paramInt6;
      if (paramBoolean3) {
        j = 3;
      }
      switch (1.hg[(paramInt1 - 1)])
      {
      default: 
        paramInt1 = k;
        label268:
        if (this.gS == 8)
        {
          paramInt1 = 0;
          paramInt3 = 0;
        }
        break;
      }
      for (;;)
      {
        if (paramBoolean5)
        {
          if ((!bool1) && (!bool2) && (!bool3)) {
            parame.a(localh3, paramInt2);
          }
        }
        else
        {
          label311:
          if (paramInt3 != 0) {
            break label515;
          }
          if (!paramBoolean2) {
            break label487;
          }
          parame.c(localh2, localh3, 0, 3);
          if (paramInt4 > 0) {
            parame.a(localh2, localh3, paramInt4, 6);
          }
          paramInt1 = paramInt3;
          paramInt6 = paramInt7;
          k = paramInt8;
          if (paramInt5 < Integer.MAX_VALUE)
          {
            parame.b(localh2, localh3, paramInt5, 6);
            k = paramInt8;
            paramInt6 = paramInt7;
            paramInt1 = paramInt3;
          }
        }
        for (;;)
        {
          if ((paramBoolean5) && (!paramBoolean4)) {
            break label905;
          }
          if ((i >= 2) || (!paramBoolean1)) {
            break;
          }
          parame.a(localh3, paramh1, 0, 6);
          parame.a(paramh2, localh2, 0, 6);
          return;
          paramInt1 = 0;
          break label268;
          paramInt1 = 0;
          break label268;
          paramInt1 = 0;
          break label268;
          paramInt1 = 1;
          break label268;
          if ((!bool1) || (bool2)) {
            break label311;
          }
          parame.c(localh3, localh4, paramc1.ay(), 6);
          break label311;
          label487:
          parame.c(localh2, localh3, paramInt1, 6);
          paramInt1 = paramInt3;
          paramInt6 = paramInt7;
          k = paramInt8;
        }
        label515:
        paramInt2 = paramInt7;
        if (paramInt7 == -2) {
          paramInt2 = paramInt1;
        }
        paramInt5 = paramInt8;
        if (paramInt8 == -2) {
          paramInt5 = paramInt1;
        }
        paramInt6 = paramInt1;
        if (paramInt2 > 0)
        {
          parame.a(localh2, localh3, paramInt2, 6);
          paramInt6 = Math.max(paramInt1, paramInt2);
        }
        if (paramInt5 > 0) {
          if (paramBoolean1) {
            parame.b(localh2, localh3, paramInt5, 1);
          }
        }
        label595:
        for (paramInt7 = Math.min(paramInt6, paramInt5);; paramInt7 = paramInt6)
        {
          if (j == 1) {
            if (paramBoolean1) {
              parame.c(localh2, localh3, paramInt7, 6);
            }
          }
          while (j != 2) {
            for (;;)
            {
              paramInt1 = paramInt3;
              paramInt6 = paramInt2;
              k = paramInt5;
              if (paramInt3 == 0) {
                break;
              }
              paramInt1 = paramInt3;
              paramInt6 = paramInt2;
              k = paramInt5;
              if (i == 2) {
                break;
              }
              paramInt1 = paramInt3;
              paramInt6 = paramInt2;
              k = paramInt5;
              if (paramBoolean3) {
                break;
              }
              paramInt3 = Math.max(paramInt2, paramInt7);
              paramInt1 = paramInt3;
              if (paramInt5 > 0) {
                paramInt1 = Math.min(paramInt5, paramInt3);
              }
              parame.c(localh2, localh3, paramInt1, 6);
              paramInt1 = 0;
              paramInt6 = paramInt2;
              k = paramInt5;
              break;
              parame.b(localh2, localh3, paramInt5, 6);
              break label595;
              if (paramBoolean4) {
                parame.c(localh2, localh3, paramInt7, 4);
              } else {
                parame.c(localh2, localh3, paramInt7, 1);
              }
            }
          }
          android.support.constraint.a.h localh1;
          if ((paramc1.fw == c.c.fO) || (paramc1.fw == c.c.fQ)) {
            localh1 = parame.h(this.gz.a(c.c.fO));
          }
          for (localObject = parame.h(this.gz.a(c.c.fQ));; localObject = parame.h(this.gz.a(c.c.fP)))
          {
            parame.b(parame.ap().a(localh2, localh3, (android.support.constraint.a.h)localObject, localh1, paramFloat2));
            paramInt3 = 0;
            break;
            localh1 = parame.h(this.gz.a(c.c.fN));
          }
          label905:
          if ((!bool1) && (!bool2) && (!bool3)) {
            if (paramBoolean1) {
              parame.a(paramh2, localh2, 0, 5);
            }
          }
          label934:
          while (paramBoolean1)
          {
            parame.a(paramh2, localh2, 0, 6);
            return;
            if ((bool1) && (!bool2))
            {
              if (paramBoolean1) {
                parame.a(paramh2, localh2, 0, 5);
              }
            }
            else if ((!bool1) && (bool2))
            {
              parame.c(localh2, localh5, -paramc2.ay(), 6);
              if (paramBoolean1) {
                parame.a(localh3, paramh1, 0, 5);
              }
            }
            else if ((bool1) && (bool2))
            {
              paramInt3 = 0;
              paramInt5 = 5;
              if (paramInt1 == 0) {
                break label1315;
              }
              if ((paramBoolean1) && (paramInt4 == 0)) {
                parame.a(localh2, localh3, 0, 6);
              }
              if (j != 0) {
                break label1232;
              }
              paramInt2 = 6;
              if (k <= 0)
              {
                paramInt1 = paramInt3;
                if (paramInt6 <= 0) {}
              }
              else
              {
                paramInt2 = 4;
                paramInt1 = 1;
              }
              parame.c(localh3, localh4, paramc1.ay(), paramInt2);
              parame.c(localh2, localh5, -paramc2.ay(), paramInt2);
              if ((k <= 0) && (paramInt6 <= 0)) {
                break label1374;
              }
            }
          }
          label1232:
          label1315:
          label1374:
          for (paramInt3 = 1;; paramInt3 = 0)
          {
            paramInt2 = paramInt1;
            paramInt4 = paramInt5;
            paramInt1 = paramInt3;
            for (;;)
            {
              if (paramInt1 != 0) {
                parame.a(localh3, localh4, paramc1.ay(), paramFloat1, localh5, localh2, paramc2.ay(), paramInt4);
              }
              if (paramInt2 != 0)
              {
                parame.a(localh3, localh4, paramc1.ay(), 6);
                parame.b(localh2, localh5, -paramc2.ay(), 6);
              }
              if (!paramBoolean1) {
                break label934;
              }
              parame.a(localh3, paramh1, 0, 6);
              break label934;
              break;
              if (j == 1)
              {
                paramInt1 = 1;
                paramInt4 = 6;
                paramInt2 = 1;
              }
              else if (j == 3)
              {
                paramInt1 = 4;
                if (!paramBoolean3) {
                  paramInt1 = 6;
                }
                parame.c(localh3, localh4, paramc1.ay(), paramInt1);
                parame.c(localh2, localh5, -paramc2.ay(), paramInt1);
                paramInt1 = 1;
                paramInt2 = 1;
                paramInt4 = paramInt5;
                continue;
                paramInt1 = 1;
                if (paramBoolean1)
                {
                  parame.a(localh3, localh4, paramc1.ay(), 5);
                  parame.b(localh2, localh5, -paramc2.ay(), 5);
                }
                paramInt2 = 0;
                paramInt4 = paramInt5;
              }
              else
              {
                paramInt1 = 0;
                paramInt2 = 0;
                paramInt4 = paramInt5;
              }
            }
          }
        }
        paramInt6 = paramInt3;
        paramInt3 = paramInt1;
        paramInt1 = paramInt6;
      }
    }
  }
  
  public c a(c.c paramc)
  {
    switch (1.fE[paramc.ordinal()])
    {
    default: 
      throw new AssertionError(paramc.name());
    case 1: 
      return this.go;
    case 2: 
      return this.gp;
    case 3: 
      return this.gq;
    case 4: 
      return this.gr;
    case 5: 
      return this.gs;
    case 7: 
      return this.gt;
    case 8: 
      return this.gu;
    case 6: 
      return this.gv;
    }
    return null;
  }
  
  public final void a(int paramInt1, int paramInt2)
  {
    this.gC = paramInt1;
    this.gD = paramInt2;
  }
  
  public final void a(c.c paramc1, d paramd, c.c paramc2, int paramInt1, int paramInt2)
  {
    a(paramc1).a(paramd.a(paramc2), paramInt1, paramInt2, c.b.fJ, 0, true);
  }
  
  public void a(android.support.constraint.a.c paramc)
  {
    this.go.ax();
    this.gp.ax();
    this.gq.ax();
    this.gr.ax();
    this.gs.ax();
    this.gv.ax();
    this.gt.ax();
    this.gu.ax();
  }
  
  public void a(android.support.constraint.a.e parame)
  {
    android.support.constraint.a.h localh3 = parame.h(this.go);
    android.support.constraint.a.h localh4 = parame.h(this.gq);
    Object localObject1 = parame.h(this.gp);
    android.support.constraint.a.h localh5 = parame.h(this.gr);
    android.support.constraint.a.h localh6 = parame.h(this.gs);
    boolean bool4 = false;
    boolean bool1;
    boolean bool2;
    label110:
    boolean bool3;
    label256:
    boolean bool5;
    if (this.gz != null) {
      if (this.gz != null) {
        if (this.gz.gy[0] == a.hi)
        {
          bool1 = true;
          if (this.gz == null) {
            break label948;
          }
          if (this.gz.gy[1] != a.hi) {
            break label942;
          }
          bool2 = true;
          if ((this.go.fx == null) || (this.go.fx.fx != this.go))
          {
            bool3 = bool4;
            if (this.gq.fx != null)
            {
              bool3 = bool4;
              if (this.gq.fx.fx != this.gq) {}
            }
          }
          else
          {
            ((e)this.gz).a(this, 0);
            bool3 = true;
          }
          if (((this.gp.fx == null) || (this.gp.fx.fx != this.gp)) && ((this.gr.fx == null) || (this.gr.fx.fx != this.gr))) {
            break label1815;
          }
          ((e)this.gz).a(this, 1);
          bool4 = true;
          if ((bool1) && (this.gS != 8) && (this.go.fx == null) && (this.gq.fx == null)) {
            parame.a(parame.h(this.gz.gq), localh4, 0, 1);
          }
          if ((bool2) && (this.gS != 8) && (this.gp.fx == null) && (this.gr.fx == null) && (this.gs == null)) {
            parame.a(parame.h(this.gz.gr), localh5, 0, 1);
          }
          bool5 = bool3;
          bool3 = bool4;
          bool4 = bool1;
        }
      }
    }
    for (;;)
    {
      int j = this.db;
      int i = j;
      if (j < this.bw) {
        i = this.bw;
      }
      int k = this.dc;
      j = k;
      if (k < this.bx) {
        j = this.bx;
      }
      int m;
      label444:
      int n;
      if (this.gy[0] != a.hj)
      {
        m = 1;
        if (this.gy[1] == a.hj) {
          break label960;
        }
        n = 1;
        label459:
        int i1 = 0;
        this.gk = this.gB;
        this.gl = this.gA;
        k = i1;
        if (this.gA <= 0.0F) {
          break label1800;
        }
        k = i1;
        if (this.gS == 8) {
          break label1800;
        }
        k = 1;
        if ((this.gy[0] != a.hj) || (this.gy[1] != a.hj)) {
          break label1133;
        }
        if (this.ga == 0) {
          this.ga = 3;
        }
        if (this.gb == 0) {
          this.gb = 3;
        }
        if (this.gk == -1)
        {
          if ((m == 0) || (n != 0)) {
            break label966;
          }
          this.gk = 0;
        }
        label578:
        if ((this.gk != 0) || ((this.gp.isConnected()) && (this.gr.isConnected()))) {
          break label1002;
        }
        this.gk = 1;
        label610:
        if ((this.gk == -1) && ((!this.gp.isConnected()) || (!this.gr.isConnected()) || (!this.go.isConnected()) || (!this.gq.isConnected())))
        {
          if ((!this.gp.isConnected()) || (!this.gr.isConnected())) {
            break label1038;
          }
          this.gk = 0;
        }
        label683:
        if (this.gk == -1)
        {
          if ((!bool4) || (bool2)) {
            break label1076;
          }
          this.gk = 0;
        }
        label706:
        if (this.gk != -1) {
          break label1119;
        }
        if ((this.gc <= 0) || (this.gf != 0)) {
          break label1104;
        }
        this.gk = 0;
        m = 1;
        k = j;
        j = m;
      }
      for (;;)
      {
        label744:
        boolean bool6;
        label767:
        boolean bool7;
        label789:
        android.support.constraint.a.h localh1;
        label833:
        android.support.constraint.a.h localh2;
        if ((j != 0) && ((this.gk == 0) || (this.gk == -1)))
        {
          bool6 = true;
          if ((this.gy[0] != a.hi) || (!(this instanceof e))) {
            break label1236;
          }
          bool7 = true;
          bool1 = true;
          if (this.gv.isConnected()) {
            bool1 = false;
          }
          if (this.fW != 2)
          {
            if (this.gz == null) {
              break label1242;
            }
            localh1 = parame.h(this.gz.gq);
            if (this.gz == null) {
              break label1248;
            }
            localh2 = parame.h(this.gz.go);
            label853:
            a(parame, bool4, localh2, localh1, this.gy[0], bool7, this.go, this.gq, this.gC, i, this.bw, this.gm[0], this.gO, bool6, bool5, this.ga, this.gc, this.gd, this.ge, bool1);
          }
          if (this.fX != 2) {
            break label1254;
          }
        }
        label942:
        label948:
        label960:
        label966:
        label1002:
        label1038:
        label1076:
        label1104:
        label1119:
        label1133:
        label1236:
        label1242:
        label1248:
        label1254:
        label1300:
        label1340:
        label1360:
        label1380:
        label1707:
        label1713:
        label1769:
        label1775:
        label1781:
        label1798:
        for (;;)
        {
          return;
          bool1 = false;
          break;
          bool1 = false;
          break;
          bool2 = false;
          break label110;
          bool2 = false;
          break label110;
          m = 0;
          break label444;
          n = 0;
          break label459;
          if ((m != 0) || (n == 0)) {
            break label578;
          }
          this.gk = 1;
          if (this.gB != -1) {
            break label578;
          }
          this.gl = (1.0F / this.gl);
          break label578;
          if ((this.gk != 1) || ((this.go.isConnected()) && (this.gq.isConnected()))) {
            break label610;
          }
          this.gk = 0;
          break label610;
          if ((!this.go.isConnected()) || (!this.gq.isConnected())) {
            break label683;
          }
          this.gl = (1.0F / this.gl);
          this.gk = 1;
          break label683;
          if ((bool4) || (!bool2)) {
            break label706;
          }
          this.gl = (1.0F / this.gl);
          this.gk = 1;
          break label706;
          this.gl = (1.0F / this.gl);
          this.gk = 1;
          m = 1;
          k = j;
          j = m;
          break label744;
          if (this.gy[0] == a.hj)
          {
            this.gk = 0;
            i = (int)(this.gl * this.dc);
            m = 1;
            k = j;
            j = m;
            break label744;
          }
          if (this.gy[1] != a.hj) {
            break label1800;
          }
          this.gk = 1;
          if (this.gB == -1) {
            this.gl = (1.0F / this.gl);
          }
          k = (int)(this.gl * this.db);
          j = 1;
          break label744;
          bool6 = false;
          break label767;
          bool7 = false;
          break label789;
          localh1 = null;
          break label833;
          localh2 = null;
          break label853;
          if ((this.gy[1] == a.hi) && ((this instanceof e)))
          {
            bool4 = true;
            if ((j == 0) || ((this.gk != 1) && (this.gk != -1))) {
              break label1707;
            }
            bool5 = true;
            bool6 = bool1;
            if (this.gK > 0)
            {
              if (this.gs.fu.state != 1) {
                break label1713;
              }
              this.gs.fu.b(parame);
              bool6 = bool1;
            }
            if (this.gz == null) {
              break label1769;
            }
            localh1 = parame.h(this.gz.gr);
            if (this.gz == null) {
              break label1775;
            }
            localh2 = parame.h(this.gz.gp);
            a(parame, bool2, localh2, localh1, this.gy[1], bool4, this.gp, this.gr, this.gD, k, this.bx, this.gm[1], this.gP, bool5, bool3, this.gb, this.gf, this.gg, this.gh, bool6);
            if (j != 0)
            {
              if (this.gk != 1) {
                break label1781;
              }
              parame.c(localh5, (android.support.constraint.a.h)localObject1, localh4, localh3, this.gl);
            }
          }
          for (;;)
          {
            if (!this.gv.isConnected()) {
              break label1798;
            }
            Object localObject2 = this.gv.fx.fv;
            float f = (float)Math.toRadians(this.gn + 90.0F);
            i = this.gv.ay();
            localh1 = parame.h(a(c.c.fN));
            localObject1 = parame.h(a(c.c.fO));
            localh2 = parame.h(a(c.c.fP));
            localh5 = parame.h(a(c.c.fQ));
            localh3 = parame.h(((d)localObject2).a(c.c.fN));
            localh6 = parame.h(((d)localObject2).a(c.c.fO));
            localh4 = parame.h(((d)localObject2).a(c.c.fP));
            localObject2 = parame.h(((d)localObject2).a(c.c.fQ));
            b localb = parame.ap();
            localb.b((android.support.constraint.a.h)localObject1, localh5, localh6, (android.support.constraint.a.h)localObject2, (float)(Math.sin(f) * i));
            parame.b(localb);
            localObject1 = parame.ap();
            ((b)localObject1).b(localh1, localh2, localh3, localh4, (float)(Math.cos(f) * i));
            parame.b((b)localObject1);
            return;
            bool4 = false;
            break;
            bool5 = false;
            break label1300;
            parame.c(localh6, (android.support.constraint.a.h)localObject1, this.gK, 6);
            bool6 = bool1;
            if (this.gs.fx == null) {
              break label1340;
            }
            parame.c(localh6, parame.h(this.gs.fx), 0, 6);
            bool6 = false;
            break label1340;
            localh1 = null;
            break label1360;
            localh2 = null;
            break label1380;
            parame.c(localh4, localh3, localh5, (android.support.constraint.a.h)localObject1, this.gl);
          }
        }
        label1800:
        m = j;
        j = k;
        k = m;
      }
      label1815:
      bool4 = false;
      break label256;
      bool2 = false;
      bool4 = false;
      bool3 = false;
      bool5 = false;
    }
  }
  
  public final boolean aA()
  {
    return (this.gb == 0) && (this.gA == 0.0F) && (this.gf == 0) && (this.gg == 0) && (this.gy[1] == a.hj);
  }
  
  public final void aB()
  {
    int i = 0;
    while (i < 6)
    {
      j localj = this.gw[i].fu;
      c localc = localj.hM.fx;
      if (localc != null)
      {
        if (localc.fx == localj.hM)
        {
          localj.type = 4;
          localc.fu.type = 4;
        }
        int k = localj.hM.ay();
        int j;
        if (localj.hM.fw != c.c.fP)
        {
          j = k;
          if (localj.hM.fw != c.c.fQ) {}
        }
        else
        {
          j = -k;
        }
        localj.b(localc.fu, j);
      }
      i += 1;
    }
  }
  
  public final k aC()
  {
    if (this.fY == null) {
      this.fY = new k();
    }
    return this.fY;
  }
  
  public final k aD()
  {
    if (this.fZ == null) {
      this.fZ = new k();
    }
    return this.fZ;
  }
  
  public final int aE()
  {
    return this.gE + this.gI;
  }
  
  public final int aF()
  {
    return this.gF + this.gJ;
  }
  
  protected final int aG()
  {
    return this.gC + this.gI;
  }
  
  protected final int aH()
  {
    return this.gD + this.gJ;
  }
  
  public final boolean aI()
  {
    return this.gK > 0;
  }
  
  public ArrayList<c> aJ()
  {
    return this.gx;
  }
  
  public void aK()
  {
    int i = this.gC;
    int j = this.gD;
    int k = this.gC;
    int m = this.db;
    int n = this.gD;
    int i1 = this.dc;
    this.gE = i;
    this.gF = j;
    this.gG = (k + m - i);
    this.gH = (n + i1 - j);
  }
  
  public final void aL()
  {
    int j = this.gx.size();
    int i = 0;
    while (i < j)
    {
      ((c)this.gx.get(i)).reset();
      i += 1;
    }
  }
  
  public final int aM()
  {
    return this.gy[0];
  }
  
  public final int aN()
  {
    return this.gy[1];
  }
  
  public void aO()
  {
    int i = android.support.constraint.a.e.i(this.go);
    int m = android.support.constraint.a.e.i(this.gp);
    int j = android.support.constraint.a.e.i(this.gq);
    int k = android.support.constraint.a.e.i(this.gr);
    j -= i;
    k -= m;
    this.gC = i;
    this.gD = m;
    if (this.gS == 8)
    {
      this.db = 0;
      this.dc = 0;
    }
    do
    {
      return;
      i = j;
      if (this.gy[0] == a.hh)
      {
        i = j;
        if (j < this.db) {
          i = this.db;
        }
      }
      j = k;
      if (this.gy[1] == a.hh)
      {
        j = k;
        if (k < this.dc) {
          j = this.dc;
        }
      }
      this.db = i;
      this.dc = j;
      if (this.dc < this.bx) {
        this.dc = this.bx;
      }
    } while (this.db >= this.bw);
    this.db = this.bw;
  }
  
  public boolean au()
  {
    return this.gS != 8;
  }
  
  public void av()
  {
    int i = 0;
    while (i < 6)
    {
      this.gw[i].fu.reset();
      i += 1;
    }
  }
  
  public void aw() {}
  
  public final boolean az()
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (this.ga == 0)
    {
      bool1 = bool2;
      if (this.gA == 0.0F)
      {
        bool1 = bool2;
        if (this.gc == 0)
        {
          bool1 = bool2;
          if (this.gd == 0)
          {
            bool1 = bool2;
            if (this.gy[0] == a.hj) {
              bool1 = true;
            }
          }
        }
      }
    }
    return bool1;
  }
  
  public void b(int paramInt1, int paramInt2)
  {
    this.gI = paramInt1;
    this.gJ = paramInt2;
  }
  
  public final void c(int paramInt1, int paramInt2)
  {
    this.gC = paramInt1;
    this.db = (paramInt2 - paramInt1);
    if (this.db < this.bw) {
      this.db = this.bw;
    }
  }
  
  public final void d(int paramInt1, int paramInt2)
  {
    this.gD = paramInt1;
    this.dc = (paramInt2 - paramInt1);
    if (this.dc < this.bx) {
      this.dc = this.bx;
    }
  }
  
  public final int getBottom()
  {
    return this.gD + this.dc;
  }
  
  public final int getHeight()
  {
    if (this.gS == 8) {
      return 0;
    }
    return this.dc;
  }
  
  public final int getRight()
  {
    return this.gC + this.db;
  }
  
  public final int getWidth()
  {
    if (this.gS == 8) {
      return 0;
    }
    return this.db;
  }
  
  public final int getX()
  {
    return this.gC;
  }
  
  public final int getY()
  {
    return this.gD;
  }
  
  public void i(int paramInt)
  {
    h.a(paramInt, this);
  }
  
  public final void j(int paramInt)
  {
    this.gy[0] = paramInt;
    if (paramInt == a.hi) {
      setWidth(this.gL);
    }
  }
  
  public final void k(int paramInt)
  {
    this.gy[1] = paramInt;
    if (paramInt == a.hi) {
      setHeight(this.gM);
    }
  }
  
  public final void q(String paramString)
  {
    int i = 0;
    if ((paramString == null) || (paramString.length() == 0))
    {
      this.gA = 0.0F;
      return;
    }
    int m = paramString.length();
    int j = paramString.indexOf(',');
    String str;
    if ((j > 0) && (j < m - 1))
    {
      str = paramString.substring(0, j);
      if (!str.equalsIgnoreCase("W")) {}
    }
    for (;;)
    {
      label68:
      int k = j + 1;
      j = i;
      i = k;
      label82:
      k = paramString.indexOf(':');
      if ((k >= 0) && (k < m - 1))
      {
        str = paramString.substring(i, k);
        paramString = paramString.substring(k + 1);
        if ((str.length() <= 0) || (paramString.length() <= 0)) {}
      }
      for (;;)
      {
        float f1;
        try
        {
          f1 = Float.parseFloat(str);
          float f2 = Float.parseFloat(paramString);
          if ((f1 <= 0.0F) || (f2 <= 0.0F)) {
            break label259;
          }
          if (j == 1)
          {
            f1 = Math.abs(f2 / f1);
            if (f1 <= 0.0F) {
              break;
            }
            this.gA = f1;
            this.gB = j;
            return;
            if (!str.equalsIgnoreCase("H")) {
              break label264;
            }
            i = 1;
            break label68;
            i = 0;
            j = -1;
            break label82;
          }
          f1 /= f2;
          f1 = Math.abs(f1);
          continue;
          f1 = 0.0F;
        }
        catch (NumberFormatException paramString) {}
        continue;
        paramString = paramString.substring(i);
        if (paramString.length() > 0) {
          try
          {
            f1 = Float.parseFloat(paramString);
          }
          catch (NumberFormatException paramString) {}
        } else {
          label259:
          f1 = 0.0F;
        }
      }
      label264:
      i = -1;
    }
  }
  
  public void reset()
  {
    this.go.reset();
    this.gp.reset();
    this.gq.reset();
    this.gr.reset();
    this.gs.reset();
    this.gt.reset();
    this.gu.reset();
    this.gv.reset();
    this.gz = null;
    this.gn = 0.0F;
    this.db = 0;
    this.dc = 0;
    this.gA = 0.0F;
    this.gB = -1;
    this.gC = 0;
    this.gD = 0;
    this.gE = 0;
    this.gF = 0;
    this.gG = 0;
    this.gH = 0;
    this.gI = 0;
    this.gJ = 0;
    this.gK = 0;
    this.bw = 0;
    this.bx = 0;
    this.gL = 0;
    this.gM = 0;
    this.gO = gN;
    this.gP = gN;
    this.gy[0] = a.hh;
    this.gy[1] = a.hh;
    this.gQ = null;
    this.gR = 0;
    this.gS = 0;
    this.gU = null;
    this.gV = false;
    this.gW = false;
    this.gX = 0;
    this.gY = 0;
    this.gZ = false;
    this.ha = false;
    this.hb[0] = 0.0F;
    this.hb[1] = 0.0F;
    this.fW = -1;
    this.fX = -1;
    this.gm[0] = Integer.MAX_VALUE;
    this.gm[1] = Integer.MAX_VALUE;
    this.ga = 0;
    this.gb = 0;
    this.ge = 1.0F;
    this.gh = 1.0F;
    this.gd = Integer.MAX_VALUE;
    this.gg = Integer.MAX_VALUE;
    this.gc = 0;
    this.gf = 0;
    this.gk = -1;
    this.gl = 1.0F;
    if (this.fY != null) {
      this.fY.reset();
    }
    if (this.fZ != null) {
      this.fZ.reset();
    }
  }
  
  public final void setHeight(int paramInt)
  {
    this.dc = paramInt;
    if (this.dc < this.bx) {
      this.dc = this.bx;
    }
  }
  
  public final void setMinHeight(int paramInt)
  {
    if (paramInt < 0)
    {
      this.bx = 0;
      return;
    }
    this.bx = paramInt;
  }
  
  public final void setMinWidth(int paramInt)
  {
    if (paramInt < 0)
    {
      this.bw = 0;
      return;
    }
    this.bw = paramInt;
  }
  
  public final void setWidth(int paramInt)
  {
    this.db = paramInt;
    if (this.db < this.bw) {
      this.db = this.bw;
    }
  }
  
  public final void setX(int paramInt)
  {
    this.gC = paramInt;
  }
  
  public final void setY(int paramInt)
  {
    this.gD = paramInt;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (this.gU != null)
    {
      str = "type: " + this.gU + " ";
      localStringBuilder = localStringBuilder.append(str);
      if (this.gT == null) {
        break label182;
      }
    }
    label182:
    for (String str = "id: " + this.gT + " ";; str = "")
    {
      return str + "(" + this.gC + ", " + this.gD + ") - (" + this.db + " x " + this.dc + ") wrap: (" + this.gL + " x " + this.gM + ")";
      str = "";
      break;
    }
  }
  
  public static enum a
  {
    public static final int hh = 1;
    public static final int hi = 2;
    public static final int hj = 3;
    public static final int hk = 4;
    
    public static int[] aP()
    {
      return (int[])hl.clone();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/constraint/a/a/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */