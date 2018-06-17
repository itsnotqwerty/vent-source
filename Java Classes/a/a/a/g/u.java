package a.a.a.g;

import java.io.DataOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class u
  extends g
{
  private final byte[] cuv;
  
  public u(byte[] paramArrayOfByte)
  {
    this.cuv = paramArrayOfByte;
  }
  
  private String getText()
  {
    int j = 0;
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (i < this.cuv.length)
    {
      int k = this.cuv[i] & 0xFF;
      i += 1;
      localArrayList.add(Arrays.copyOfRange(this.cuv, i, i + k));
      i += k;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    i = j;
    while (i < localArrayList.size() - 1)
    {
      localStringBuilder.append(new String((byte[])localArrayList.get(i))).append(" / ");
      i += 1;
    }
    localStringBuilder.append(new String((byte[])localArrayList.get(i)));
    return localStringBuilder.toString();
  }
  
  public final void b(DataOutputStream paramDataOutputStream)
    throws IOException
  {
    paramDataOutputStream.write(this.cuv);
  }
  
  public final String toString()
  {
    return "\"" + getText() + "\"";
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/a/a/a/g/u.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */