package com.b.a.a.a;

import b.f;
import com.b.a.a.b.a;
import com.b.a.a.b.d;
import com.b.a.a.b.o;
import com.b.a.a.b.p;
import com.b.a.a.i;
import com.b.a.aa;
import com.b.a.ac;
import com.b.a.ac.a;
import com.b.a.ac.a.a;
import com.b.a.b;
import com.b.a.t.a;
import com.b.a.x;
import com.b.a.y;
import com.b.a.z;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.TimeUnit;

public final class r
  implements t
{
  private static final List<f> a = i.c(new f[] { f.fn("connection"), f.fn("host"), f.fn("keep-alive"), f.fn("proxy-connection"), f.fn("transfer-encoding") });
  private static final List<f> b = i.c(new f[] { f.fn("connection"), f.fn("host"), f.fn("keep-alive"), f.fn("proxy-connection"), f.fn("te"), f.fn("transfer-encoding"), f.fn("encoding"), f.fn("upgrade") });
  private final g bGg;
  private final com.b.a.a.b.n bJN;
  private p bJO;
  
  public r(g paramg, com.b.a.a.b.n paramn)
  {
    this.bGg = paramg;
    this.bJN = paramn;
  }
  
  public static ac.a a(aa paramaa, List<d> paramList, y paramy)
    throws IOException
  {
    t.a locala = new t.a();
    locala.O(j.d, paramy.toString());
    Iterator localIterator = paramList.iterator();
    paramList = null;
    Object localObject3 = null;
    Object localObject2 = null;
    while (localIterator.hasNext())
    {
      Object localObject1 = (d)localIterator.next();
      f localf = ((d)localObject1).bKv;
      String[] arrayOfString = ((d)localObject1).bKw.a().split("0x00");
      int j = arrayOfString.length;
      int i = 0;
      localObject1 = paramList;
      if (i < j)
      {
        paramList = arrayOfString[i];
        Object localObject5;
        Object localObject4;
        if (localf.equals(d.bKq))
        {
          localObject5 = paramList;
          localObject4 = localObject3;
        }
        for (;;)
        {
          if (!a(paramy, localf)) {
            locala.M(localf.a(), paramList);
          }
          i += 1;
          localObject3 = localObject4;
          localObject2 = localObject5;
          break;
          if (localf.equals(d.bKt))
          {
            localObject4 = paramList;
            localObject5 = localObject2;
          }
          else
          {
            localObject4 = localObject3;
            localObject5 = localObject2;
            if (localf.equals(d.bKr))
            {
              localObject1 = paramList;
              localObject4 = localObject3;
              localObject5 = localObject2;
            }
          }
        }
      }
      paramList = (List<d>)localObject1;
    }
    if ((localObject2 == null) || (localObject3 == null) || (paramList == null)) {
      throw new ProtocolException("Expected ':path',':host', ':scheme' headers are not set");
    }
    paramList = new ac.a();
    paramList.c = 200;
    paramList.d = "OK";
    paramList.bIK = paramaa;
    paramList.bMk = paramy;
    return paramList.e(locala.Ac());
  }
  
  private static boolean a(y paramy, f paramf)
  {
    if (paramy == y.bJL) {
      return a.contains(paramf);
    }
    if (paramy == y.bMl) {
      return b.contains(paramf);
    }
    throw new AssertionError(paramy);
  }
  
  public final b.r a(aa paramaa, long paramLong)
    throws IOException
  {
    return this.bJO.zV();
  }
  
  public final void a()
    throws IOException
  {
    this.bJO.zV().close();
  }
  
  public final void a(n paramn)
    throws IOException
  {
    paramn.a(this.bJO.zV());
  }
  
  public final void c() {}
  
  public final void c(final aa paramaa)
    throws IOException
  {
    if (this.bJO != null) {}
    final Object localObject1;
    label230:
    label414:
    label511:
    label513:
    do
    {
      return;
      this.bGg.b();
      boolean bool = this.bGg.c();
      Object localObject2 = m.a(this.bGg.bJd.bIl);
      localObject1 = this.bJN;
      y localy = this.bJN.bJR;
      com.b.a.t localt = paramaa.bMo;
      ArrayList localArrayList = new ArrayList(localt.a.length / 2 + 10);
      localArrayList.add(new d(d.bKp, paramaa.b));
      localArrayList.add(new d(d.bKq, m.d(paramaa.wC())));
      Object localObject3 = g.d(paramaa.wC());
      int i;
      String str;
      if (y.bJL == localy)
      {
        localArrayList.add(new d(d.bKu, (String)localObject2));
        localArrayList.add(new d(d.bKt, (String)localObject3));
        localArrayList.add(new d(d.bKr, paramaa.wC().getProtocol()));
        localObject2 = new LinkedHashSet();
        int k = localt.a.length / 2;
        i = 0;
        if (i >= k) {
          break label513;
        }
        localObject3 = f.fn(localt.dV(i).toLowerCase(Locale.US));
        str = localt.dW(i);
        if ((!a(localy, (f)localObject3)) && (!((f)localObject3).equals(d.bKp)) && (!((f)localObject3).equals(d.bKq)) && (!((f)localObject3).equals(d.bKr)) && (!((f)localObject3).equals(d.bKs)) && (!((f)localObject3).equals(d.bKt)) && (!((f)localObject3).equals(d.bKu)))
        {
          if (!((Set)localObject2).add(localObject3)) {
            break label414;
          }
          localArrayList.add(new d((f)localObject3, str));
        }
      }
      for (;;)
      {
        i += 1;
        break label230;
        if (y.bMl == localy)
        {
          localArrayList.add(new d(d.bKs, (String)localObject3));
          break;
        }
        throw new AssertionError();
        int j = 0;
        for (;;)
        {
          if (j >= localArrayList.size()) {
            break label511;
          }
          if (((d)localArrayList.get(j)).bKv.equals(localObject3))
          {
            localArrayList.set(j, new d((f)localObject3, ((d)localArrayList.get(j)).bKw.a() + '\000' + str));
            break;
          }
          j += 1;
        }
      }
      this.bJO = ((com.b.a.a.b.n)localObject1).b(localArrayList, bool);
      this.bJO.bLE.c(this.bGg.bJc.z, TimeUnit.MILLISECONDS);
      localObject1 = paramaa.bMr;
    } while (localObject1 == null);
    this.bJO.bLB = new o()
    {
      public final boolean a(p paramAnonymousp)
      {
        for (;;)
        {
          try
          {
            Object localObject = r.a(paramaa, paramAnonymousp.bzS, r.a(r.this).bJR).xb();
            paramAnonymousp = paramAnonymousp.bLC;
            if ((!r.b(r.this).brj) || (!"gzip".equalsIgnoreCase(((ac)localObject).bMy.a("Content-Encoding")))) {
              continue;
            }
            paramAnonymousp = b.m.b(new b.j(paramAnonymousp));
            localObject = ((ac)localObject).Aq();
            ((ac.a)localObject).bMz = new ac.a.a((ac.a)localObject, paramAnonymousp);
            paramAnonymousp = ((ac.a)localObject).xb();
            bool = localObject1.a(paramAnonymousp);
          }
          catch (IOException paramAnonymousp)
          {
            boolean bool = true;
            continue;
          }
          finally {}
          return bool;
          paramAnonymousp = b.m.b(paramAnonymousp);
        }
      }
      
      public final boolean zI()
      {
        return true;
      }
    };
  }
  
  public final void d(g paramg)
    throws IOException
  {
    if (this.bJO != null) {
      this.bJO.a(a.bKd);
    }
  }
  
  public final boolean d()
  {
    return true;
  }
  
  public final b h(ac paramac)
    throws IOException
  {
    return new k(paramac.bMy, b.m.b(this.bJO.bLC));
  }
  
  public final ac.a zG()
    throws IOException
  {
    List localList = this.bJO.zU();
    y localy = this.bJN.bJR;
    Object localObject2 = null;
    Object localObject1 = "HTTP/1.1";
    t.a locala = new t.a();
    locala.O(j.d, localy.toString());
    int n = localList.size();
    int i = 0;
    while (i < n)
    {
      f localf = ((d)localList.get(i)).bKv;
      String str2 = ((d)localList.get(i)).bKw.a();
      int j = 0;
      if (j < str2.length())
      {
        int m = str2.indexOf(0, j);
        int k = m;
        if (m == -1) {
          k = str2.length();
        }
        String str1 = str2.substring(j, k);
        Object localObject4;
        Object localObject3;
        if (localf.equals(d.bKo))
        {
          localObject4 = str1;
          localObject3 = localObject1;
        }
        for (;;)
        {
          j = k + 1;
          localObject1 = localObject3;
          localObject2 = localObject4;
          break;
          if (localf.equals(d.bKu))
          {
            localObject3 = str1;
            localObject4 = localObject2;
          }
          else
          {
            localObject3 = localObject1;
            localObject4 = localObject2;
            if (!a(localy, localf))
            {
              locala.M(localf.a(), str1);
              localObject3 = localObject1;
              localObject4 = localObject2;
            }
          }
        }
      }
      i += 1;
    }
    if (localObject2 == null) {
      throw new ProtocolException("Expected ':status' header not present");
    }
    localObject1 = s.dG((String)localObject1 + " " + (String)localObject2);
    localObject2 = new ac.a();
    ((ac.a)localObject2).bMk = localy;
    ((ac.a)localObject2).c = ((s)localObject1).b;
    ((ac.a)localObject2).d = ((s)localObject1).c;
    return ((ac.a)localObject2).e(locala.Ac());
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/b/a/a/a/r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */