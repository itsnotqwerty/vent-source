package a.a.a.g;

import a.a.a.e;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;

public class c
  extends g
{
  public final e cqS;
  
  public c(e parame)
  {
    this.cqS = parame;
  }
  
  public static c c(DataInputStream paramDataInputStream, byte[] paramArrayOfByte)
    throws IOException
  {
    return new c(e.a(paramDataInputStream, paramArrayOfByte));
  }
  
  public final void b(DataOutputStream paramDataOutputStream)
    throws IOException
  {
    this.cqS.writeToStream(paramDataOutputStream);
  }
  
  public String toString()
  {
    return this.cqS + ".";
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/a/a/a/g/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */