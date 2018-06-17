package d;

import java.util.Arrays;

final class q
  extends f
{
  final transient byte[][] cUr;
  final transient int[] cUs;
  
  q(c paramc, int paramInt)
  {
    super(null);
    u.checkOffsetAndCount(paramc.size, 0L, paramInt);
    o localo = paramc.dbZ;
    int i = 0;
    int j = 0;
    while (j < paramInt)
    {
      if (localo.limit == localo.pos) {
        throw new AssertionError("s.limit == s.pos");
      }
      j += localo.limit - localo.pos;
      i += 1;
      localo = localo.dcl;
    }
    this.cUr = new byte[i][];
    this.cUs = new int[i * 2];
    paramc = paramc.dbZ;
    j = 0;
    i = 0;
    while (i < paramInt)
    {
      this.cUr[j] = paramc.data;
      int k = paramc.limit - paramc.pos + i;
      i = k;
      if (k > paramInt) {
        i = paramInt;
      }
      this.cUs[j] = i;
      this.cUs[(this.cUr.length + j)] = paramc.pos;
      paramc.cUm = true;
      j += 1;
      paramc = paramc.dcl;
    }
  }
  
  private f Nv()
  {
    return new f(toByteArray());
  }
  
  private int fC(int paramInt)
  {
    paramInt = Arrays.binarySearch(this.cUs, 0, this.cUr.length, paramInt + 1);
    if (paramInt >= 0) {
      return paramInt;
    }
    return paramInt ^ 0xFFFFFFFF;
  }
  
  public final String KE()
  {
    return Nv().KE();
  }
  
  public final String KF()
  {
    return Nv().KF();
  }
  
  public final String KJ()
  {
    return Nv().KJ();
  }
  
  public final f Nl()
  {
    return Nv().Nl();
  }
  
  public final f Nm()
  {
    return Nv().Nm();
  }
  
  public final f Nn()
  {
    return Nv().Nn();
  }
  
  public final f No()
  {
    return Nv().No();
  }
  
  final void a(c paramc)
  {
    int m = this.cUr.length;
    int i = 0;
    int j = 0;
    if (i < m)
    {
      int n = this.cUs[(m + i)];
      int k = this.cUs[i];
      o localo = new o(this.cUr[i], n, n + k - j);
      if (paramc.dbZ == null)
      {
        localo.dcm = localo;
        localo.dcl = localo;
        paramc.dbZ = localo;
      }
      for (;;)
      {
        i += 1;
        j = k;
        break;
        paramc.dbZ.dcm.a(localo);
      }
    }
    paramc.size += j;
  }
  
  public final boolean a(int paramInt1, f paramf, int paramInt2, int paramInt3)
  {
    if (size() - paramInt3 < 0) {
      return false;
    }
    int j = fC(0);
    int i = paramInt1;
    paramInt1 = j;
    label25:
    if (paramInt3 > 0)
    {
      if (paramInt1 == 0) {}
      for (j = 0;; j = this.cUs[(paramInt1 - 1)])
      {
        int k = Math.min(paramInt3, this.cUs[paramInt1] - j + j - i);
        int m = this.cUs[(this.cUr.length + paramInt1)];
        if (!paramf.a(paramInt2, this.cUr[paramInt1], i - j + m, k)) {
          break;
        }
        i += k;
        paramInt2 += k;
        paramInt3 -= k;
        paramInt1 += 1;
        break label25;
      }
    }
    return true;
  }
  
  public final boolean a(int paramInt1, byte[] paramArrayOfByte, int paramInt2, int paramInt3)
  {
    if ((paramInt1 < 0) || (paramInt1 > size() - paramInt3) || (paramInt2 < 0) || (paramInt2 > paramArrayOfByte.length - paramInt3)) {
      return false;
    }
    int j = fC(paramInt1);
    int i = paramInt1;
    paramInt1 = j;
    label43:
    if (paramInt3 > 0)
    {
      if (paramInt1 == 0) {}
      for (j = 0;; j = this.cUs[(paramInt1 - 1)])
      {
        int k = Math.min(paramInt3, this.cUs[paramInt1] - j + j - i);
        int m = this.cUs[(this.cUr.length + paramInt1)];
        if (!u.a(this.cUr[paramInt1], i - j + m, paramArrayOfByte, paramInt2, k)) {
          break;
        }
        i += k;
        paramInt2 += k;
        paramInt3 -= k;
        paramInt1 += 1;
        break label43;
      }
    }
    return true;
  }
  
  public final f aW(int paramInt1, int paramInt2)
  {
    return Nv().aW(paramInt1, paramInt2);
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    return ((paramObject instanceof f)) && (((f)paramObject).size() == size()) && (a(0, (f)paramObject, 0, size()));
  }
  
  public final byte getByte(int paramInt)
  {
    u.checkOffsetAndCount(this.cUs[(this.cUr.length - 1)], paramInt, 1L);
    int j = fC(paramInt);
    if (j == 0) {}
    for (int i = 0;; i = this.cUs[(j - 1)])
    {
      int k = this.cUs[(this.cUr.length + j)];
      return this.cUr[j][(paramInt - i + k)];
    }
  }
  
  public final int hashCode()
  {
    int i = this.bkc;
    if (i != 0) {
      return i;
    }
    i = 1;
    int i2 = this.cUr.length;
    int k = 0;
    int n;
    for (int m = 0; k < i2; m = n)
    {
      byte[] arrayOfByte = this.cUr[k];
      int i1 = this.cUs[(i2 + k)];
      n = this.cUs[k];
      int j = i1;
      while (j < i1 + (n - m))
      {
        i = arrayOfByte[j] + i * 31;
        j += 1;
      }
      k += 1;
    }
    this.bkc = i;
    return i;
  }
  
  public final int size()
  {
    return this.cUs[(this.cUr.length - 1)];
  }
  
  public final byte[] toByteArray()
  {
    byte[] arrayOfByte = new byte[this.cUs[(this.cUr.length - 1)]];
    int m = this.cUr.length;
    int i = 0;
    int k;
    for (int j = 0; i < m; j = k)
    {
      int n = this.cUs[(m + i)];
      k = this.cUs[i];
      System.arraycopy(this.cUr[i], n, arrayOfByte, j, k - j);
      i += 1;
    }
    return arrayOfByte;
  }
  
  public final String toString()
  {
    return Nv().toString();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/d/q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */