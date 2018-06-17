package a.a.a.i;

public final class b
{
  public static String encodeToString(byte[] paramArrayOfByte)
  {
    int j = (3 - paramArrayOfByte.length % 3) % 3;
    byte[] arrayOfByte = new byte[paramArrayOfByte.length + j];
    System.arraycopy(paramArrayOfByte, 0, arrayOfByte, 0, paramArrayOfByte.length);
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    while (i < paramArrayOfByte.length)
    {
      int k = ((arrayOfByte[i] & 0xFF) << 16) + ((arrayOfByte[(i + 1)] & 0xFF) << 8) + (arrayOfByte[(i + 2)] & 0xFF);
      localStringBuilder.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt(k >> 18 & 0x3F)).append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt(k >> 12 & 0x3F)).append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt(k >> 6 & 0x3F)).append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt(k & 0x3F));
      i += 3;
    }
    return localStringBuilder.substring(0, localStringBuilder.length() - j) + "==".substring(0, j);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/a/a/a/i/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */