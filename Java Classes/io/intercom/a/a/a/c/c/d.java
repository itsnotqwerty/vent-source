package io.intercom.a.a.a.c.c;

import android.util.Log;
import io.intercom.a.a.a.c.a.b;
import io.intercom.a.a.a.c.a.b.a;
import io.intercom.a.a.a.g;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;

public final class d
  implements n<File, ByteBuffer>
{
  private static final class a
    implements b<ByteBuffer>
  {
    private final File file;
    
    a(File paramFile)
    {
      this.file = paramFile;
    }
    
    public final io.intercom.a.a.a.c.a HT()
    {
      return io.intercom.a.a.a.c.a.cHC;
    }
    
    public final Class<ByteBuffer> HU()
    {
      return ByteBuffer.class;
    }
    
    public final void a(g paramg, b.a<? super ByteBuffer> parama)
    {
      try
      {
        paramg = io.intercom.a.a.a.i.a.o(this.file);
        parama.as(paramg);
        return;
      }
      catch (IOException paramg)
      {
        if (Log.isLoggable("ByteBufferFileLoader", 3)) {
          Log.d("ByteBufferFileLoader", "Failed to obtain ByteBuffer for file", paramg);
        }
        parama.i(paramg);
      }
    }
    
    public final void cancel() {}
    
    public final void cleanup() {}
  }
  
  public static final class b
    implements o<File, ByteBuffer>
  {
    public final n<File, ByteBuffer> a(r paramr)
    {
      return new d();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/c/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */