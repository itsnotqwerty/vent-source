package android.support.constraint.a;

import java.util.Arrays;
import java.util.HashMap;

public final class e
{
  private static int eb = 1000;
  public static f eq;
  public final c dK;
  int ec = 0;
  private HashMap<String, h> ed = null;
  public a ee;
  private int ef = 32;
  private int eg = this.ef;
  public b[] eh = null;
  public boolean ei = false;
  private boolean[] ej = new boolean[this.ef];
  int ek = 1;
  public int el = 0;
  private int em = this.ef;
  private h[] en = new h[eb];
  private int eo = 0;
  private b[] ep = new b[this.ef];
  private final a er;
  
  public e()
  {
    ao();
    this.dK = new c();
    this.ee = new d(this.dK);
    this.er = new b(this.dK);
  }
  
  public static b a(e parame, h paramh1, h paramh2, h paramh3, float paramFloat, boolean paramBoolean)
  {
    b localb = parame.ap();
    if (paramBoolean) {
      localb.a(parame, 0);
    }
    localb.dW.a(paramh1, -1.0F);
    localb.dW.a(paramh2, 1.0F - paramFloat);
    localb.dW.a(paramh3, paramFloat);
    return localb;
  }
  
  private final void a(b paramb)
  {
    if (this.el > 0)
    {
      a locala1 = paramb.dW;
      b[] arrayOfb = this.eh;
      int j = locala1.dQ;
      int i = 0;
      while ((j != -1) && (i < locala1.dI))
      {
        Object localObject = locala1.dK.ea[locala1.dN[j]];
        if (((h)localObject).fd != -1)
        {
          float f = locala1.dP[j];
          locala1.a((h)localObject, true);
          localObject = arrayOfb[localObject.fd];
          if (!((b)localObject).dX)
          {
            a locala2 = (a)((b)localObject).dW;
            j = locala2.dQ;
            i = 0;
            while ((j != -1) && (i < locala2.dI))
            {
              locala1.a(locala1.dK.ea[locala2.dN[j]], locala2.dP[j] * f, true);
              j = locala2.dO[j];
              i += 1;
            }
          }
          paramb.dU += ((b)localObject).dU * f;
          ((b)localObject).dT.e(paramb);
          j = locala1.dQ;
          i = 0;
        }
        else
        {
          j = locala1.dO[j];
          i += 1;
        }
      }
      if (paramb.dW.dI == 0) {
        paramb.dX = true;
      }
    }
  }
  
  public static f am()
  {
    return eq;
  }
  
  private void an()
  {
    this.ef *= 2;
    this.eh = ((b[])Arrays.copyOf(this.eh, this.ef));
    this.dK.ea = ((h[])Arrays.copyOf(this.dK.ea, this.ef));
    this.ej = new boolean[this.ef];
    this.eg = this.ef;
    this.em = this.ef;
    if (eq != null)
    {
      f localf = eq;
      localf.ev += 1L;
      eq.eH = Math.max(eq.eH, this.ef);
      eq.eV = eq.eH;
    }
  }
  
  private void ao()
  {
    int i = 0;
    while (i < this.eh.length)
    {
      b localb = this.eh[i];
      if (localb != null) {
        this.dK.dY.j(localb);
      }
      this.eh[i] = null;
      i += 1;
    }
  }
  
  private final int c(a parama)
  {
    Object localObject1;
    if (eq != null)
    {
      localObject1 = eq;
      ((f)localObject1).ez += 1L;
    }
    int i = 0;
    int m;
    b localb;
    Object localObject2;
    for (;;)
    {
      if (i < this.ek)
      {
        this.ej[i] = false;
        i += 1;
        continue;
        if (m >= 0)
        {
          localb = this.eh[m];
          localb.dT.fd = -1;
          if (eq != null)
          {
            localObject2 = eq;
            ((f)localObject2).eB += 1L;
          }
          localb.c((h)localObject1);
          localb.dT.fd = m;
          localb.dT.f(localb);
        }
      }
    }
    for (;;)
    {
      int k = i;
      int j;
      if (j == 0)
      {
        if (eq != null)
        {
          localObject1 = eq;
          ((f)localObject1).eA += 1L;
        }
        i += 1;
        if (i >= this.ek * 2) {
          k = i;
        }
      }
      else
      {
        return k;
      }
      if (parama.al() != null) {
        this.ej[parama.al().id] = true;
      }
      localObject1 = parama.a(this.ej);
      if (localObject1 != null)
      {
        if (this.ej[localObject1.id] != 0) {
          return i;
        }
        this.ej[localObject1.id] = true;
      }
      if (localObject1 != null)
      {
        float f1 = Float.MAX_VALUE;
        m = -1;
        k = 0;
        label263:
        int n;
        float f2;
        if (k < this.el)
        {
          localb = this.eh[k];
          n = m;
          f2 = f1;
          if (localb.dT.fh != h.a.fl)
          {
            n = m;
            f2 = f1;
            if (!localb.dX)
            {
              localObject2 = localb.dW;
              if (((a)localObject2).dQ == -1) {
                break label477;
              }
              i1 = ((a)localObject2).dQ;
              n = 0;
              label341:
              if ((i1 == -1) || (n >= ((a)localObject2).dI)) {
                break label477;
              }
              if (localObject2.dN[i1] != ((h)localObject1).id) {
                break label458;
              }
            }
          }
        }
        label458:
        label477:
        for (int i1 = 1;; i1 = 0)
        {
          n = m;
          f2 = f1;
          if (i1 != 0)
          {
            float f3 = localb.dW.b((h)localObject1);
            n = m;
            f2 = f1;
            if (f3 < 0.0F)
            {
              f3 = -localb.dU / f3;
              n = m;
              f2 = f1;
              if (f3 < f1)
              {
                n = k;
                f2 = f3;
              }
            }
          }
          k += 1;
          m = n;
          f1 = f2;
          break label263;
          break;
          i1 = localObject2.dO[i1];
          n += 1;
          break label341;
        }
        j = 1;
      }
      else
      {
        j = 1;
        continue;
        i = 0;
        j = 0;
      }
    }
  }
  
  private final void c(b paramb)
  {
    if (this.eh[this.el] != null) {
      this.dK.dY.j(this.eh[this.el]);
    }
    this.eh[this.el] = paramb;
    paramb.dT.fd = this.el;
    this.el += 1;
    paramb.dT.f(paramb);
  }
  
  private h h(int paramInt)
  {
    h localh = (h)this.dK.dZ.as();
    if (localh == null) {
      localh = new h(paramInt);
    }
    for (localh.fh = paramInt;; localh.fh = paramInt)
    {
      if (this.eo >= eb)
      {
        eb *= 2;
        this.en = ((h[])Arrays.copyOf(this.en, eb));
      }
      h[] arrayOfh = this.en;
      paramInt = this.eo;
      this.eo = (paramInt + 1);
      arrayOfh[paramInt] = localh;
      return localh;
      localh.reset();
    }
  }
  
  public static int i(Object paramObject)
  {
    paramObject = ((android.support.constraint.a.a.c)paramObject).fD;
    if (paramObject != null) {
      return (int)(((h)paramObject).ff + 0.5F);
    }
    return 0;
  }
  
  public final void a(b paramb, int paramInt1, int paramInt2)
  {
    h localh = g(paramInt2);
    paramb.dW.a(localh, paramInt1);
  }
  
  public final void a(h paramh, int paramInt)
  {
    int i = paramh.fd;
    if (paramh.fd != -1)
    {
      localb = this.eh[i];
      if (localb.dX)
      {
        localb.dU = paramInt;
        return;
      }
      if (localb.dW.dI == 0)
      {
        localb.dX = true;
        localb.dU = paramInt;
        return;
      }
      localb = ap();
      if (paramInt < 0)
      {
        localb.dU = (paramInt * -1);
        localb.dW.a(paramh, 1.0F);
      }
      for (;;)
      {
        b(localb);
        return;
        localb.dU = paramInt;
        localb.dW.a(paramh, -1.0F);
      }
    }
    b localb = ap();
    localb.dT = paramh;
    paramh.ff = paramInt;
    localb.dU = paramInt;
    localb.dX = true;
    b(localb);
  }
  
  public final void a(h paramh1, h paramh2, int paramInt1, float paramFloat, h paramh3, h paramh4, int paramInt2, int paramInt3)
  {
    b localb = ap();
    if (paramh2 == paramh3)
    {
      localb.dW.a(paramh1, 1.0F);
      localb.dW.a(paramh4, 1.0F);
      localb.dW.a(paramh2, -2.0F);
    }
    for (;;)
    {
      if (paramInt3 != 6) {
        localb.a(this, paramInt3);
      }
      b(localb);
      return;
      if (paramFloat == 0.5F)
      {
        localb.dW.a(paramh1, 1.0F);
        localb.dW.a(paramh2, -1.0F);
        localb.dW.a(paramh3, -1.0F);
        localb.dW.a(paramh4, 1.0F);
        if ((paramInt1 > 0) || (paramInt2 > 0)) {
          localb.dU = (-paramInt1 + paramInt2);
        }
      }
      else if (paramFloat <= 0.0F)
      {
        localb.dW.a(paramh1, -1.0F);
        localb.dW.a(paramh2, 1.0F);
        localb.dU = paramInt1;
      }
      else if (paramFloat >= 1.0F)
      {
        localb.dW.a(paramh3, -1.0F);
        localb.dW.a(paramh4, 1.0F);
        localb.dU = paramInt2;
      }
      else
      {
        localb.dW.a(paramh1, (1.0F - paramFloat) * 1.0F);
        localb.dW.a(paramh2, (1.0F - paramFloat) * -1.0F);
        localb.dW.a(paramh3, -1.0F * paramFloat);
        localb.dW.a(paramh4, 1.0F * paramFloat);
        if ((paramInt1 > 0) || (paramInt2 > 0)) {
          localb.dU = (-paramInt1 * (1.0F - paramFloat) + paramInt2 * paramFloat);
        }
      }
    }
  }
  
  public final void a(h paramh1, h paramh2, int paramInt1, int paramInt2)
  {
    b localb = ap();
    h localh = aq();
    localh.fe = 0;
    localb.a(paramh1, paramh2, localh, paramInt1);
    if (paramInt2 != 6) {
      a(localb, (int)(localb.dW.b(localh) * -1.0F), paramInt2);
    }
    b(localb);
  }
  
  public final b ap()
  {
    b localb = (b)this.dK.dY.as();
    if (localb == null) {
      localb = new b(this.dK);
    }
    for (;;)
    {
      h.at();
      return localb;
      localb.dT = null;
      localb.dW.clear();
      localb.dU = 0.0F;
      localb.dX = false;
    }
  }
  
  public final h aq()
  {
    if (eq != null)
    {
      localObject = eq;
      ((f)localObject).eF += 1L;
    }
    if (this.ek + 1 >= this.eg) {
      an();
    }
    Object localObject = h(h.a.fn);
    this.ec += 1;
    this.ek += 1;
    ((h)localObject).id = this.ec;
    this.dK.ea[this.ec] = localObject;
    return (h)localObject;
  }
  
  public final void ar()
  {
    int i = 0;
    while (i < this.el)
    {
      b localb = this.eh[i];
      localb.dT.ff = localb.dU;
      i += 1;
    }
  }
  
  public final void b(b paramb)
  {
    if (paramb == null) {}
    label225:
    label340:
    label486:
    label604:
    label817:
    label825:
    label1067:
    label1099:
    label1122:
    label1134:
    label1138:
    label1140:
    label1150:
    for (;;)
    {
      return;
      Object localObject1;
      if (eq != null)
      {
        localObject1 = eq;
        ((f)localObject1).ex += 1L;
        if (paramb.dX)
        {
          localObject1 = eq;
          ((f)localObject1).ey += 1L;
        }
      }
      if ((this.el + 1 >= this.em) || (this.ek + 1 >= this.eg)) {
        an();
      }
      int i;
      int j;
      Object localObject4;
      Object localObject5;
      if (!paramb.dX)
      {
        a(paramb);
        if ((paramb.dT == null) && (paramb.dU == 0.0F) && (paramb.dW.dI == 0)) {}
        Object localObject2;
        for (i = 1; i == 0; i = 0)
        {
          if (paramb.dU >= 0.0F) {
            break label225;
          }
          paramb.dU *= -1.0F;
          localObject1 = paramb.dW;
          j = ((a)localObject1).dQ;
          i = 0;
          while ((j != -1) && (i < ((a)localObject1).dI))
          {
            localObject2 = ((a)localObject1).dP;
            localObject2[j] *= -1.0F;
            j = localObject1.dO[j];
            i += 1;
          }
        }
        continue;
        a locala = paramb.dW;
        localObject4 = null;
        localObject5 = null;
        float f4 = 0.0F;
        float f5 = 0.0F;
        boolean bool3 = false;
        boolean bool4 = false;
        j = locala.dQ;
        i = 0;
        if ((j != -1) && (i < locala.dI))
        {
          float f2 = locala.dP[j];
          localObject1 = locala.dK.ea[locala.dN[j]];
          float f1;
          boolean bool1;
          boolean bool2;
          float f3;
          Object localObject3;
          if (f2 < 0.0F)
          {
            f1 = f2;
            if (f2 > -0.001F)
            {
              locala.dP[j] = 0.0F;
              f1 = 0.0F;
              ((h)localObject1).e(locala.dJ);
            }
            bool1 = bool4;
            bool2 = bool3;
            f2 = f5;
            f3 = f4;
            localObject2 = localObject5;
            localObject3 = localObject4;
            if (f1 != 0.0F)
            {
              if (((h)localObject1).fh != h.a.fl) {
                break label604;
              }
              if (localObject5 != null) {
                break label486;
              }
              bool2 = a.a((h)localObject1);
              localObject3 = localObject4;
              localObject2 = localObject1;
              f3 = f1;
              f2 = f5;
              bool1 = bool4;
            }
          }
          for (;;)
          {
            j = locala.dO[j];
            i += 1;
            bool4 = bool1;
            bool3 = bool2;
            f5 = f2;
            f4 = f3;
            localObject5 = localObject2;
            localObject4 = localObject3;
            break;
            f1 = f2;
            if (f2 >= 0.001F) {
              break label340;
            }
            locala.dP[j] = 0.0F;
            f1 = 0.0F;
            ((h)localObject1).e(locala.dJ);
            break label340;
            if (f4 > f1)
            {
              bool2 = a.a((h)localObject1);
              bool1 = bool4;
              f2 = f5;
              f3 = f1;
              localObject2 = localObject1;
              localObject3 = localObject4;
            }
            else
            {
              bool1 = bool4;
              bool2 = bool3;
              f2 = f5;
              f3 = f4;
              localObject2 = localObject5;
              localObject3 = localObject4;
              if (!bool3)
              {
                bool1 = bool4;
                bool2 = bool3;
                f2 = f5;
                f3 = f4;
                localObject2 = localObject5;
                localObject3 = localObject4;
                if (a.a((h)localObject1))
                {
                  bool2 = true;
                  bool1 = bool4;
                  f2 = f5;
                  f3 = f1;
                  localObject2 = localObject1;
                  localObject3 = localObject4;
                  continue;
                  bool1 = bool4;
                  bool2 = bool3;
                  f2 = f5;
                  f3 = f4;
                  localObject2 = localObject5;
                  localObject3 = localObject4;
                  if (localObject5 == null)
                  {
                    bool1 = bool4;
                    bool2 = bool3;
                    f2 = f5;
                    f3 = f4;
                    localObject2 = localObject5;
                    localObject3 = localObject4;
                    if (f1 < 0.0F) {
                      if (localObject4 == null)
                      {
                        bool1 = a.a((h)localObject1);
                        bool2 = bool3;
                        f2 = f1;
                        f3 = f4;
                        localObject2 = localObject5;
                        localObject3 = localObject1;
                      }
                      else if (f5 > f1)
                      {
                        bool1 = a.a((h)localObject1);
                        bool2 = bool3;
                        f2 = f1;
                        f3 = f4;
                        localObject2 = localObject5;
                        localObject3 = localObject1;
                      }
                      else
                      {
                        bool1 = bool4;
                        bool2 = bool3;
                        f2 = f5;
                        f3 = f4;
                        localObject2 = localObject5;
                        localObject3 = localObject4;
                        if (!bool4)
                        {
                          bool1 = bool4;
                          bool2 = bool3;
                          f2 = f5;
                          f3 = f4;
                          localObject2 = localObject5;
                          localObject3 = localObject4;
                          if (a.a((h)localObject1))
                          {
                            bool1 = true;
                            bool2 = bool3;
                            f2 = f1;
                            f3 = f4;
                            localObject2 = localObject5;
                            localObject3 = localObject1;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
        if (localObject5 != null)
        {
          if (localObject5 != null) {
            break label1122;
          }
          i = 1;
          if (paramb.dW.dI == 0) {
            paramb.dX = true;
          }
          if (i == 0) {
            break label1140;
          }
          if (eq != null)
          {
            localObject1 = eq;
            ((f)localObject1).eG += 1L;
          }
          if (this.ek + 1 >= this.eg) {
            an();
          }
          localObject1 = h(h.a.fn);
          this.ec += 1;
          this.ek += 1;
          ((h)localObject1).id = this.ec;
          this.dK.ea[this.ec] = localObject1;
          paramb.dT = ((h)localObject1);
          c(paramb);
          j = 1;
          this.er.a(paramb);
          c(this.er);
          i = j;
          if (((h)localObject1).fd == -1)
          {
            if (paramb.dT == localObject1)
            {
              localObject1 = paramb.dW.a(null, (h)localObject1);
              if (localObject1 != null)
              {
                if (eq != null)
                {
                  localObject2 = eq;
                  ((f)localObject2).eB += 1L;
                }
                paramb.c((h)localObject1);
              }
            }
            if (!paramb.dX) {
              paramb.dT.f(paramb);
            }
            this.el -= 1;
            i = j;
          }
          if ((paramb.dT == null) || ((paramb.dT.fh != h.a.fl) && (paramb.dU < 0.0F))) {
            break label1134;
          }
          j = 1;
          if (j == 0) {
            break label1138;
          }
        }
      }
      for (;;)
      {
        if (i != 0) {
          break label1150;
        }
        c(paramb);
        return;
        localObject5 = localObject4;
        break label817;
        paramb.c((h)localObject5);
        i = 0;
        break label825;
        j = 0;
        break label1099;
        break;
        i = 0;
        break label1067;
        i = 0;
      }
    }
  }
  
  public final void b(a parama)
    throws Exception
  {
    Object localObject1;
    if (eq != null)
    {
      localObject1 = eq;
      ((f)localObject1).eL += 1L;
      eq.eM = Math.max(eq.eM, this.ek);
      eq.eN = Math.max(eq.eN, this.el);
    }
    a((b)parama);
    int i = 0;
    if (i < this.el) {
      if ((this.eh[i].dT.fh == h.a.fl) || (this.eh[i].dU >= 0.0F)) {}
    }
    for (i = 1;; i = 0)
    {
      int i2;
      float f1;
      int j;
      int k;
      int m;
      label171:
      int i3;
      int i1;
      int n;
      float f2;
      label266:
      Object localObject2;
      if (i != 0)
      {
        i2 = 0;
        if (i2 == 0)
        {
          if (eq != null)
          {
            localObject1 = eq;
            ((f)localObject1).eC += 1L;
          }
          f1 = Float.MAX_VALUE;
          i = 0;
          j = -1;
          k = -1;
          m = 0;
          if (m < this.el)
          {
            localObject1 = this.eh[m];
            i3 = k;
            i1 = j;
            n = i;
            f2 = f1;
            if (((b)localObject1).dT.fh != h.a.fl)
            {
              i3 = k;
              i1 = j;
              n = i;
              f2 = f1;
              if (!((b)localObject1).dX)
              {
                i3 = k;
                i1 = j;
                n = i;
                f2 = f1;
                if (((b)localObject1).dU < 0.0F)
                {
                  n = 1;
                  if (n < this.ek)
                  {
                    localObject2 = this.dK.ea[n];
                    float f3 = ((b)localObject1).dW.b((h)localObject2);
                    if (f3 <= 0.0F) {
                      break label571;
                    }
                    int i4 = 0;
                    i1 = k;
                    i3 = j;
                    j = i4;
                    k = i;
                    i = i3;
                    for (;;)
                    {
                      if (j < 7)
                      {
                        f2 = localObject2.fg[j] / f3;
                        if (((f2 >= f1) || (j != k)) && (j <= k)) {
                          break label568;
                        }
                        i1 = n;
                        i = m;
                        k = j;
                        f1 = f2;
                        label382:
                        j += 1;
                        continue;
                        i += 1;
                        break;
                      }
                    }
                    j = i1;
                  }
                }
              }
            }
          }
        }
      }
      for (;;)
      {
        n += 1;
        i1 = k;
        k = j;
        j = i;
        i = i1;
        break label266;
        f2 = f1;
        n = i;
        i1 = j;
        i3 = k;
        m += 1;
        k = i3;
        j = i1;
        i = n;
        f1 = f2;
        break label171;
        if (j != -1)
        {
          localObject1 = this.eh[j];
          ((b)localObject1).dT.fd = -1;
          if (eq != null)
          {
            localObject2 = eq;
            ((f)localObject2).eB += 1L;
          }
          ((b)localObject1).c(this.dK.ea[k]);
          ((b)localObject1).dT.fd = j;
          ((b)localObject1).dT.f((b)localObject1);
          break;
        }
        i2 = 1;
        break;
        c(parama);
        ar();
        return;
        label568:
        break label382;
        label571:
        i1 = j;
        i3 = i;
        j = k;
        i = i1;
        k = i3;
      }
    }
  }
  
  public final void b(h paramh1, h paramh2, int paramInt1, int paramInt2)
  {
    b localb = ap();
    h localh = aq();
    localh.fe = 0;
    localb.b(paramh1, paramh2, localh, paramInt1);
    if (paramInt2 != 6) {
      a(localb, (int)(localb.dW.b(localh) * -1.0F), paramInt2);
    }
    b(localb);
  }
  
  public final b c(h paramh1, h paramh2, int paramInt1, int paramInt2)
  {
    b localb = ap();
    int i = 0;
    int j = 0;
    if (paramInt1 != 0)
    {
      i = j;
      j = paramInt1;
      if (paramInt1 < 0)
      {
        j = paramInt1 * -1;
        i = 1;
      }
      localb.dU = j;
    }
    if (i == 0)
    {
      localb.dW.a(paramh1, -1.0F);
      localb.dW.a(paramh2, 1.0F);
    }
    for (;;)
    {
      if (paramInt2 != 6) {
        localb.a(this, paramInt2);
      }
      b(localb);
      return localb;
      localb.dW.a(paramh1, 1.0F);
      localb.dW.a(paramh2, -1.0F);
    }
  }
  
  public final void c(h paramh1, h paramh2, h paramh3, h paramh4, float paramFloat)
  {
    b localb = ap();
    localb.a(paramh1, paramh2, paramh3, paramh4, paramFloat);
    b(localb);
  }
  
  public final h g(int paramInt)
  {
    if (eq != null)
    {
      localObject = eq;
      ((f)localObject).eE += 1L;
    }
    if (this.ek + 1 >= this.eg) {
      an();
    }
    Object localObject = h(h.a.fo);
    this.ec += 1;
    this.ek += 1;
    ((h)localObject).id = this.ec;
    ((h)localObject).fe = paramInt;
    this.dK.ea[this.ec] = localObject;
    this.ee.d((h)localObject);
    return (h)localObject;
  }
  
  public final h h(Object paramObject)
  {
    Object localObject2 = null;
    if (paramObject == null) {}
    Object localObject1;
    do
    {
      do
      {
        return (h)localObject2;
        if (this.ek + 1 >= this.eg) {
          an();
        }
      } while (!(paramObject instanceof android.support.constraint.a.a.c));
      localObject2 = ((android.support.constraint.a.a.c)paramObject).fD;
      localObject1 = localObject2;
      if (localObject2 == null)
      {
        ((android.support.constraint.a.a.c)paramObject).ax();
        localObject1 = ((android.support.constraint.a.a.c)paramObject).fD;
      }
      if ((((h)localObject1).id == -1) || (((h)localObject1).id > this.ec)) {
        break;
      }
      localObject2 = localObject1;
    } while (this.dK.ea[localObject1.id] != null);
    if (((h)localObject1).id != -1) {
      ((h)localObject1).reset();
    }
    this.ec += 1;
    this.ek += 1;
    ((h)localObject1).id = this.ec;
    ((h)localObject1).fh = h.a.fl;
    this.dK.ea[this.ec] = localObject1;
    return (h)localObject1;
  }
  
  public final void reset()
  {
    int i = 0;
    while (i < this.dK.ea.length)
    {
      h localh = this.dK.ea[i];
      if (localh != null) {
        localh.reset();
      }
      i += 1;
    }
    this.dK.dZ.a(this.en, this.eo);
    this.eo = 0;
    Arrays.fill(this.dK.ea, null);
    if (this.ed != null) {
      this.ed.clear();
    }
    this.ec = 0;
    this.ee.clear();
    this.ek = 1;
    i = 0;
    while (i < this.el)
    {
      this.eh[i].dV = false;
      i += 1;
    }
    ao();
    this.el = 0;
  }
  
  static abstract interface a
  {
    public abstract h a(boolean[] paramArrayOfBoolean);
    
    public abstract void a(a parama);
    
    public abstract h al();
    
    public abstract void clear();
    
    public abstract void d(h paramh);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/constraint/a/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */