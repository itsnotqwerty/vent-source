package a.a.a.g;

import a.a.a.e;
import a.a.a.k.b;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class k
  extends g
{
  public final e ctP;
  private final byte[] ctQ;
  public final k.b[] ctR;
  
  public k(e parame, k.b[] paramArrayOfb)
  {
    this.ctP = parame;
    this.ctR = paramArrayOfb;
    this.ctQ = a(paramArrayOfb);
  }
  
  private static void a(byte[] paramArrayOfByte, DataOutputStream paramDataOutputStream)
    throws IOException
  {
    int k = 0;
    int j = 0;
    int i = 0;
    while (j < 32)
    {
      if (paramArrayOfByte[j] != 0) {
        i = j + 1;
      }
      j += 1;
    }
    paramDataOutputStream.writeByte(i);
    j = k;
    while (j < i)
    {
      paramDataOutputStream.writeByte(paramArrayOfByte[j]);
      j += 1;
    }
  }
  
  static byte[] a(k.b[] paramArrayOfb)
  {
    Object localObject = new ArrayList();
    int j = paramArrayOfb.length;
    int i = 0;
    while (i < j)
    {
      ((List)localObject).add(Integer.valueOf(paramArrayOfb[i].value));
      i += 1;
    }
    Collections.sort((List)localObject);
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    DataOutputStream localDataOutputStream = new DataOutputStream(localByteArrayOutputStream);
    try
    {
      Iterator localIterator = ((List)localObject).iterator();
      paramArrayOfb = null;
      for (j = -1; localIterator.hasNext(); j = i)
      {
        Integer localInteger = (Integer)localIterator.next();
        if (j != -1)
        {
          localObject = paramArrayOfb;
          i = j;
          if (localInteger.intValue() >> 8 == j) {}
        }
        else
        {
          if (j != -1) {
            a(paramArrayOfb, localDataOutputStream);
          }
          i = localInteger.intValue() >> 8;
          localDataOutputStream.writeByte(i);
          localObject = new byte[32];
        }
        j = (localInteger.intValue() >> 3) % 32;
        localObject[j] = ((byte)(128 >> localInteger.intValue() % 8 | localObject[j]));
        paramArrayOfb = (k.b[])localObject;
      }
      if (j == -1) {
        break label210;
      }
    }
    catch (IOException paramArrayOfb)
    {
      throw new RuntimeException(paramArrayOfb);
    }
    a(paramArrayOfb, localDataOutputStream);
    label210:
    return localByteArrayOutputStream.toByteArray();
  }
  
  public static k.b[] w(byte[] paramArrayOfByte)
    throws IOException
  {
    DataInputStream localDataInputStream = new DataInputStream(new ByteArrayInputStream(paramArrayOfByte));
    ArrayList localArrayList = new ArrayList();
    int i = 0;
    while (paramArrayOfByte.length > i)
    {
      int m = localDataInputStream.readUnsignedByte();
      int n = localDataInputStream.readUnsignedByte();
      int j = 0;
      while (j < n)
      {
        int i1 = localDataInputStream.readUnsignedByte();
        int k = 0;
        while (k < 8)
        {
          if ((i1 >> k & 0x1) > 0) {
            localArrayList.add(k.b.fa((m << 8) + j * 8 + (7 - k)));
          }
          k += 1;
        }
        j += 1;
      }
      i += n + 2;
    }
    return (k.b[])localArrayList.toArray(new k.b[localArrayList.size()]);
  }
  
  public final void b(DataOutputStream paramDataOutputStream)
    throws IOException
  {
    this.ctP.writeToStream(paramDataOutputStream);
    paramDataOutputStream.write(this.ctQ);
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder().append(this.ctP).append('.');
    k.b[] arrayOfb = this.ctR;
    int j = arrayOfb.length;
    int i = 0;
    while (i < j)
    {
      k.b localb = arrayOfb[i];
      localStringBuilder.append(' ').append(localb);
      i += 1;
    }
    return localStringBuilder.toString();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/a/a/a/g/k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */