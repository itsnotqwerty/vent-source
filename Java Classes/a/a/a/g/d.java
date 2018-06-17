package a.a.a.g;

import a.a.a.f.a;
import a.a.a.f.b;
import java.io.DataInputStream;
import java.io.IOException;

public final class d
  extends f
{
  private d(int paramInt, f.b paramb, f.a parama, byte[] paramArrayOfByte)
  {
    super(paramInt, paramb, parama, paramArrayOfByte);
  }
  
  public static d a(DataInputStream paramDataInputStream, int paramInt)
    throws IOException
  {
    paramDataInputStream = f.c(paramDataInputStream, paramInt);
    return new d(paramDataInputStream.ctJ, paramDataInputStream.ctH, paramDataInputStream.ctK, paramDataInputStream.ctM);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/a/a/a/g/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */