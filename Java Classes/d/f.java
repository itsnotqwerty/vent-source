package d;

import java.io.Serializable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import javax.annotation.Nullable;

public class f
  implements Serializable, Comparable<f>
{
  static final char[] HEX_DIGITS = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102 };
  public static final f dcb = R(new byte[0]);
  transient int bkc;
  transient String cTZ;
  final byte[] data;
  
  f(byte[] paramArrayOfByte)
  {
    this.data = paramArrayOfByte;
  }
  
  public static f R(byte... paramVarArgs)
  {
    if (paramVarArgs == null) {
      throw new IllegalArgumentException("data == null");
    }
    return new f((byte[])paramVarArgs.clone());
  }
  
  private static int decodeHexDigit(char paramChar)
  {
    if ((paramChar >= '0') && (paramChar <= '9')) {
      return paramChar - '0';
    }
    if ((paramChar >= 'a') && (paramChar <= 'f')) {
      return paramChar - 'a' + 10;
    }
    if ((paramChar >= 'A') && (paramChar <= 'F')) {
      return paramChar - 'A' + 10;
    }
    throw new IllegalArgumentException("Unexpected hex digit: " + paramChar);
  }
  
  public static f fG(String paramString)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("s == null");
    }
    f localf = new f(paramString.getBytes(u.UTF_8));
    localf.cTZ = paramString;
    return localf;
  }
  
  private f fH(String paramString)
  {
    try
    {
      paramString = R(MessageDigest.getInstance(paramString).digest(this.data));
      return paramString;
    }
    catch (NoSuchAlgorithmException paramString)
    {
      throw new AssertionError(paramString);
    }
  }
  
  @Nullable
  public static f fI(String paramString)
  {
    if (paramString == null) {
      throw new IllegalArgumentException("base64 == null");
    }
    paramString = b.decode(paramString);
    if (paramString != null) {
      return new f(paramString);
    }
    return null;
  }
  
  public static f fJ(String paramString)
  {
    if (paramString.length() % 2 != 0) {
      throw new IllegalArgumentException("Unexpected hex string: " + paramString);
    }
    byte[] arrayOfByte = new byte[paramString.length() / 2];
    int i = 0;
    while (i < arrayOfByte.length)
    {
      arrayOfByte[i] = ((byte)((decodeHexDigit(paramString.charAt(i * 2)) << 4) + decodeHexDigit(paramString.charAt(i * 2 + 1))));
      i += 1;
    }
    return R(arrayOfByte);
  }
  
  public String KE()
  {
    String str = this.cTZ;
    if (str != null) {
      return str;
    }
    str = new String(this.data, u.UTF_8);
    this.cTZ = str;
    return str;
  }
  
  public String KF()
  {
    return b.E(this.data);
  }
  
  public String KJ()
  {
    char[] arrayOfChar = new char[this.data.length * 2];
    byte[] arrayOfByte = this.data;
    int k = arrayOfByte.length;
    int i = 0;
    int m;
    for (int j = 0; i < k; j = m + 1)
    {
      int n = arrayOfByte[i];
      m = j + 1;
      arrayOfChar[j] = HEX_DIGITS[(n >> 4 & 0xF)];
      arrayOfChar[m] = HEX_DIGITS[(n & 0xF)];
      i += 1;
    }
    return new String(arrayOfChar);
  }
  
  public f Nl()
  {
    return fH("MD5");
  }
  
  public f Nm()
  {
    return fH("SHA-1");
  }
  
  public f Nn()
  {
    return fH("SHA-256");
  }
  
  public f No()
  {
    int i = 0;
    for (;;)
    {
      Object localObject = this;
      if (i < this.data.length)
      {
        int j = this.data[i];
        if ((j >= 65) && (j <= 90))
        {
          localObject = (byte[])this.data.clone();
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
  
  void a(c paramc)
  {
    paramc.i(this.data, 0, this.data.length);
  }
  
  public boolean a(int paramInt1, f paramf, int paramInt2, int paramInt3)
  {
    return paramf.a(0, this.data, 0, paramInt3);
  }
  
  public boolean a(int paramInt1, byte[] paramArrayOfByte, int paramInt2, int paramInt3)
  {
    return (paramInt1 >= 0) && (paramInt1 <= this.data.length - paramInt3) && (paramInt2 >= 0) && (paramInt2 <= paramArrayOfByte.length - paramInt3) && (u.a(this.data, paramInt1, paramArrayOfByte, paramInt2, paramInt3));
  }
  
  public f aW(int paramInt1, int paramInt2)
  {
    if (paramInt1 < 0) {
      throw new IllegalArgumentException("beginIndex < 0");
    }
    if (paramInt2 > this.data.length) {
      throw new IllegalArgumentException("endIndex > length(" + this.data.length + ")");
    }
    int i = paramInt2 - paramInt1;
    if (i < 0) {
      throw new IllegalArgumentException("endIndex < beginIndex");
    }
    if ((paramInt1 == 0) && (paramInt2 == this.data.length)) {
      return this;
    }
    byte[] arrayOfByte = new byte[i];
    System.arraycopy(this.data, paramInt1, arrayOfByte, 0, i);
    return new f(arrayOfByte);
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    return ((paramObject instanceof f)) && (((f)paramObject).size() == this.data.length) && (((f)paramObject).a(0, this.data, 0, this.data.length));
  }
  
  public byte getByte(int paramInt)
  {
    return this.data[paramInt];
  }
  
  public int hashCode()
  {
    int i = this.bkc;
    if (i != 0) {
      return i;
    }
    i = Arrays.hashCode(this.data);
    this.bkc = i;
    return i;
  }
  
  public int size()
  {
    return this.data.length;
  }
  
  public byte[] toByteArray()
  {
    return (byte[])this.data.clone();
  }
  
  public String toString()
  {
    if (this.data.length == 0) {
      return "[size=0]";
    }
    String str1 = KE();
    int k = str1.length();
    int j = 0;
    int i = 0;
    if (i < k) {
      if (j != 64) {}
    }
    for (;;)
    {
      if (i == -1)
      {
        if (this.data.length <= 64)
        {
          return "[hex=" + KJ() + "]";
          int m = str1.codePointAt(i);
          if (((Character.isISOControl(m)) && (m != 10) && (m != 13)) || (m == 65533))
          {
            i = -1;
            continue;
          }
          j += 1;
          i += Character.charCount(m);
          break;
          i = str1.length();
          continue;
        }
        return "[size=" + this.data.length + " hex=" + aW(0, 64).KJ() + "…]";
      }
    }
    String str2 = str1.substring(0, i).replace("\\", "\\\\").replace("\n", "\\n").replace("\r", "\\r");
    if (i < str1.length()) {
      return "[size=" + this.data.length + " text=" + str2 + "…]";
    }
    return "[text=" + str2 + "]";
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/d/f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */