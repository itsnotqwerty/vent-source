package a.a.a.g;

import a.a.a.e;
import java.io.DataOutputStream;
import java.io.IOException;

public final class s
  extends g
{
  public final e cqS;
  public final int port;
  public final int priority;
  public final int weight;
  
  public s(int paramInt1, int paramInt2, int paramInt3, e parame)
  {
    this.priority = paramInt1;
    this.weight = paramInt2;
    this.port = paramInt3;
    this.cqS = parame;
  }
  
  public final void b(DataOutputStream paramDataOutputStream)
    throws IOException
  {
    paramDataOutputStream.writeShort(this.priority);
    paramDataOutputStream.writeShort(this.weight);
    paramDataOutputStream.writeShort(this.port);
    this.cqS.writeToStream(paramDataOutputStream);
  }
  
  public final String toString()
  {
    return this.priority + " " + this.weight + " " + this.port + " " + this.cqS + ".";
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/a/a/a/g/s.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */