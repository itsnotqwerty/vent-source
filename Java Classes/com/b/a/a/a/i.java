package com.b.a.a.a;

import b.r;
import b.s;
import com.b.a.aa;
import com.b.a.ac;
import com.b.a.ac.a;
import com.b.a.c;
import com.b.a.y;
import java.io.IOException;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.Socket;

public final class i
  implements t
{
  private final g bJv;
  private final e bJw;
  
  public i(g paramg, e parame)
  {
    this.bJv = paramg;
    this.bJw = parame;
  }
  
  public final r a(aa paramaa, long paramLong)
    throws IOException
  {
    if ("chunked".equalsIgnoreCase(paramaa.a("Transfer-Encoding")))
    {
      paramaa = this.bJw;
      if (paramaa.f != 1) {
        throw new IllegalStateException("state: " + paramaa.f);
      }
      paramaa.f = 2;
      return new e.b(paramaa, (byte)0);
    }
    if (paramLong != -1L)
    {
      paramaa = this.bJw;
      if (paramaa.f != 1) {
        throw new IllegalStateException("state: " + paramaa.f);
      }
      paramaa.f = 2;
      return new e.d(paramaa, paramLong, (byte)0);
    }
    throw new IllegalStateException("Cannot stream a request body without chunked encoding or a known content length!");
  }
  
  public final void a()
    throws IOException
  {
    this.bJw.d();
  }
  
  public final void a(n paramn)
    throws IOException
  {
    e locale = this.bJw;
    if (locale.f != 1) {
      throw new IllegalStateException("state: " + locale.f);
    }
    locale.f = 3;
    paramn.a(locale.bIQ);
  }
  
  public final void c()
    throws IOException
  {
    e locale;
    if (d())
    {
      locale = this.bJw;
      locale.g = 1;
      if (locale.f == 0)
      {
        locale.g = 0;
        com.b.a.a.b.bIs.a(locale.bIf, locale.bIN);
      }
    }
    do
    {
      return;
      locale = this.bJw;
      locale.g = 2;
    } while (locale.f != 0);
    locale.f = 6;
    locale.bIN.bIi.close();
  }
  
  public final void c(aa paramaa)
    throws IOException
  {
    this.bJv.b();
    Object localObject = this.bJv.bJd.bIg.bFT.type();
    y localy = this.bJv.bJd.bIl;
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramaa.b);
    localStringBuilder.append(' ');
    int i;
    if ((!paramaa.k()) && (localObject == Proxy.Type.HTTP))
    {
      i = 1;
      if (i == 0) {
        break label136;
      }
      localStringBuilder.append(paramaa.wC());
    }
    for (;;)
    {
      localStringBuilder.append(' ');
      localStringBuilder.append(m.a(localy));
      localObject = localStringBuilder.toString();
      this.bJw.a(paramaa.bMo, (String)localObject);
      return;
      i = 0;
      break;
      label136:
      localStringBuilder.append(m.d(paramaa.wC()));
    }
  }
  
  public final void d(g paramg)
    throws IOException
  {
    e locale = this.bJw;
    com.b.a.a.b.bIs.a(locale.bIN, paramg);
  }
  
  public final boolean d()
  {
    if ("close".equalsIgnoreCase(this.bJv.bJj.a("Connection"))) {}
    for (;;)
    {
      return false;
      if (!"close".equalsIgnoreCase(this.bJv.zD().a("Connection")))
      {
        if (this.bJw.f == 6) {}
        for (int i = 1; i == 0; i = 0) {
          return true;
        }
      }
    }
  }
  
  public final com.b.a.b h(ac paramac)
    throws IOException
  {
    Object localObject;
    if (!g.a(paramac)) {
      localObject = this.bJw.P(0L);
    }
    for (;;)
    {
      return new k(paramac.bMy, b.m.b((s)localObject));
      if ("chunked".equalsIgnoreCase(paramac.a("Transfer-Encoding")))
      {
        localObject = this.bJw;
        g localg = this.bJv;
        if (((e)localObject).f != 4) {
          throw new IllegalStateException("state: " + ((e)localObject).f);
        }
        ((e)localObject).f = 5;
        localObject = new e.c((e)localObject, localg);
      }
      else
      {
        long l = j.i(paramac);
        if (l != -1L)
        {
          localObject = this.bJw.P(l);
        }
        else
        {
          localObject = this.bJw;
          if (((e)localObject).f != 4) {
            throw new IllegalStateException("state: " + ((e)localObject).f);
          }
          ((e)localObject).f = 5;
          localObject = new e.f((e)localObject, (byte)0);
        }
      }
    }
  }
  
  public final ac.a zG()
    throws IOException
  {
    return this.bJw.zz();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/b/a/a/a/i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */