package d;

import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.ReadableByteChannel;

public abstract interface e
  extends s, ReadableByteChannel
{
  public abstract byte[] KA()
    throws IOException;
  
  public abstract long KB()
    throws IOException;
  
  public abstract boolean Kr()
    throws IOException;
  
  public abstract InputStream Ks();
  
  public abstract short Ku()
    throws IOException;
  
  public abstract int Kv()
    throws IOException;
  
  public abstract long Kw()
    throws IOException;
  
  public abstract long Kx()
    throws IOException;
  
  public abstract String Kz()
    throws IOException;
  
  public abstract c Nj();
  
  public abstract void Z(long paramLong)
    throws IOException;
  
  public abstract String ae(long paramLong)
    throws IOException;
  
  public abstract byte[] ag(long paramLong)
    throws IOException;
  
  public abstract void ah(long paramLong)
    throws IOException;
  
  public abstract f az(long paramLong)
    throws IOException;
  
  public abstract byte readByte()
    throws IOException;
  
  public abstract void readFully(byte[] paramArrayOfByte)
    throws IOException;
  
  public abstract int readInt()
    throws IOException;
  
  public abstract short readShort()
    throws IOException;
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/d/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */