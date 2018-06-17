package android.support.constraint.a.a;

import android.support.constraint.a.f;

public final class h
{
  static boolean[] hL = new boolean[3];
  
  static void a(int paramInt, d paramd)
  {
    paramd.aB();
    j localj1 = paramd.go.fu;
    j localj2 = paramd.gp.fu;
    j localj3 = paramd.gq.fu;
    j localj4 = paramd.gr.fu;
    if ((paramInt & 0x8) == 8)
    {
      paramInt = 1;
      if ((localj1.type != 4) && (localj3.type != 4))
      {
        if (paramd.gy[0] != d.a.hh) {
          break label499;
        }
        if ((paramd.go.fx != null) || (paramd.gq.fx != null)) {
          break label260;
        }
        localj1.type = 1;
        localj3.type = 1;
        if (paramInt == 0) {
          break label247;
        }
        localj3.a(localj1, 1, paramd.aC());
      }
      label125:
      if ((localj2.type != 4) && (localj4.type != 4))
      {
        if (paramd.gy[1] != d.a.hh) {
          break label1111;
        }
        if ((paramd.gp.fx != null) || (paramd.gr.fx != null)) {
          break label808;
        }
        localj2.type = 1;
        localj4.type = 1;
        if (paramInt == 0) {
          break label794;
        }
        localj4.a(localj2, 1, paramd.aD());
        label203:
        if (paramd.gs.fx != null)
        {
          paramd.gs.fu.type = 1;
          localj2.a(paramd.gs.fu, -paramd.gK);
        }
      }
    }
    label247:
    label260:
    label499:
    label794:
    label808:
    label1111:
    do
    {
      int i;
      do
      {
        do
        {
          for (;;)
          {
            return;
            paramInt = 0;
            break;
            localj3.b(localj1, paramd.getWidth());
            break label125;
            if ((paramd.go.fx != null) && (paramd.gq.fx == null))
            {
              localj1.type = 1;
              localj3.type = 1;
              if (paramInt != 0)
              {
                localj3.a(localj1, 1, paramd.aC());
                break label125;
              }
              localj3.b(localj1, paramd.getWidth());
              break label125;
            }
            if ((paramd.go.fx == null) && (paramd.gq.fx != null))
            {
              localj1.type = 1;
              localj3.type = 1;
              localj1.b(localj3, -paramd.getWidth());
              if (paramInt != 0)
              {
                localj1.a(localj3, -1, paramd.aC());
                break label125;
              }
              localj1.b(localj3, -paramd.getWidth());
              break label125;
            }
            if ((paramd.go.fx == null) || (paramd.gq.fx == null)) {
              break label125;
            }
            localj1.type = 2;
            localj3.type = 2;
            if (paramInt != 0)
            {
              paramd.aC().a(localj1);
              paramd.aC().a(localj3);
              localj1.b(localj3, -1, paramd.aC());
              localj3.b(localj1, 1, paramd.aC());
              break label125;
            }
            localj1.b(localj3, -paramd.getWidth());
            localj3.b(localj1, paramd.getWidth());
            break label125;
            if ((paramd.gy[0] != d.a.hj) || (!b(paramd, 0))) {
              break label125;
            }
            i = paramd.getWidth();
            localj1.type = 1;
            localj3.type = 1;
            if ((paramd.go.fx == null) && (paramd.gq.fx == null))
            {
              if (paramInt != 0)
              {
                localj3.a(localj1, 1, paramd.aC());
                break label125;
              }
              localj3.b(localj1, i);
              break label125;
            }
            if ((paramd.go.fx != null) && (paramd.gq.fx == null))
            {
              if (paramInt != 0)
              {
                localj3.a(localj1, 1, paramd.aC());
                break label125;
              }
              localj3.b(localj1, i);
              break label125;
            }
            if ((paramd.go.fx == null) && (paramd.gq.fx != null))
            {
              if (paramInt != 0)
              {
                localj1.a(localj3, -1, paramd.aC());
                break label125;
              }
              localj1.b(localj3, -i);
              break label125;
            }
            if ((paramd.go.fx == null) || (paramd.gq.fx == null)) {
              break label125;
            }
            if (paramInt != 0)
            {
              paramd.aC().a(localj1);
              paramd.aC().a(localj3);
            }
            if (paramd.gA == 0.0F)
            {
              localj1.type = 3;
              localj3.type = 3;
              localj1.b(localj3, 0.0F);
              localj3.b(localj1, 0.0F);
              break label125;
            }
            localj1.type = 2;
            localj3.type = 2;
            localj1.b(localj3, -i);
            localj3.b(localj1, i);
            paramd.setWidth(i);
            break label125;
            localj4.b(localj2, paramd.getHeight());
            break label203;
            if ((paramd.gp.fx != null) && (paramd.gr.fx == null))
            {
              localj2.type = 1;
              localj4.type = 1;
              if (paramInt != 0) {
                localj4.a(localj2, 1, paramd.aD());
              }
              while (paramd.gK > 0)
              {
                paramd.gs.fu.a(localj2, paramd.gK);
                return;
                localj4.b(localj2, paramd.getHeight());
              }
            }
            else if ((paramd.gp.fx == null) && (paramd.gr.fx != null))
            {
              localj2.type = 1;
              localj4.type = 1;
              if (paramInt != 0) {
                localj2.a(localj4, -1, paramd.aD());
              }
              while (paramd.gK > 0)
              {
                paramd.gs.fu.a(localj2, paramd.gK);
                return;
                localj2.b(localj4, -paramd.getHeight());
              }
            }
            else if ((paramd.gp.fx != null) && (paramd.gr.fx != null))
            {
              localj2.type = 2;
              localj4.type = 2;
              if (paramInt != 0)
              {
                localj2.b(localj4, -1, paramd.aD());
                localj4.b(localj2, 1, paramd.aD());
                paramd.aD().a(localj2);
                paramd.aC().a(localj4);
              }
              while (paramd.gK > 0)
              {
                paramd.gs.fu.a(localj2, paramd.gK);
                return;
                localj2.b(localj4, -paramd.getHeight());
                localj4.b(localj2, paramd.getHeight());
              }
            }
          }
        } while ((paramd.gy[1] != d.a.hj) || (!b(paramd, 1)));
        i = paramd.getHeight();
        localj2.type = 1;
        localj4.type = 1;
        if ((paramd.gp.fx == null) && (paramd.gr.fx == null))
        {
          if (paramInt != 0)
          {
            localj4.a(localj2, 1, paramd.aD());
            return;
          }
          localj4.b(localj2, i);
          return;
        }
        if ((paramd.gp.fx != null) && (paramd.gr.fx == null))
        {
          if (paramInt != 0)
          {
            localj4.a(localj2, 1, paramd.aD());
            return;
          }
          localj4.b(localj2, i);
          return;
        }
        if ((paramd.gp.fx == null) && (paramd.gr.fx != null))
        {
          if (paramInt != 0)
          {
            localj2.a(localj4, -1, paramd.aD());
            return;
          }
          localj2.b(localj4, -i);
          return;
        }
      } while ((paramd.gp.fx == null) || (paramd.gr.fx == null));
      if (paramInt != 0)
      {
        paramd.aD().a(localj2);
        paramd.aC().a(localj4);
      }
      if (paramd.gA == 0.0F)
      {
        localj2.type = 3;
        localj4.type = 3;
        localj2.b(localj4, 0.0F);
        localj4.b(localj2, 0.0F);
        return;
      }
      localj2.type = 2;
      localj4.type = 2;
      localj2.b(localj4, -i);
      localj4.b(localj2, i);
      paramd.setHeight(i);
    } while (paramd.gK <= 0);
    paramd.gs.fu.a(localj2, paramd.gK);
  }
  
  static void a(e parame, android.support.constraint.a.e parame1, d paramd)
  {
    int i;
    int j;
    if ((parame.gy[0] != d.a.hi) && (paramd.gy[0] == d.a.hk))
    {
      i = paramd.go.fy;
      j = parame.getWidth() - paramd.gq.fy;
      paramd.go.fD = parame1.h(paramd.go);
      paramd.gq.fD = parame1.h(paramd.gq);
      parame1.a(paramd.go.fD, i);
      parame1.a(paramd.gq.fD, j);
      paramd.fW = 2;
      paramd.c(i, j);
    }
    if ((parame.gy[1] != d.a.hi) && (paramd.gy[1] == d.a.hk))
    {
      i = paramd.gp.fy;
      j = parame.getHeight() - paramd.gr.fy;
      paramd.gp.fD = parame1.h(paramd.gp);
      paramd.gr.fD = parame1.h(paramd.gr);
      parame1.a(paramd.gp.fD, i);
      parame1.a(paramd.gr.fD, j);
      if ((paramd.gK > 0) || (paramd.gS == 8))
      {
        paramd.gs.fD = parame1.h(paramd.gs);
        parame1.a(paramd.gs.fD, paramd.gK + i);
      }
      paramd.fX = 2;
      paramd.d(i, j);
    }
  }
  
  static boolean a(e parame, android.support.constraint.a.e parame1, int paramInt1, int paramInt2, d paramd)
  {
    Object localObject4 = null;
    Object localObject3 = null;
    int i = 0;
    int i1 = 0;
    float f3 = 0.0F;
    Object localObject2 = null;
    Object localObject6 = null;
    int j = d.a.hi;
    Object localObject1;
    Object localObject5;
    if ((paramInt1 == 0) && (parame.hm))
    {
      localObject1 = paramd;
      while (i == 0)
      {
        parame = localObject1.gw[(paramInt2 + 1)].fx;
        if (parame != null)
        {
          localObject5 = parame.fv;
          if (localObject5.gw[paramInt2].fx != null)
          {
            parame = (e)localObject5;
            if (localObject5.gw[paramInt2].fx.fv == localObject1) {
              break label105;
            }
          }
        }
        for (parame = null;; parame = null)
        {
          label105:
          if (parame == null) {
            break label120;
          }
          localObject1 = parame;
          break;
        }
        label120:
        i = 1;
      }
    }
    for (;;)
    {
      int n = 0;
      parame = paramd;
      int k;
      label159:
      int m;
      label175:
      float f5;
      float f4;
      label188:
      float f2;
      label254:
      float f1;
      if (paramInt1 == 0) {
        if (((d)localObject1).gX == 0)
        {
          j = 1;
          if (((d)localObject1).gX != 1) {
            break label407;
          }
          k = 1;
          if (((d)localObject1).gX != 2) {
            break label413;
          }
          i = 1;
          m = j;
          f5 = 0.0F;
          f4 = 0.0F;
          j = 0;
          localObject1 = localObject4;
          if (n != 0) {
            break label719;
          }
          parame.hd[paramInt1] = null;
          if (parame.gS == 8) {
            break label1889;
          }
          if (localObject3 != null) {
            ((d)localObject3).hd[paramInt1] = parame;
          }
          localObject3 = localObject1;
          if (localObject1 == null) {
            localObject3 = parame;
          }
          j += 1;
          if (paramInt1 != 0) {
            break label503;
          }
          f2 = parame.getWidth() + f5;
          f1 = f2;
          if (parame != localObject3) {
            f1 = f2 + parame.gw[paramInt2].ay();
          }
          f4 = f4 + parame.gw[paramInt2].ay() + parame.gw[(paramInt2 + 1)].ay();
          localObject1 = parame;
          localObject4 = localObject3;
          localObject3 = localObject1;
          f5 = f1;
        }
      }
      for (;;)
      {
        parame.hc[paramInt1] = null;
        Object localObject7 = localObject6;
        localObject5 = localObject2;
        f1 = f3;
        int i2 = i1;
        if (parame.gS != 8)
        {
          localObject7 = localObject6;
          localObject5 = localObject2;
          f1 = f3;
          i2 = i1;
          if (parame.gy[paramInt1] == d.a.hj)
          {
            i2 = i1 + 1;
            if (paramInt1 == 0)
            {
              if (parame.ga != 0)
              {
                return false;
                j = 0;
                break;
                label407:
                k = 0;
                break label159;
                label413:
                i = 0;
                m = j;
                break label175;
                if (((d)localObject1).gY == 0)
                {
                  i = 1;
                  label434:
                  if (((d)localObject1).gY != 1) {
                    break label479;
                  }
                }
                label479:
                for (j = 1;; j = 0)
                {
                  if (((d)localObject1).gY != 2) {
                    break label485;
                  }
                  i2 = 1;
                  m = i;
                  k = j;
                  i = i2;
                  break;
                  i = 0;
                  break label434;
                }
                label485:
                i2 = 0;
                m = i;
                k = j;
                i = i2;
                break label175;
                label503:
                f2 = parame.getHeight() + f5;
                break label254;
              }
              if ((parame.gc == 0) && (parame.gd == 0)) {
                break label557;
              }
              return false;
            }
            if (parame.gb != 0) {
              return false;
            }
            if ((parame.gf != 0) || (parame.gg != 0)) {
              return false;
            }
            label557:
            f1 = f3 + parame.hb[paramInt1];
            if (localObject2 != null) {
              break label676;
            }
            localObject2 = parame;
            label576:
            localObject7 = parame;
            localObject5 = localObject2;
          }
        }
        localObject1 = parame.gw[(paramInt2 + 1)].fx;
        if (localObject1 != null)
        {
          localObject2 = ((c)localObject1).fv;
          if (localObject2.gw[paramInt2].fx != null)
          {
            localObject1 = localObject2;
            if (localObject2.gw[paramInt2].fx.fv == parame) {
              break label645;
            }
          }
        }
        for (localObject1 = null;; localObject1 = null)
        {
          label645:
          if (localObject1 == null) {
            break label693;
          }
          parame = (e)localObject1;
          localObject6 = localObject7;
          localObject2 = localObject5;
          f3 = f1;
          i1 = i2;
          localObject1 = localObject4;
          break;
          label676:
          ((d)localObject6).hc[paramInt1] = parame;
          break label576;
        }
        label693:
        n = 1;
        localObject6 = localObject7;
        localObject2 = localObject5;
        f3 = f1;
        i1 = i2;
        localObject1 = localObject4;
        break label188;
        label719:
        localObject2 = paramd.gw[paramInt2].fu;
        localObject4 = parame.gw[(paramInt2 + 1)].fu;
        if ((((j)localObject2).hN == null) || (((j)localObject4).hN == null)) {
          return false;
        }
        if ((((j)localObject2).hN.state != 1) && (((j)localObject4).hN.state != 1)) {
          return false;
        }
        if ((i1 > 0) && (i1 != j)) {
          return false;
        }
        f1 = 0.0F;
        f2 = 0.0F;
        if ((i != 0) || (m != 0) || (k != 0))
        {
          if (localObject1 != null) {
            f2 = localObject1.gw[paramInt2].ay();
          }
          f1 = f2;
          if (localObject3 != null) {
            f1 = f2 + localObject3.gw[(paramInt2 + 1)].ay();
          }
        }
        float f6 = ((j)localObject2).hN.hQ;
        f2 = ((j)localObject4).hN.hQ;
        if (f6 < f2) {
          f2 = f2 - f6 - f5;
        }
        while ((i1 > 0) && (i1 == j)) {
          if ((parame.gz != null) && (parame.gz.gy[paramInt1] == d.a.hi))
          {
            return false;
            f2 = f6 - f2 - f5;
          }
          else
          {
            f2 = f2 + f5 - f4;
            if (m == 0) {
              break label1886;
            }
            f2 -= f4 - f1;
          }
        }
        label1381:
        label1563:
        label1633:
        label1724:
        label1845:
        label1847:
        label1863:
        label1870:
        label1873:
        label1886:
        for (;;)
        {
          if (m != 0)
          {
            f4 = f6 + localObject1.gw[(paramInt2 + 1)].ay();
            paramd = localObject1.hd[paramInt1];
            f1 = f4;
            parame = (e)localObject1;
            if (paramd != null)
            {
              f1 = f4 + paramd.gw[paramInt2].ay();
              parame = (e)localObject1;
            }
          }
          for (;;)
          {
            if (parame != null)
            {
              if (android.support.constraint.a.e.eq != null)
              {
                paramd = android.support.constraint.a.e.eq;
                paramd.eT -= 1L;
                paramd = android.support.constraint.a.e.eq;
                paramd.eK += 1L;
                paramd = android.support.constraint.a.e.eq;
                paramd.eQ += 1L;
              }
              paramd = parame.hd[paramInt1];
              if ((paramd == null) && (parame != localObject3)) {
                break label1873;
              }
              f4 = f2 / i1;
              if (f3 > 0.0F) {
                f4 = parame.hb[paramInt1] * f2 / f3;
              }
              f1 += parame.gw[paramInt2].ay();
              parame.gw[paramInt2].fu.a(((j)localObject2).hP, f1);
              parame.gw[(paramInt2 + 1)].fu.a(((j)localObject2).hP, f1 + f4);
              parame.gw[paramInt2].fu.b(parame1);
              parame.gw[(paramInt2 + 1)].fu.b(parame1);
              f1 = f4 + f1 + parame.gw[(paramInt2 + 1)].ay();
            }
            for (;;)
            {
              parame = paramd;
              break;
              return true;
              if (f2 < f5) {
                return false;
              }
              if (i != 0)
              {
                f1 = f6 + (f2 - f1) * paramd.gO;
                if (localObject1 == null) {
                  break label1845;
                }
                if (android.support.constraint.a.e.eq != null)
                {
                  parame = android.support.constraint.a.e.eq;
                  parame.eT -= 1L;
                  parame = android.support.constraint.a.e.eq;
                  parame.eK += 1L;
                  parame = android.support.constraint.a.e.eq;
                  parame.eQ += 1L;
                }
                parame = localObject1.hd[paramInt1];
                if ((parame == null) && (localObject1 != localObject3)) {
                  break label1870;
                }
                if (paramInt1 == 0)
                {
                  f2 = ((d)localObject1).getWidth();
                  f1 += localObject1.gw[paramInt2].ay();
                  localObject1.gw[paramInt2].fu.a(((j)localObject2).hP, f1);
                  localObject1.gw[(paramInt2 + 1)].fu.a(((j)localObject2).hP, f1 + f2);
                  localObject1.gw[paramInt2].fu.b(parame1);
                  localObject1.gw[(paramInt2 + 1)].fu.b(parame1);
                  f1 = f2 + f1 + localObject1.gw[(paramInt2 + 1)].ay();
                }
              }
              for (;;)
              {
                localObject1 = parame;
                break;
                f2 = ((d)localObject1).getHeight();
                break label1381;
                if ((m != 0) || (k != 0)) {
                  if (m != 0) {
                    f1 = f2 - f1;
                  }
                }
                for (;;)
                {
                  f2 = f1 / (j + 1);
                  if (k != 0) {
                    if (j > 1) {
                      f2 = f1 / (j - 1);
                    }
                  }
                  for (;;)
                  {
                    if ((k != 0) && (j > 1)) {}
                    for (f3 = localObject1.gw[paramInt2].ay() + f6;; f3 = f6 + f2)
                    {
                      f1 = f3;
                      parame = (e)localObject1;
                      if (m != 0)
                      {
                        f1 = f3;
                        parame = (e)localObject1;
                        if (localObject1 != null)
                        {
                          f1 = f3 + localObject1.gw[paramInt2].ay();
                          parame = (e)localObject1;
                        }
                      }
                      if (parame != null)
                      {
                        if (android.support.constraint.a.e.eq != null)
                        {
                          paramd = android.support.constraint.a.e.eq;
                          paramd.eT -= 1L;
                          paramd = android.support.constraint.a.e.eq;
                          paramd.eK += 1L;
                          paramd = android.support.constraint.a.e.eq;
                          paramd.eQ += 1L;
                        }
                        paramd = parame.hd[paramInt1];
                        if ((paramd == null) && (parame != localObject3)) {
                          break label1847;
                        }
                        if (paramInt1 == 0)
                        {
                          f3 = parame.getWidth();
                          parame.gw[paramInt2].fu.a(((j)localObject2).hP, f1);
                          parame.gw[(paramInt2 + 1)].fu.a(((j)localObject2).hP, f1 + f3);
                          parame.gw[paramInt2].fu.b(parame1);
                          parame.gw[(paramInt2 + 1)].fu.b(parame1);
                          f1 = f3 + f2 + f1;
                        }
                      }
                      for (;;)
                      {
                        parame = paramd;
                        break label1633;
                        if (k == 0) {
                          break label1863;
                        }
                        f1 = f2 - f1;
                        break;
                        f2 = f1 / 2.0F;
                        break label1563;
                        f3 = parame.getHeight();
                        break label1724;
                        return true;
                      }
                    }
                  }
                  f1 = f2;
                }
              }
            }
            f1 = f6;
            parame = (e)localObject1;
          }
        }
        label1889:
        localObject4 = localObject1;
      }
      localObject1 = paramd;
    }
  }
  
  private static boolean b(d paramd, int paramInt)
  {
    int i = 1;
    if (paramd.gy[paramInt] != d.a.hj) {}
    do
    {
      for (;;)
      {
        return false;
        if (paramd.gA == 0.0F) {
          break;
        }
        paramd = paramd.gy;
        if (paramInt == 0) {}
        for (paramInt = i; paramd[paramInt] == d.a.hj; paramInt = 0) {
          return false;
        }
      }
      if (paramInt != 0) {
        break;
      }
    } while ((paramd.ga != 0) || (paramd.gc != 0) || (paramd.gd != 0));
    do
    {
      return true;
      if ((paramd.gb != 0) || (paramd.gf != 0)) {
        break;
      }
    } while (paramd.gg == 0);
    return false;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/constraint/a/a/h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */