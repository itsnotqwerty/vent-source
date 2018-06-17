package b;

import java.io.Serializable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

public final class f
  implements Serializable, Comparable<f>
{
  static final char[] a = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };
  public static final f bKp = L(new byte[0]);
  public final byte[] bMw;
  transient int d;
  transient String e;
  
  f(byte[] paramArrayOfByte)
  {
    this.bMw = paramArrayOfByte;
  }
  
  public static f L(byte... paramVarArgs)
  {
    if (paramVarArgs == null) {
      throw new IllegalArgumentException("data == null");
    }
    return new f((byte[])paramVarArgs.clone());
  }
  
  public static f fn(String paramString)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("s == null");
    }
    f localf = new f(paramString.getBytes(u.cUR));
    localf.e = paramString;
    return localf;
  }
  
  private f fo(String paramString)
  {
    try
    {
      paramString = L(MessageDigest.getInstance(paramString).digest(this.bMw));
      return paramString;
    }
    catch (NoSuchAlgorithmException paramString)
    {
      throw new AssertionError(paramString);
    }
  }
  
  public static f fp(String paramString)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("base64 == null");
    }
    paramString = b.a(paramString);
    if (paramString != null) {
      return new f(paramString);
    }
    return null;
  }
  
  public final f Lj()
  {
    int i = 0;
    for (;;)
    {
      Object localObject = this;
      if (i < this.bMw.length)
      {
        int j = this.bMw[i];
        if ((j >= 65) && (j <= 90))
        {
          localObject = (byte[])this.bMw.clone();
          localObject[i] = ((byte)(j + 32));
          i += 1;
          while (i < localObject.length)
          {
            j = localObject[i];
            if ((j >= 65) && (j <= 90)) {
              localObject[i] = ((byte)(j + 32));
            }
            i += 1;
          }
          localObject = new f((byte[])localObject);
        }
      }
      else
      {
        return (f)localObject;
      }
      i += 1;
    }
  }
  
  public final String a()
  {
    String str = this.e;
    if (str != null) {
      return str;
    }
    str = new String(this.bMw, u.cUR);
    this.e = str;
    return str;
  }
  
  public final String b()
  {
    return b.a(this.bMw);
  }
  
  public final String d()
  {
    char[] arrayOfChar = new char[this.bMw.length * 2];
    byte[] arrayOfByte = this.bMw;
    int k = arrayOfByte.length;
    int i = 0;
    int m;
    for (int j = 0; i < k; j = m + 1)
    {
      int n = arrayOfByte[i];
      m = j + 1;
      arrayOfChar[j] = a[(n >> 4 & 0xF)];
      arrayOfChar[m] = a[(n & 0xF)];
      i += 1;
    }
    return new String(arrayOfChar);
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if (((paramObject instanceof f)) && (((f)paramObject).bMw.length == this.bMw.length))
    {
      paramObject = (f)paramObject;
      byte[] arrayOfByte = this.bMw;
      int i = this.bMw.length;
      if ((((f)paramObject).bMw.length - i >= 0) && (arrayOfByte.length - i >= 0) && (u.a(((f)paramObject).bMw, arrayOfByte, i))) {}
      for (i = 1; i != 0; i = 0) {
        return true;
      }
    }
    return false;
  }
  
  public final byte[] g()
  {
    return (byte[])this.bMw.clone();
  }
  
  public final int hashCode()
  {
    int i = this.d;
    if (i != 0) {
      return i;
    }
    i = Arrays.hashCode(this.bMw);
    this.d = i;
    return i;
  }
  
  public final String toString()
  {
    if (this.bMw.length == 0) {
      return "ByteString[size=0]";
    }
    if (this.bMw.length <= 16) {
      return String.format("ByteString[size=%s data=%s]", new Object[] { Integer.valueOf(this.bMw.length), d() });
    }
    return String.format("ByteString[size=%s md5=%s]", new Object[] { Integer.valueOf(this.bMw.length), fo("MD5").d() });
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/b/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */