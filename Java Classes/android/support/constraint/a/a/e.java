package android.support.constraint.a.a;

import android.support.constraint.a.f;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Arrays;

public final class e
  extends n
{
  public int bB = 3;
  public boolean hm = false;
  protected android.support.constraint.a.e hn = new android.support.constraint.a.e();
  private m ho;
  int hp;
  int hq;
  int hr;
  int hs;
  int ht = 0;
  int hu = 0;
  d[] hv = new d[4];
  d[] hw = new d[4];
  public boolean hx = false;
  public boolean hy = false;
  int hz = 0;
  
  private void b(boolean[] paramArrayOfBoolean)
  {
    paramArrayOfBoolean[2] = false;
    aO();
    int j = this.ib.size();
    int i = 0;
    while (i < j)
    {
      d locald = (d)this.ib.get(i);
      locald.aO();
      if ((locald.gy[0] == d.a.hj) && (locald.getWidth() < locald.gL)) {
        paramArrayOfBoolean[2] = true;
      }
      if ((locald.gy[1] == d.a.hj) && (locald.getHeight() < locald.gM)) {
        paramArrayOfBoolean[2] = true;
      }
      i += 1;
    }
  }
  
  final void a(d paramd, int paramInt)
  {
    int j = 0;
    int i = 0;
    if (paramInt == 0)
    {
      for (;;)
      {
        paramInt = i;
        if (paramd.go.fx == null) {
          break;
        }
        paramInt = i;
        if (paramd.go.fx.fv.gq.fx == null) {
          break;
        }
        paramInt = i;
        if (paramd.go.fx.fv.gq.fx != paramd.go) {
          break;
        }
        paramInt = i;
        if (paramd.go.fx.fv == paramd) {
          break;
        }
        paramd = paramd.go.fx.fv;
      }
      while (paramInt < this.ht)
      {
        if (this.hw[paramInt] == paramd) {
          break label177;
        }
        paramInt += 1;
      }
      if (this.ht + 1 >= this.hw.length) {
        this.hw = ((d[])Arrays.copyOf(this.hw, this.hw.length * 2));
      }
      this.hw[this.ht] = paramd;
      this.ht += 1;
    }
    label177:
    while (paramInt != 1) {
      return;
    }
    for (;;)
    {
      paramInt = j;
      if (paramd.gp.fx == null) {
        break;
      }
      paramInt = j;
      if (paramd.gp.fx.fv.gr.fx == null) {
        break;
      }
      paramInt = j;
      if (paramd.gp.fx.fv.gr.fx != paramd.gp) {
        break;
      }
      paramInt = j;
      if (paramd.gp.fx.fv == paramd) {
        break;
      }
      paramd = paramd.gp.fx.fv;
    }
    for (;;)
    {
      if (paramInt >= this.hu) {
        break label300;
      }
      if (this.hv[paramInt] == paramd) {
        break;
      }
      paramInt += 1;
    }
    label300:
    if (this.hu + 1 >= this.hv.length) {
      this.hv = ((d[])Arrays.copyOf(this.hv, this.hv.length * 2));
    }
    this.hv[this.hu] = paramd;
    this.hu += 1;
  }
  
  public final void aQ()
  {
    int i3 = this.gC;
    int i4 = this.gD;
    int i5 = Math.max(0, getWidth());
    int i6 = Math.max(0, getHeight());
    this.hx = false;
    this.hy = false;
    Object localObject1;
    Object localObject3;
    if (this.gz != null)
    {
      if (this.ho == null) {
        this.ho = new m(this);
      }
      localObject1 = this.ho;
      ((m)localObject1).gC = getX();
      ((m)localObject1).gD = getY();
      ((m)localObject1).db = getWidth();
      ((m)localObject1).dc = getHeight();
      j = ((m)localObject1).hY.size();
      i = 0;
      if (i < j)
      {
        localObject3 = (m.a)((m)localObject1).hY.get(i);
        ((m.a)localObject3).hD = a(((m.a)localObject3).hD.fw);
        if (((m.a)localObject3).hD != null)
        {
          ((m.a)localObject3).fx = ((m.a)localObject3).hD.fx;
          ((m.a)localObject3).fy = ((m.a)localObject3).hD.ay();
          ((m.a)localObject3).hZ = ((m.a)localObject3).hD.fA;
        }
        for (((m.a)localObject3).ia = ((m.a)localObject3).hD.fC;; ((m.a)localObject3).ia = 0)
        {
          i += 1;
          break;
          ((m.a)localObject3).fx = null;
          ((m.a)localObject3).fy = 0;
          ((m.a)localObject3).hZ = c.b.fJ;
        }
      }
      setX(this.hp);
      setY(this.hq);
      aL();
      a(this.hn.dK);
      if (this.bB == 0) {
        break label428;
      }
      if (!l(8)) {
        aS();
      }
      if (!l(8)) {
        i(this.bB);
      }
      aR();
    }
    int m;
    int i7;
    int i8;
    int i9;
    label428:
    for (this.hn.ei = true;; this.hn.ei = false)
    {
      m = 0;
      i7 = this.gy[1];
      i8 = this.gy[0];
      this.ht = 0;
      this.hu = 0;
      i9 = this.ib.size();
      i = 0;
      while (i < i9)
      {
        localObject1 = (d)this.ib.get(i);
        if ((localObject1 instanceof n)) {
          ((n)localObject1).aQ();
        }
        i += 1;
      }
      this.gC = 0;
      this.gD = 0;
      break;
    }
    int j = 1;
    int k = 0;
    int i = m;
    int i2;
    label485:
    int n;
    int i1;
    label651:
    label662:
    Object localObject2;
    if (j != 0)
    {
      i2 = k + 1;
      try
      {
        this.hn.reset();
        localObject1 = this.hn;
        a((android.support.constraint.a.e)localObject1);
        m = this.ib.size();
        k = 0;
        if (k >= m) {
          break label748;
        }
        localObject3 = (d)this.ib.get(k);
        if ((localObject3 instanceof e))
        {
          n = localObject3.gy[0];
          i1 = localObject3.gy[1];
          if (n == d.a.hi) {
            ((d)localObject3).j(d.a.hh);
          }
          if (i1 == d.a.hi) {
            ((d)localObject3).k(d.a.hh);
          }
          ((d)localObject3).a((android.support.constraint.a.e)localObject1);
          if (n == d.a.hi) {
            ((d)localObject3).j(n);
          }
          if (i1 == d.a.hi) {
            ((d)localObject3).k(i1);
          }
        }
        else
        {
          h.a(this, (android.support.constraint.a.e)localObject1, (d)localObject3);
          ((d)localObject3).a((android.support.constraint.a.e)localObject1);
        }
      }
      catch (Exception localException1) {}
      localException1.printStackTrace();
      System.out.println("EXCEPTION : " + localException1);
      if (j != 0)
      {
        b(h.hL);
        if ((i2 >= 8) || (h.hL[2] == 0)) {
          break label1522;
        }
        m = 0;
        j = 0;
        k = 0;
        while (k < i9)
        {
          localObject2 = (d)this.ib.get(k);
          m = Math.max(m, ((d)localObject2).gC + ((d)localObject2).getWidth());
          n = ((d)localObject2).gD;
          j = Math.max(j, ((d)localObject2).getHeight() + n);
          k += 1;
          continue;
          label748:
          if (this.ht > 0) {
            b.a(this, (android.support.constraint.a.e)localObject2, 0);
          }
          if (this.hu > 0) {
            b.a(this, (android.support.constraint.a.e)localObject2, 1);
          }
          n = 1;
          m = 1;
        }
      }
    }
    for (;;)
    {
      try
      {
        localObject2 = this.hn;
        if (android.support.constraint.a.e.eq != null)
        {
          localObject3 = android.support.constraint.a.e.eq;
          ((f)localObject3).ew += 1L;
        }
        if (((android.support.constraint.a.e)localObject2).ei)
        {
          if (android.support.constraint.a.e.eq == null) {
            continue;
          }
          localObject3 = android.support.constraint.a.e.eq;
          ((f)localObject3).eJ += 1L;
          continue;
          k = i1;
          if (j < ((android.support.constraint.a.e)localObject2).el)
          {
            if (localObject2.eh[j].dX) {
              break label1550;
            }
            k = 0;
          }
          if (k == 0)
          {
            ((android.support.constraint.a.e)localObject2).b(((android.support.constraint.a.e)localObject2).ee);
            j = n;
            break label651;
          }
          if (android.support.constraint.a.e.eq != null)
          {
            localObject3 = android.support.constraint.a.e.eq;
            ((f)localObject3).eI += 1L;
          }
          ((android.support.constraint.a.e)localObject2).ar();
          j = n;
          break label651;
        }
        ((android.support.constraint.a.e)localObject2).b(((android.support.constraint.a.e)localObject2).ee);
        j = n;
        break label651;
        aO();
        j = 0;
        if (j >= i9) {
          break label662;
        }
        localObject2 = (d)this.ib.get(j);
        if ((localObject2.gy[0] == d.a.hj) && (((d)localObject2).getWidth() < ((d)localObject2).gL))
        {
          h.hL[2] = true;
          break label662;
        }
        if ((localObject2.gy[1] == d.a.hj) && (((d)localObject2).getHeight() < ((d)localObject2).gM))
        {
          h.hL[2] = true;
          break label662;
        }
        j += 1;
        continue;
        k = Math.max(this.bw, m);
        n = Math.max(this.bx, j);
        if ((i8 == d.a.hi) && (getWidth() < k))
        {
          setWidth(k);
          this.gy[0] = d.a.hi;
          k = 1;
          m = 1;
          j = k;
          i = m;
          if (i7 == d.a.hi)
          {
            j = k;
            i = m;
            if (getHeight() < n)
            {
              setHeight(n);
              this.gy[1] = d.a.hi;
              i = 1;
              j = 1;
            }
          }
          k = Math.max(this.bw, getWidth());
          if (k > getWidth())
          {
            setWidth(k);
            this.gy[0] = d.a.hh;
            i = 1;
            j = 1;
          }
          k = Math.max(this.bx, getHeight());
          if (k > getHeight())
          {
            setHeight(k);
            this.gy[1] = d.a.hh;
            k = 1;
            j = 1;
            m = j;
            i = k;
            if (k == 0)
            {
              i1 = j;
              n = k;
              if (this.gy[0] == d.a.hi)
              {
                i1 = j;
                n = k;
                if (i5 > 0)
                {
                  i1 = j;
                  n = k;
                  if (getWidth() > i5)
                  {
                    this.hx = true;
                    n = 1;
                    this.gy[0] = d.a.hh;
                    setWidth(i5);
                    i1 = 1;
                  }
                }
              }
              m = i1;
              i = n;
              if (this.gy[1] == d.a.hi)
              {
                m = i1;
                i = n;
                if (i6 > 0)
                {
                  m = i1;
                  i = n;
                  if (getHeight() > i6)
                  {
                    this.hy = true;
                    i = 1;
                    this.gy[1] = d.a.hh;
                    setHeight(i6);
                    m = 1;
                  }
                }
              }
            }
            j = m;
            k = i2;
            break;
            if (this.gz != null)
            {
              j = Math.max(this.bw, getWidth());
              k = Math.max(this.bx, getHeight());
              this.ho.b(this);
              setWidth(j + this.hp + this.hr);
              setHeight(this.hq + k + this.hs);
              if (i != 0)
              {
                this.gy[0] = i8;
                this.gy[1] = i7;
              }
              a(this.hn.dK);
              if (this == aW()) {
                aK();
              }
              return;
            }
            this.gC = i3;
            this.gD = i4;
            continue;
          }
          k = i;
          continue;
        }
        k = 0;
        m = i;
        continue;
        label1522:
        j = 0;
        continue;
        k += 1;
        break label485;
        i1 = 1;
        j = 0;
        continue;
      }
      catch (Exception localException2)
      {
        j = m;
      }
      label1550:
      j += 1;
    }
  }
  
  public final void aR()
  {
    j localj1 = a(c.c.fN).fu;
    j localj2 = a(c.c.fO).fu;
    localj1.a(null, 0.0F);
    localj2.a(null, 0.0F);
  }
  
  public final void aS()
  {
    int j = this.ib.size();
    av();
    int i = 0;
    while (i < j)
    {
      ((d)this.ib.get(i)).av();
      i += 1;
    }
  }
  
  public final void e(int paramInt1, int paramInt2)
  {
    if ((this.gy[0] != d.a.hi) && (this.fY != null)) {
      this.fY.p(paramInt1);
    }
    if ((this.gy[1] != d.a.hi) && (this.fZ != null)) {
      this.fZ.p(paramInt2);
    }
  }
  
  public final void i(int paramInt)
  {
    super.i(paramInt);
    int j = this.ib.size();
    int i = 0;
    while (i < j)
    {
      ((d)this.ib.get(i)).i(paramInt);
      i += 1;
    }
  }
  
  public final boolean l(int paramInt)
  {
    return (this.bB & paramInt) == paramInt;
  }
  
  public final void reset()
  {
    this.hn.reset();
    this.hp = 0;
    this.hr = 0;
    this.hq = 0;
    this.hs = 0;
    super.reset();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/constraint/a/a/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */