package a.a.a.c;

import a.a.a.g.b;
import java.io.DataOutputStream;
import java.io.IOException;

public abstract class a
{
  private String cpt;
  private String cqL;
  public final int ctb;
  public final int ctc;
  protected final byte[] ctd;
  
  protected a(int paramInt, byte[] paramArrayOfByte)
  {
    this.ctb = paramInt;
    this.ctc = paramArrayOfByte.length;
    this.ctd = paramArrayOfByte;
  }
  
  protected a(byte[] paramArrayOfByte)
  {
    this.ctb = FY().cqO;
    this.ctc = paramArrayOfByte.length;
    this.ctd = paramArrayOfByte;
  }
  
  public static a b(int paramInt, byte[] paramArrayOfByte)
  {
    g.b localb = g.b.eY(paramInt);
    switch (1.cte[localb.ordinal()])
    {
    default: 
      return new c(paramInt, paramArrayOfByte);
    }
    return new b(paramArrayOfByte);
  }
  
  public abstract g.b FY();
  
  protected abstract CharSequence FZ();
  
  public final String Ga()
  {
    if (this.cqL == null) {
      this.cqL = Gb().toString();
    }
    return this.cqL;
  }
  
  protected abstract CharSequence Gb();
  
  public final void a(DataOutputStream paramDataOutputStream)
    throws IOException
  {
    paramDataOutputStream.writeShort(this.ctb);
    paramDataOutputStream.writeShort(this.ctc);
    paramDataOutputStream.write(this.ctd);
  }
  
  public final String toString()
  {
    if (this.cpt == null) {
      this.cpt = FZ().toString();
    }
    return this.cpt;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/a/a/a/c/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */