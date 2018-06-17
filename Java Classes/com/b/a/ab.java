package com.b.a;

import b.d;
import com.b.a.a.i;
import java.io.IOException;

public abstract class ab
{
  public static ab a(w paramw, final byte[] paramArrayOfByte)
  {
    final int i = paramArrayOfByte.length;
    if (paramArrayOfByte == null) {
      throw new NullPointerException("content == null");
    }
    i.d(paramArrayOfByte.length, i);
    new ab()
    {
      public final long a()
      {
        return i;
      }
      
      public final void a(d paramAnonymousd)
        throws IOException
      {
        paramAnonymousd.f(paramArrayOfByte, this.d, i);
      }
      
      public final w wt()
      {
        return this.bMv;
      }
    };
  }
  
  public long a()
    throws IOException
  {
    return -1L;
  }
  
  public abstract void a(d paramd)
    throws IOException;
  
  public abstract w wt();
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/b/a/ab.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */