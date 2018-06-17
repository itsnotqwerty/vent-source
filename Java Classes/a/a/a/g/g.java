package a.a.a.g;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.Arrays;

public abstract class g
{
  private transient Integer cpv;
  public byte[] sY;
  
  public final void Gl()
  {
    if (this.sY != null) {
      return;
    }
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    DataOutputStream localDataOutputStream = new DataOutputStream(localByteArrayOutputStream);
    try
    {
      b(localDataOutputStream);
      this.sY = localByteArrayOutputStream.toByteArray();
      return;
    }
    catch (IOException localIOException)
    {
      throw new AssertionError(localIOException);
    }
  }
  
  protected abstract void b(DataOutputStream paramDataOutputStream)
    throws IOException;
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof g)) {
      return false;
    }
    if (paramObject == this) {
      return true;
    }
    paramObject = (g)paramObject;
    ((g)paramObject).Gl();
    Gl();
    return Arrays.equals(this.sY, ((g)paramObject).sY);
  }
  
  public final int hashCode()
  {
    if (this.cpv == null)
    {
      Gl();
      this.cpv = Integer.valueOf(this.sY.hashCode());
    }
    return this.cpv.intValue();
  }
  
  public final int length()
  {
    Gl();
    return this.sY.length;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/a/a/a/g/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */