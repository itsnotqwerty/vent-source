package c.a.a.d;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.a.b;

public class a
  extends c
{
  private static final b cVJ = org.a.c.fK(a.class.getName());
  protected InputStream cVK = null;
  protected OutputStream cVL = null;
  
  protected a() {}
  
  public a(OutputStream paramOutputStream)
  {
    this.cVL = paramOutputStream;
  }
  
  public final int d(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws d
  {
    if (this.cVK == null) {
      throw new d("Cannot read from null inputStream");
    }
    try
    {
      paramInt1 = this.cVK.read(paramArrayOfByte, paramInt1, paramInt2);
      if (paramInt1 < 0) {
        throw new d((byte)0);
      }
    }
    catch (IOException paramArrayOfByte)
    {
      throw new d(paramArrayOfByte);
    }
    return paramInt1;
  }
  
  public final void h(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws d
  {
    if (this.cVL == null) {
      throw new d("Cannot write to null outputStream");
    }
    try
    {
      this.cVL.write(paramArrayOfByte, paramInt1, paramInt2);
      return;
    }
    catch (IOException paramArrayOfByte)
    {
      throw new d(paramArrayOfByte);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/c/a/a/d/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */