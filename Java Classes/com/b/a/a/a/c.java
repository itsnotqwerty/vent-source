package com.b.a.a.a;

import com.b.a.aa;
import com.b.a.ac;
import com.b.a.g;
import com.b.a.t;
import java.util.Date;

public final class c
{
  public final aa bIK;
  public final ac bIL;
  
  private c(aa paramaa, ac paramac)
  {
    this.bIK = paramaa;
    this.bIL = paramac;
  }
  
  public static boolean a(ac paramac, aa paramaa)
  {
    switch (paramac.c)
    {
    }
    do
    {
      return false;
    } while (((paramac.a("Expires") == null) && (paramac.Ar().f == -1) && (!paramac.Ar().i) && (!paramac.Ar().h)) || (paramac.Ar().e) || (paramaa.Al().e));
    return true;
  }
  
  public static final class a
  {
    public int bEN = -1;
    public final aa bGf;
    public final ac bIM;
    public final long brA;
    public Date bur;
    public Date d;
    public String e;
    public String g;
    public Date h;
    public long i;
    public long j;
    public String k;
    
    public a(long paramLong, aa paramaa, ac paramac)
    {
      this.brA = paramLong;
      this.bGf = paramaa;
      this.bIM = paramac;
      if (paramac != null)
      {
        paramaa = paramac.bMy;
        int m = 0;
        int n = paramaa.a.length / 2;
        if (m < n)
        {
          paramac = paramaa.dV(m);
          String str = paramaa.dW(m);
          if ("Date".equalsIgnoreCase(paramac))
          {
            this.d = f.dE(str);
            this.e = str;
          }
          for (;;)
          {
            m += 1;
            break;
            if ("Expires".equalsIgnoreCase(paramac))
            {
              this.h = f.dE(str);
            }
            else if ("Last-Modified".equalsIgnoreCase(paramac))
            {
              this.bur = f.dE(str);
              this.g = str;
            }
            else if ("ETag".equalsIgnoreCase(paramac))
            {
              this.k = str;
            }
            else if ("Age".equalsIgnoreCase(paramac))
            {
              this.bEN = d.g(str, -1);
            }
            else if (j.b.equalsIgnoreCase(paramac))
            {
              this.i = Long.parseLong(str);
            }
            else if (j.c.equalsIgnoreCase(paramac))
            {
              this.j = Long.parseLong(str);
            }
          }
        }
      }
    }
    
    public static boolean b(aa paramaa)
    {
      return (paramaa.a("If-Modified-Since") != null) || (paramaa.a("If-None-Match") != null);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/b/a/a/a/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */