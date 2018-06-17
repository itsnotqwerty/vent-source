package android.support.v7.widget;

import android.support.v4.g.k.a;
import android.support.v4.g.k.b;
import java.util.ArrayList;
import java.util.List;

final class f
  implements ay.a
{
  final a VA;
  Runnable VB;
  final boolean VC;
  final ay VD;
  int VE = 0;
  private k.a<b> Vx = new k.b(30);
  final ArrayList<b> Vy = new ArrayList();
  final ArrayList<b> Vz = new ArrayList();
  
  f(a parama)
  {
    this(parama, (byte)0);
  }
  
  private f(a parama, byte paramByte)
  {
    this.VA = parama;
    this.VC = false;
    this.VD = new ay(this);
  }
  
  private void a(b paramb)
  {
    if ((paramb.wC == 1) || (paramb.wC == 8)) {
      throw new IllegalArgumentException("should not dispatch add or move for pre layout");
    }
    int i1 = v(paramb.VF, paramb.wC);
    int j = paramb.VF;
    int k;
    int m;
    int n;
    label109:
    int i2;
    switch (paramb.wC)
    {
    case 3: 
    default: 
      throw new IllegalArgumentException("op should be remove or update." + paramb);
    case 4: 
      k = 1;
      m = 1;
      n = 1;
      if (m >= paramb.VH) {
        break label294;
      }
      i2 = v(paramb.VF + k * m, paramb.wC);
      switch (paramb.wC)
      {
      case 3: 
      default: 
        i = 0;
        label170:
        if (i == 0) {}
        break;
      }
      break;
    }
    for (int i = n + 1;; i = n)
    {
      m += 1;
      n = i;
      break label109;
      k = 0;
      break;
      if (i2 == i1 + 1)
      {
        i = 1;
        break label170;
      }
      i = 0;
      break label170;
      if (i2 == i1)
      {
        i = 1;
        break label170;
      }
      i = 0;
      break label170;
      localObject = a(paramb.wC, i1, n, paramb.VG);
      a((b)localObject, j);
      c((b)localObject);
      i = j;
      if (paramb.wC == 4) {
        i = j + n;
      }
      n = 1;
      i1 = i2;
      j = i;
    }
    label294:
    Object localObject = paramb.VG;
    c(paramb);
    if (n > 0)
    {
      paramb = a(paramb.wC, i1, n, localObject);
      a(paramb, j);
      c(paramb);
    }
  }
  
  private void a(b paramb, int paramInt)
  {
    this.VA.d(paramb);
    switch (paramb.wC)
    {
    case 3: 
    default: 
      throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
    case 2: 
      this.VA.x(paramInt, paramb.VH);
      return;
    }
    this.VA.a(paramInt, paramb.VH, paramb.VG);
  }
  
  private void b(b paramb)
  {
    this.Vz.add(paramb);
    switch (paramb.wC)
    {
    case 3: 
    case 5: 
    case 6: 
    case 7: 
    default: 
      throw new IllegalArgumentException("Unknown update op type for " + paramb);
    case 1: 
      this.VA.z(paramb.VF, paramb.VH);
      return;
    case 8: 
      this.VA.A(paramb.VF, paramb.VH);
      return;
    case 2: 
      this.VA.y(paramb.VF, paramb.VH);
      return;
    }
    this.VA.a(paramb.VF, paramb.VH, paramb.VG);
  }
  
  private boolean bd(int paramInt)
  {
    int k = this.Vz.size();
    int i = 0;
    while (i < k)
    {
      b localb = (b)this.Vz.get(i);
      if (localb.wC == 8)
      {
        if (w(localb.VH, i + 1) == paramInt) {
          return true;
        }
      }
      else if (localb.wC == 1)
      {
        int m = localb.VF;
        int n = localb.VH;
        int j = localb.VF;
        while (j < m + n)
        {
          if (w(j, i + 1) == paramInt) {
            return true;
          }
          j += 1;
        }
      }
      i += 1;
    }
    return false;
  }
  
  private void j(List<b> paramList)
  {
    int j = paramList.size();
    int i = 0;
    while (i < j)
    {
      c((b)paramList.get(i));
      i += 1;
    }
    paramList.clear();
  }
  
  private int v(int paramInt1, int paramInt2)
  {
    int i = this.Vz.size() - 1;
    b localb;
    if (i >= 0)
    {
      localb = (b)this.Vz.get(i);
      int k;
      int j;
      if (localb.wC == 8) {
        if (localb.VF < localb.VH)
        {
          k = localb.VF;
          j = localb.VH;
          label64:
          if ((paramInt1 < k) || (paramInt1 > j)) {
            break label195;
          }
          if (k != localb.VF) {
            break label151;
          }
          if (paramInt2 != 1) {
            break label131;
          }
          localb.VH += 1;
          label103:
          paramInt1 += 1;
        }
      }
      for (;;)
      {
        i -= 1;
        break;
        k = localb.VH;
        j = localb.VF;
        break label64;
        label131:
        if (paramInt2 != 2) {
          break label103;
        }
        localb.VH -= 1;
        break label103;
        label151:
        if (paramInt2 == 1) {
          localb.VF += 1;
        }
        for (;;)
        {
          paramInt1 -= 1;
          break;
          if (paramInt2 == 2) {
            localb.VF -= 1;
          }
        }
        label195:
        if (paramInt1 < localb.VF)
        {
          if (paramInt2 == 1)
          {
            localb.VF += 1;
            localb.VH += 1;
            continue;
          }
          if (paramInt2 == 2)
          {
            localb.VF -= 1;
            localb.VH -= 1;
          }
        }
        continue;
        if (localb.VF <= paramInt1)
        {
          if (localb.wC == 1) {
            paramInt1 -= localb.VH;
          } else if (localb.wC == 2) {
            paramInt1 = localb.VH + paramInt1;
          }
        }
        else if (paramInt2 == 1) {
          localb.VF += 1;
        } else if (paramInt2 == 2) {
          localb.VF -= 1;
        }
      }
    }
    paramInt2 = this.Vz.size() - 1;
    if (paramInt2 >= 0)
    {
      localb = (b)this.Vz.get(paramInt2);
      if (localb.wC == 8) {
        if ((localb.VH == localb.VF) || (localb.VH < 0))
        {
          this.Vz.remove(paramInt2);
          c(localb);
        }
      }
      for (;;)
      {
        paramInt2 -= 1;
        break;
        if (localb.VH <= 0)
        {
          this.Vz.remove(paramInt2);
          c(localb);
        }
      }
    }
    return paramInt1;
  }
  
  public final b a(int paramInt1, int paramInt2, int paramInt3, Object paramObject)
  {
    b localb = (b)this.Vx.as();
    if (localb == null) {
      return new b(paramInt1, paramInt2, paramInt3, paramObject);
    }
    localb.wC = paramInt1;
    localb.VF = paramInt2;
    localb.VH = paramInt3;
    localb.VG = paramObject;
    return localb;
  }
  
  final boolean be(int paramInt)
  {
    return (this.VE & paramInt) != 0;
  }
  
  final int bf(int paramInt)
  {
    return w(paramInt, 0);
  }
  
  public final void c(b paramb)
  {
    if (!this.VC)
    {
      paramb.VG = null;
      this.Vx.j(paramb);
    }
  }
  
  final void fY()
  {
    ay localay = this.VD;
    ArrayList localArrayList = this.Vy;
    int i;
    label24:
    label53:
    int i1;
    b localb2;
    b localb3;
    int k;
    for (;;)
    {
      j = 0;
      i = localArrayList.size() - 1;
      if (i < 0) {
        break label268;
      }
      if (((b)localArrayList.get(i)).wC != 8) {
        break;
      }
      if (j == 0) {
        break label1829;
      }
      j = i;
      if (j == -1) {
        break label1251;
      }
      i1 = j + 1;
      localb2 = (b)localArrayList.get(j);
      localb3 = (b)localArrayList.get(i1);
      switch (localb3.wC)
      {
      case 3: 
      default: 
        break;
      case 1: 
        i = 0;
        if (localb2.VH < localb3.VF) {
          i = -1;
        }
        k = i;
        if (localb2.VF < localb3.VF) {
          k = i + 1;
        }
        if (localb3.VF <= localb2.VF) {
          localb2.VF += localb3.VH;
        }
        if (localb3.VF <= localb2.VH) {
          localb2.VH += localb3.VH;
        }
        localb3.VF = (k + localb3.VF);
        localArrayList.set(j, localb3);
        localArrayList.set(i1, localb2);
      }
    }
    int j = 1;
    label268:
    label344:
    label369:
    label491:
    label567:
    label655:
    label780:
    label958:
    label1002:
    label1027:
    label1149:
    label1227:
    label1251:
    label1456:
    label1522:
    label1829:
    for (;;)
    {
      i -= 1;
      break label24;
      j = -1;
      break label53;
      b localb1 = null;
      int m = 0;
      int n;
      if (localb2.VF < localb2.VH)
      {
        n = 0;
        k = n;
        i = m;
        if (localb3.VF == localb2.VF)
        {
          k = n;
          i = m;
          if (localb3.VH == localb2.VH - localb2.VF)
          {
            i = 1;
            k = n;
          }
        }
        if (localb2.VH >= localb3.VF) {
          break label491;
        }
        localb3.VF -= 1;
        if (localb2.VF > localb3.VF) {
          break label567;
        }
        localb3.VF += 1;
      }
      for (;;)
      {
        if (i == 0) {
          break label655;
        }
        localArrayList.set(j, localb3);
        localArrayList.remove(i1);
        localay.adq.c(localb2);
        break;
        n = 1;
        k = n;
        i = m;
        if (localb3.VF != localb2.VH + 1) {
          break label344;
        }
        k = n;
        i = m;
        if (localb3.VH != localb2.VF - localb2.VH) {
          break label344;
        }
        i = 1;
        k = n;
        break label344;
        if (localb2.VH >= localb3.VF + localb3.VH) {
          break label369;
        }
        localb3.VH -= 1;
        localb2.wC = 2;
        localb2.VH = 1;
        if (localb3.VH != 0) {
          break;
        }
        localArrayList.remove(i1);
        localay.adq.c(localb3);
        break;
        if (localb2.VF < localb3.VF + localb3.VH)
        {
          m = localb3.VF;
          n = localb3.VH;
          i2 = localb2.VF;
          localb1 = localay.adq.a(2, localb2.VF + 1, m + n - i2, null);
          localb3.VH = (localb2.VF - localb3.VF);
        }
      }
      if (k != 0)
      {
        if (localb1 != null)
        {
          if (localb2.VF > localb1.VF) {
            localb2.VF -= localb1.VH;
          }
          if (localb2.VH > localb1.VF) {
            localb2.VH -= localb1.VH;
          }
        }
        if (localb2.VF > localb3.VF) {
          localb2.VF -= localb3.VH;
        }
        if (localb2.VH > localb3.VF) {
          localb2.VH -= localb3.VH;
        }
        localArrayList.set(j, localb3);
        if (localb2.VF == localb2.VH) {
          break label958;
        }
        localArrayList.set(i1, localb2);
      }
      while (localb1 != null)
      {
        localArrayList.add(j, localb1);
        break;
        if (localb1 != null)
        {
          if (localb2.VF >= localb1.VF) {
            localb2.VF -= localb1.VH;
          }
          if (localb2.VH >= localb1.VF) {
            localb2.VH -= localb1.VH;
          }
        }
        if (localb2.VF >= localb3.VF) {
          localb2.VF -= localb3.VH;
        }
        if (localb2.VH < localb3.VF) {
          break label780;
        }
        localb2.VH -= localb3.VH;
        break label780;
        localArrayList.remove(i1);
      }
      localb1 = null;
      Object localObject = null;
      if (localb2.VH < localb3.VF)
      {
        localb3.VF -= 1;
        if (localb2.VF > localb3.VF) {
          break label1149;
        }
        localb3.VF += 1;
        localArrayList.set(i1, localb2);
        if (localb3.VH <= 0) {
          break label1227;
        }
        localArrayList.set(j, localb3);
      }
      for (;;)
      {
        if (localb1 != null) {
          localArrayList.add(j, localb1);
        }
        if (localObject == null) {
          break;
        }
        localArrayList.add(j, localObject);
        break;
        if (localb2.VH >= localb3.VF + localb3.VH) {
          break label1002;
        }
        localb3.VH -= 1;
        localb1 = localay.adq.a(4, localb2.VF, 1, localb3.VG);
        break label1002;
        if (localb2.VF >= localb3.VF + localb3.VH) {
          break label1027;
        }
        i = localb3.VF + localb3.VH - localb2.VF;
        localObject = localay.adq.a(4, localb2.VF + 1, i, localb3.VG);
        localb3.VH -= i;
        break label1027;
        localArrayList.remove(j);
        localay.adq.c(localb3);
      }
      int i4 = this.Vy.size();
      int i2 = 0;
      if (i2 < i4)
      {
        localb1 = (b)this.Vy.get(i2);
        switch (localb1.wC)
        {
        }
        for (;;)
        {
          if (this.VB != null) {
            this.VB.run();
          }
          i2 += 1;
          break;
          b(localb1);
          continue;
          int i3 = localb1.VF;
          m = localb1.VF + localb1.VH;
          i1 = -1;
          i = localb1.VF;
          n = 0;
          if (i < m)
          {
            j = 0;
            k = 0;
            if ((this.VA.bg(i) != null) || (bd(i)))
            {
              if (i1 == 0)
              {
                a(a(2, i3, n, null));
                k = 1;
              }
              j = 1;
              if (k == 0) {
                break label1522;
              }
              k = i - n;
              i = 1;
              m -= n;
            }
            for (;;)
            {
              k += 1;
              n = i;
              i = k;
              i1 = j;
              break;
              if (i1 == 1)
              {
                b(a(2, i3, n, null));
                j = 1;
              }
              i1 = 0;
              k = j;
              j = i1;
              break label1456;
              n += 1;
              k = i;
              i = n;
            }
          }
          localObject = localb1;
          if (n != localb1.VH)
          {
            c(localb1);
            localObject = a(2, i3, n, null);
          }
          if (i1 == 0)
          {
            a((b)localObject);
          }
          else
          {
            b((b)localObject);
            continue;
            k = localb1.VF;
            j = 0;
            int i5 = localb1.VF;
            int i6 = localb1.VH;
            i3 = -1;
            i = localb1.VF;
            if (i < i5 + i6)
            {
              if ((this.VA.bg(i) != null) || (bd(i)))
              {
                n = j;
                i1 = k;
                if (i3 == 0)
                {
                  a(a(4, k, j, localb1.VG));
                  n = 0;
                  i1 = i;
                }
                m = 1;
                k = i1;
              }
              for (;;)
              {
                j = n + 1;
                i += 1;
                i3 = m;
                break;
                n = j;
                m = k;
                if (i3 == 1)
                {
                  b(a(4, k, j, localb1.VG));
                  n = 0;
                  m = i;
                }
                j = 0;
                k = m;
                m = j;
              }
            }
            localObject = localb1;
            if (j != localb1.VH)
            {
              localObject = localb1.VG;
              c(localb1);
              localObject = a(4, k, j, localObject);
            }
            if (i3 == 0)
            {
              a((b)localObject);
            }
            else
            {
              b((b)localObject);
              continue;
              b(localb1);
            }
          }
        }
      }
      this.Vy.clear();
      return;
    }
  }
  
  final void fZ()
  {
    int j = this.Vz.size();
    int i = 0;
    while (i < j)
    {
      this.VA.e((b)this.Vz.get(i));
      i += 1;
    }
    j(this.Vz);
    this.VE = 0;
  }
  
  final boolean ga()
  {
    return this.Vy.size() > 0;
  }
  
  final void gb()
  {
    fZ();
    int j = this.Vy.size();
    int i = 0;
    if (i < j)
    {
      b localb = (b)this.Vy.get(i);
      switch (localb.wC)
      {
      }
      for (;;)
      {
        if (this.VB != null) {
          this.VB.run();
        }
        i += 1;
        break;
        this.VA.e(localb);
        this.VA.z(localb.VF, localb.VH);
        continue;
        this.VA.e(localb);
        this.VA.x(localb.VF, localb.VH);
        continue;
        this.VA.e(localb);
        this.VA.a(localb.VF, localb.VH, localb.VG);
        continue;
        this.VA.e(localb);
        this.VA.A(localb.VF, localb.VH);
      }
    }
    j(this.Vy);
    this.VE = 0;
  }
  
  final void reset()
  {
    j(this.Vy);
    j(this.Vz);
    this.VE = 0;
  }
  
  final int w(int paramInt1, int paramInt2)
  {
    int k = this.Vz.size();
    int j = paramInt2;
    paramInt2 = paramInt1;
    paramInt1 = paramInt2;
    b localb;
    if (j < k)
    {
      localb = (b)this.Vz.get(j);
      if (localb.wC == 8) {
        if (localb.VF == paramInt2) {
          paramInt1 = localb.VH;
        }
      }
    }
    for (;;)
    {
      j += 1;
      paramInt2 = paramInt1;
      break;
      int i = paramInt2;
      if (localb.VF < paramInt2) {
        i = paramInt2 - 1;
      }
      paramInt1 = i;
      if (localb.VH <= i)
      {
        paramInt1 = i + 1;
        continue;
        paramInt1 = paramInt2;
        if (localb.VF <= paramInt2) {
          if (localb.wC == 2)
          {
            if (paramInt2 < localb.VF + localb.VH)
            {
              paramInt1 = -1;
              return paramInt1;
            }
            paramInt1 = paramInt2 - localb.VH;
          }
          else
          {
            paramInt1 = paramInt2;
            if (localb.wC == 1) {
              paramInt1 = paramInt2 + localb.VH;
            }
          }
        }
      }
    }
  }
  
  static abstract interface a
  {
    public abstract void A(int paramInt1, int paramInt2);
    
    public abstract void a(int paramInt1, int paramInt2, Object paramObject);
    
    public abstract RecyclerView.x bg(int paramInt);
    
    public abstract void d(f.b paramb);
    
    public abstract void e(f.b paramb);
    
    public abstract void x(int paramInt1, int paramInt2);
    
    public abstract void y(int paramInt1, int paramInt2);
    
    public abstract void z(int paramInt1, int paramInt2);
  }
  
  static final class b
  {
    int VF;
    Object VG;
    int VH;
    int wC;
    
    b(int paramInt1, int paramInt2, int paramInt3, Object paramObject)
    {
      this.wC = paramInt1;
      this.VF = paramInt2;
      this.VH = paramInt3;
      this.VG = paramObject;
    }
    
    public final boolean equals(Object paramObject)
    {
      if (this == paramObject) {}
      do
      {
        do
        {
          do
          {
            return true;
            if ((paramObject == null) || (getClass() != paramObject.getClass())) {
              return false;
            }
            paramObject = (b)paramObject;
            if (this.wC != ((b)paramObject).wC) {
              return false;
            }
          } while ((this.wC == 8) && (Math.abs(this.VH - this.VF) == 1) && (this.VH == ((b)paramObject).VF) && (this.VF == ((b)paramObject).VH));
          if (this.VH != ((b)paramObject).VH) {
            return false;
          }
          if (this.VF != ((b)paramObject).VF) {
            return false;
          }
          if (this.VG == null) {
            break;
          }
        } while (this.VG.equals(((b)paramObject).VG));
        return false;
      } while (((b)paramObject).VG == null);
      return false;
    }
    
    public final int hashCode()
    {
      return (this.wC * 31 + this.VF) * 31 + this.VH;
    }
    
    public final String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder().append(Integer.toHexString(System.identityHashCode(this))).append("[");
      String str;
      switch (this.wC)
      {
      case 3: 
      case 5: 
      case 6: 
      case 7: 
      default: 
        str = "??";
      }
      for (;;)
      {
        return str + ",s:" + this.VF + "c:" + this.VH + ",p:" + this.VG + "]";
        str = "add";
        continue;
        str = "rm";
        continue;
        str = "up";
        continue;
        str = "mv";
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/widget/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */