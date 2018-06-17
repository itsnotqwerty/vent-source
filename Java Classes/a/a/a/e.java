package a.a.a;

import a.a.a.e.c;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Locale;

public class e
  implements Serializable, CharSequence, Comparable<e>
{
  public static final e cqe;
  public static final e cqf;
  public static boolean cqg;
  private transient int bkc;
  public final String cqh;
  public transient String[] cqi;
  private transient byte[] sY;
  private int size = -1;
  
  static
  {
    if (!e.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      cqe = new e("", false);
      cqf = new e(".", false);
      cqg = true;
      return;
    }
  }
  
  private e(String paramString)
  {
    this(paramString, true);
  }
  
  private e(String paramString, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.cqh = c.toASCII(paramString);
      if (cqg) {
        break label42;
      }
    }
    for (;;)
    {
      return;
      this.cqh = paramString.toLowerCase(Locale.US);
      break;
      label42:
      FR();
      if (this.sY.length > 255) {
        throw new h.a(paramString, this.sY);
      }
      FS();
      String[] arrayOfString = this.cqi;
      int j = arrayOfString.length;
      int i = 0;
      while (i < j)
      {
        String str = arrayOfString[i];
        if (str.length() > 63) {
          throw new h.b(paramString, str);
        }
        i += 1;
      }
    }
  }
  
  public e(String[] paramArrayOfString)
  {
    this.cqi = paramArrayOfString;
    int k = paramArrayOfString.length;
    int j = 0;
    int m;
    for (int i = 0; j < k; i = m + 1 + i)
    {
      m = paramArrayOfString[j].length();
      j += 1;
    }
    StringBuilder localStringBuilder = new StringBuilder(i);
    i = paramArrayOfString.length - 1;
    while (i >= 0)
    {
      localStringBuilder.append(paramArrayOfString[i]).append('.');
      i -= 1;
    }
    localStringBuilder.setLength(localStringBuilder.length() - 1);
    this.cqh = localStringBuilder.toString();
  }
  
  private void FR()
  {
    if (this.sY != null) {
      return;
    }
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream(64);
    FS();
    int i = this.cqi.length - 1;
    while (i >= 0)
    {
      byte[] arrayOfByte = this.cqi[i].getBytes();
      localByteArrayOutputStream.write(arrayOfByte.length);
      localByteArrayOutputStream.write(arrayOfByte, 0, arrayOfByte.length);
      i -= 1;
    }
    localByteArrayOutputStream.write(0);
    assert (localByteArrayOutputStream.size() <= 255);
    this.sY = localByteArrayOutputStream.toByteArray();
  }
  
  public static e a(DataInputStream paramDataInputStream, byte[] paramArrayOfByte)
    throws IOException
  {
    int i = paramDataInputStream.readUnsignedByte();
    if ((i & 0xC0) == 192)
    {
      i = ((i & 0x3F) << 8) + paramDataInputStream.readUnsignedByte();
      paramDataInputStream = new HashSet();
      paramDataInputStream.add(Integer.valueOf(i));
      return a(paramArrayOfByte, i, paramDataInputStream);
    }
    if (i == 0) {
      return cqe;
    }
    Object localObject = new byte[i];
    paramDataInputStream.readFully((byte[])localObject);
    localObject = c.toUnicode(new String((byte[])localObject));
    paramArrayOfByte = a(paramDataInputStream, paramArrayOfByte);
    paramDataInputStream = (DataInputStream)localObject;
    if (paramArrayOfByte.length() > 0) {
      paramDataInputStream = (String)localObject + "." + paramArrayOfByte;
    }
    return new e(paramDataInputStream);
  }
  
  private static e a(byte[] paramArrayOfByte, int paramInt, HashSet<Integer> paramHashSet)
    throws IllegalStateException
  {
    int i;
    for (;;)
    {
      i = paramArrayOfByte[paramInt] & 0xFF;
      if ((i & 0xC0) != 192) {
        break;
      }
      paramInt = ((i & 0x3F) << 8) + (paramArrayOfByte[(paramInt + 1)] & 0xFF);
      if (paramHashSet.contains(Integer.valueOf(paramInt))) {
        throw new IllegalStateException("Cyclic offsets detected.");
      }
      paramHashSet.add(Integer.valueOf(paramInt));
    }
    if (i == 0) {
      return cqe;
    }
    String str = new String(paramArrayOfByte, paramInt + 1, i);
    paramHashSet = a(paramArrayOfByte, i + (paramInt + 1), paramHashSet);
    paramArrayOfByte = str;
    if (paramHashSet.length() > 0) {
      paramArrayOfByte = str + "." + paramHashSet;
    }
    return new e(paramArrayOfByte);
  }
  
  public static e ey(String paramString)
  {
    return new e(paramString, true);
  }
  
  public final void FS()
  {
    int i = 0;
    if (this.cqi != null) {}
    for (;;)
    {
      return;
      if (FT())
      {
        this.cqi = new String[0];
        return;
      }
      this.cqi = this.cqh.split("[.。．｡]", 128);
      while (i < this.cqi.length / 2)
      {
        String str = this.cqi[i];
        int j = this.cqi.length - i - 1;
        this.cqi[i] = this.cqi[j];
        this.cqi[j] = str;
        i += 1;
      }
    }
  }
  
  public final boolean FT()
  {
    return (this.cqh.isEmpty()) || (this.cqh.equals("."));
  }
  
  public char charAt(int paramInt)
  {
    return this.cqh.charAt(paramInt);
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == null) {}
    while (!(paramObject instanceof e)) {
      return false;
    }
    paramObject = (e)paramObject;
    FR();
    ((e)paramObject).FR();
    return Arrays.equals(this.sY, ((e)paramObject).sY);
  }
  
  public int hashCode()
  {
    if ((this.bkc == 0) && (!FT()))
    {
      FR();
      this.bkc = Arrays.hashCode(this.sY);
    }
    return this.bkc;
  }
  
  public int length()
  {
    return this.cqh.length();
  }
  
  public final int size()
  {
    if (this.size < 0) {
      if (!FT()) {
        break label24;
      }
    }
    label24:
    for (this.size = 1;; this.size = (this.cqh.length() + 2)) {
      return this.size;
    }
  }
  
  public CharSequence subSequence(int paramInt1, int paramInt2)
  {
    return this.cqh.subSequence(paramInt1, paramInt2);
  }
  
  public String toString()
  {
    return this.cqh;
  }
  
  public final void writeToStream(OutputStream paramOutputStream)
    throws IOException
  {
    FR();
    paramOutputStream.write(this.sY);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/a/a/a/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */