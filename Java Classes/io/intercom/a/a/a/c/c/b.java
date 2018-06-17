package io.intercom.a.a.a.c.c;

import io.intercom.a.a.a.c.a;
import io.intercom.a.a.a.g;
import java.io.InputStream;
import java.nio.ByteBuffer;

public final class b<Data>
  implements n<byte[], Data>
{
  private final b<Data> cMv;
  
  public b(b<Data> paramb)
  {
    this.cMv = paramb;
  }
  
  public static final class a
    implements o<byte[], ByteBuffer>
  {
    public final n<byte[], ByteBuffer> a(r paramr)
    {
      new b(new b.b()
      {
        public final Class<ByteBuffer> HU()
        {
          return ByteBuffer.class;
        }
      });
    }
  }
  
  public static abstract interface b<Data>
  {
    public abstract Data C(byte[] paramArrayOfByte);
    
    public abstract Class<Data> HU();
  }
  
  private static final class c<Data>
    implements io.intercom.a.a.a.c.a.b<Data>
  {
    private final b.b<Data> cMv;
    private final byte[] cMx;
    
    c(byte[] paramArrayOfByte, b.b<Data> paramb)
    {
      this.cMx = paramArrayOfByte;
      this.cMv = paramb;
    }
    
    public final a HT()
    {
      return a.cHC;
    }
    
    public final Class<Data> HU()
    {
      return this.cMv.HU();
    }
    
    public final void a(g paramg, io.intercom.a.a.a.c.a.b.a<? super Data> parama)
    {
      parama.as(this.cMv.C(this.cMx));
    }
    
    public final void cancel() {}
    
    public final void cleanup() {}
  }
  
  public static final class d
    implements o<byte[], InputStream>
  {
    public final n<byte[], InputStream> a(r paramr)
    {
      new b(new b.b()
      {
        public final Class<InputStream> HU()
        {
          return InputStream.class;
        }
      });
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/c/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */