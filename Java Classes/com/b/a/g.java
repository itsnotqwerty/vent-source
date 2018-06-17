package com.b.a;

import com.b.a.a.a.d;
import java.util.concurrent.TimeUnit;

public final class g
{
  public static final g bGb;
  public static final g bGc;
  public final int bCG;
  public final int bEN;
  public final boolean bGd;
  private final boolean bqZ;
  String c;
  public final boolean d;
  public final boolean e;
  public final int f;
  private final int g;
  public final boolean h;
  public final boolean i;
  public final boolean m;
  
  static
  {
    a locala = new a();
    locala.a = true;
    bGb = locala.zq();
    locala = new a();
    locala.f = true;
    long l = TimeUnit.SECONDS.toSeconds(2147483647L);
    if (l > 2147483647L) {}
    for (int j = Integer.MAX_VALUE;; j = (int)l)
    {
      locala.d = j;
      bGc = locala.zq();
      return;
    }
  }
  
  private g(a parama)
  {
    this.d = parama.a;
    this.e = parama.b;
    this.f = parama.c;
    this.g = -1;
    this.h = false;
    this.i = false;
    this.bGd = false;
    this.bCG = parama.d;
    this.bEN = parama.bpD;
    this.m = parama.f;
    this.bqZ = parama.g;
  }
  
  private g(boolean paramBoolean1, boolean paramBoolean2, int paramInt1, int paramInt2, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5, int paramInt3, int paramInt4, boolean paramBoolean6, boolean paramBoolean7, String paramString)
  {
    this.d = paramBoolean1;
    this.e = paramBoolean2;
    this.f = paramInt1;
    this.g = paramInt2;
    this.h = paramBoolean3;
    this.i = paramBoolean4;
    this.bGd = paramBoolean5;
    this.bCG = paramInt3;
    this.bEN = paramInt4;
    this.m = paramBoolean6;
    this.bqZ = paramBoolean7;
    this.c = paramString;
  }
  
  public static g b(t paramt)
  {
    boolean bool1 = false;
    boolean bool6 = false;
    int i3 = -1;
    int i2 = -1;
    boolean bool7 = false;
    boolean bool5 = false;
    boolean bool4 = false;
    int i1 = -1;
    int n = -1;
    boolean bool2 = false;
    boolean bool3 = false;
    int k = 1;
    Object localObject1 = null;
    int i10 = paramt.a.length / 2;
    int i4 = 0;
    while (i4 < i10)
    {
      Object localObject2 = paramt.dV(i4);
      String str1 = paramt.dW(i4);
      int j;
      if (((String)localObject2).equalsIgnoreCase("Cache-Control")) {
        if (localObject1 != null)
        {
          k = 0;
          j = 0;
        }
      }
      for (;;)
      {
        label91:
        localObject2 = localObject1;
        bool14 = bool6;
        i9 = i3;
        i8 = i2;
        bool13 = bool7;
        bool12 = bool5;
        bool11 = bool4;
        i7 = i1;
        i6 = n;
        bool10 = bool2;
        bool9 = bool3;
        i5 = k;
        bool8 = bool1;
        if (j >= str1.length()) {
          break label575;
        }
        i5 = d.b(str1, j, "=,;");
        String str2 = str1.substring(j, i5).trim();
        if ((i5 == str1.length()) || (str1.charAt(i5) == ',') || (str1.charAt(i5) == ';'))
        {
          j = i5 + 1;
          localObject2 = null;
        }
        for (;;)
        {
          if (!"no-cache".equalsIgnoreCase(str2)) {
            break label345;
          }
          bool1 = true;
          break label91;
          localObject1 = str1;
          break;
          if (!((String)localObject2).equalsIgnoreCase("Pragma")) {
            break label525;
          }
          k = 0;
          break;
          i5 = d.f(str1, i5 + 1);
          if ((i5 < str1.length()) && (str1.charAt(i5) == '"'))
          {
            j = i5 + 1;
            i5 = d.b(str1, j, "\"");
            localObject2 = str1.substring(j, i5);
            j = i5 + 1;
          }
          else
          {
            j = d.b(str1, i5, ",;");
            localObject2 = str1.substring(i5, j).trim();
          }
        }
        label345:
        if ("no-store".equalsIgnoreCase(str2)) {
          bool6 = true;
        } else if ("max-age".equalsIgnoreCase(str2)) {
          i3 = d.g((String)localObject2, -1);
        } else if ("s-maxage".equalsIgnoreCase(str2)) {
          i2 = d.g((String)localObject2, -1);
        } else if ("private".equalsIgnoreCase(str2)) {
          bool7 = true;
        } else if ("public".equalsIgnoreCase(str2)) {
          bool5 = true;
        } else if ("must-revalidate".equalsIgnoreCase(str2)) {
          bool4 = true;
        } else if ("max-stale".equalsIgnoreCase(str2)) {
          i1 = d.g((String)localObject2, Integer.MAX_VALUE);
        } else if ("min-fresh".equalsIgnoreCase(str2)) {
          n = d.g((String)localObject2, -1);
        } else if ("only-if-cached".equalsIgnoreCase(str2)) {
          bool2 = true;
        } else if ("no-transform".equalsIgnoreCase(str2)) {
          bool3 = true;
        }
      }
      label525:
      boolean bool8 = bool1;
      int i5 = k;
      boolean bool9 = bool3;
      boolean bool10 = bool2;
      int i6 = n;
      int i7 = i1;
      boolean bool11 = bool4;
      boolean bool12 = bool5;
      boolean bool13 = bool7;
      int i8 = i2;
      int i9 = i3;
      boolean bool14 = bool6;
      localObject2 = localObject1;
      label575:
      i4 += 1;
      bool1 = bool8;
      localObject1 = localObject2;
      bool6 = bool14;
      i3 = i9;
      i2 = i8;
      bool7 = bool13;
      bool5 = bool12;
      bool4 = bool11;
      i1 = i7;
      n = i6;
      bool2 = bool10;
      bool3 = bool9;
      k = i5;
    }
    if (k == 0) {}
    for (paramt = null;; paramt = (t)localObject1) {
      return new g(bool1, bool6, i3, i2, bool7, bool5, bool4, i1, n, bool2, bool3, paramt);
    }
  }
  
  public final String toString()
  {
    Object localObject = this.c;
    if (localObject != null) {
      return (String)localObject;
    }
    localObject = new StringBuilder();
    if (this.d) {
      ((StringBuilder)localObject).append("no-cache, ");
    }
    if (this.e) {
      ((StringBuilder)localObject).append("no-store, ");
    }
    if (this.f != -1) {
      ((StringBuilder)localObject).append("max-age=").append(this.f).append(", ");
    }
    if (this.g != -1) {
      ((StringBuilder)localObject).append("s-maxage=").append(this.g).append(", ");
    }
    if (this.h) {
      ((StringBuilder)localObject).append("private, ");
    }
    if (this.i) {
      ((StringBuilder)localObject).append("public, ");
    }
    if (this.bGd) {
      ((StringBuilder)localObject).append("must-revalidate, ");
    }
    if (this.bCG != -1) {
      ((StringBuilder)localObject).append("max-stale=").append(this.bCG).append(", ");
    }
    if (this.bEN != -1) {
      ((StringBuilder)localObject).append("min-fresh=").append(this.bEN).append(", ");
    }
    if (this.m) {
      ((StringBuilder)localObject).append("only-if-cached, ");
    }
    if (this.bqZ) {
      ((StringBuilder)localObject).append("no-transform, ");
    }
    if (((StringBuilder)localObject).length() == 0) {}
    for (localObject = "";; localObject = ((StringBuilder)localObject).toString())
    {
      this.c = ((String)localObject);
      return (String)localObject;
      ((StringBuilder)localObject).delete(((StringBuilder)localObject).length() - 2, ((StringBuilder)localObject).length());
    }
  }
  
  public static final class a
  {
    boolean a;
    boolean b;
    int bpD = -1;
    int c = -1;
    int d = -1;
    boolean f;
    boolean g;
    
    public final g zq()
    {
      return new g(this, (byte)0);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/b/a/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */