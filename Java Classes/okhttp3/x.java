package okhttp3;

import d.d;
import java.io.IOException;
import javax.annotation.Nullable;
import okhttp3.internal.c;

public abstract class x
{
  public static x a(@Nullable s params, final byte[] paramArrayOfByte)
  {
    final int i = paramArrayOfByte.length;
    if (paramArrayOfByte == null) {
      throw new NullPointerException("content == null");
    }
    c.g(paramArrayOfByte.length, i);
    new x()
    {
      @Nullable
      public final s LX()
      {
        return x.this;
      }
      
      public final void a(d paramAnonymousd)
        throws IOException
      {
        paramAnonymousd.j(paramArrayOfByte, this.val$offset, i);
      }
      
      public final long contentLength()
      {
        return i;
      }
    };
  }
  
  @Nullable
  public abstract s LX();
  
  public abstract void a(d paramd)
    throws IOException;
  
  public long contentLength()
    throws IOException
  {
    return -1L;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/x.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */