package a.a.a.g;

import a.a.a.e;
import java.io.DataOutputStream;
import java.io.IOException;

public final class r
  extends g
{
  public final e cuj;
  public final e cuk;
  public final long cul;
  public final int cum;
  public final int cun;
  public final int cuo;
  public final long cup;
  
  public r(e parame1, e parame2, long paramLong1, int paramInt1, int paramInt2, int paramInt3, long paramLong2)
  {
    this.cuj = parame1;
    this.cuk = parame2;
    this.cul = paramLong1;
    this.cum = paramInt1;
    this.cun = paramInt2;
    this.cuo = paramInt3;
    this.cup = paramLong2;
  }
  
  public final void b(DataOutputStream paramDataOutputStream)
    throws IOException
  {
    this.cuj.writeToStream(paramDataOutputStream);
    this.cuk.writeToStream(paramDataOutputStream);
    paramDataOutputStream.writeInt((int)this.cul);
    paramDataOutputStream.writeInt(this.cum);
    paramDataOutputStream.writeInt(this.cun);
    paramDataOutputStream.writeInt(this.cuo);
    paramDataOutputStream.writeInt((int)this.cup);
  }
  
  public final String toString()
  {
    return this.cuj + ". " + this.cuk + ". " + this.cul + ' ' + this.cum + ' ' + this.cun + ' ' + this.cuo + ' ' + this.cup;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/a/a/a/g/r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */