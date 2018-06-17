package a.a.a.g;

import a.a.a.e;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

public class i
  extends g
{
  public final e cqS;
  public final int priority;
  
  private i(int paramInt, e parame)
  {
    this.priority = paramInt;
    this.cqS = parame;
  }
  
  public static i d(DataInputStream paramDataInputStream, byte[] paramArrayOfByte)
    throws IOException
  {
    return new i(paramDataInputStream.readUnsignedShort(), e.a(paramDataInputStream, paramArrayOfByte));
  }
  
  public final void b(DataOutputStream paramDataOutputStream)
    throws IOException
  {
    paramDataOutputStream.writeShort(this.priority);
    this.cqS.writeToStream(paramDataOutputStream);
  }
  
  public String toString()
  {
    return this.priority + " " + this.cqS + '.';
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/a/a/a/g/i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */