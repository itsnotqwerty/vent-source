package io.intercom.a.b.a.b;

import io.intercom.a.b.a.b.a.n;
import io.intercom.a.b.a.d.a;
import io.intercom.a.b.a.d.c;
import io.intercom.a.b.a.d.d;
import io.intercom.a.b.a.i;
import io.intercom.a.b.a.k;
import io.intercom.a.b.a.m;
import io.intercom.a.b.a.p;
import io.intercom.a.b.a.r;
import java.io.EOFException;
import java.io.IOException;
import java.io.Writer;

public final class j
{
  public static void a(i parami, c paramc)
    throws IOException
  {
    n.cTq.a(paramc, parami);
  }
  
  public static Writer b(Appendable paramAppendable)
  {
    if ((paramAppendable instanceof Writer)) {
      return (Writer)paramAppendable;
    }
    return new a(paramAppendable);
  }
  
  public static i c(a parama)
    throws m
  {
    int i = 1;
    try
    {
      parama.Kh();
      i = 0;
      parama = (i)n.cTq.a(parama);
      return parama;
    }
    catch (EOFException parama)
    {
      if (i != 0) {
        return k.cRt;
      }
      throw new p(parama);
    }
    catch (d parama)
    {
      throw new p(parama);
    }
    catch (IOException parama)
    {
      throw new io.intercom.a.b.a.j(parama);
    }
    catch (NumberFormatException parama)
    {
      throw new p(parama);
    }
  }
  
  private static final class a
    extends Writer
  {
    private final Appendable cKO;
    private final a cRV = new a();
    
    a(Appendable paramAppendable)
    {
      this.cKO = paramAppendable;
    }
    
    public final void close() {}
    
    public final void flush() {}
    
    public final void write(int paramInt)
      throws IOException
    {
      this.cKO.append((char)paramInt);
    }
    
    public final void write(char[] paramArrayOfChar, int paramInt1, int paramInt2)
      throws IOException
    {
      this.cRV.chars = paramArrayOfChar;
      this.cKO.append(this.cRV, paramInt1, paramInt1 + paramInt2);
    }
    
    static final class a
      implements CharSequence
    {
      char[] chars;
      
      public final char charAt(int paramInt)
      {
        return this.chars[paramInt];
      }
      
      public final int length()
      {
        return this.chars.length;
      }
      
      public final CharSequence subSequence(int paramInt1, int paramInt2)
      {
        return new String(this.chars, paramInt1, paramInt2 - paramInt1);
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/b/a/b/j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */