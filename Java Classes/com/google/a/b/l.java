package com.google.a.b;

import com.google.a.b.a.n;
import com.google.a.d.a;
import com.google.a.d.c;
import com.google.a.d.d;
import com.google.a.k;
import com.google.a.m;
import com.google.a.o;
import com.google.a.s;
import com.google.a.u;
import java.io.EOFException;
import java.io.IOException;

public final class l
{
  public static void a(k paramk, c paramc)
    throws IOException
  {
    n.bjH.a(paramc, paramk);
  }
  
  public static k c(a parama)
    throws o
  {
    int i = 1;
    try
    {
      parama.vv();
      i = 0;
      parama = (k)n.bjH.a(parama);
      return parama;
    }
    catch (EOFException parama)
    {
      if (i != 0) {
        return m.bgT;
      }
      throw new s(parama);
    }
    catch (d parama)
    {
      throw new s(parama);
    }
    catch (IOException parama)
    {
      throw new com.google.a.l(parama);
    }
    catch (NumberFormatException parama)
    {
      throw new s(parama);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/a/b/l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */