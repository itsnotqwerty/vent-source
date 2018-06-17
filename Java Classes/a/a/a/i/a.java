package a.a.a.i;

public final class a
{
  public static String encodeToString(byte[] paramArrayOfByte)
  {
    int j = (int)(8.0D - paramArrayOfByte.length % 5 * 1.6D) % 8;
    byte[] arrayOfByte = new byte[paramArrayOfByte.length + j];
    System.arraycopy(paramArrayOfByte, 0, arrayOfByte, 0, paramArrayOfByte.length);
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    while (i < paramArrayOfByte.length)
    {
      long l = ((arrayOfByte[i] & 0xFF) << 32) + ((arrayOfByte[(i + 1)] & 0xFF) << 24) + ((arrayOfByte[(i + 2)] & 0xFF) << 16) + ((arrayOfByte[(i + 3)] & 0xFF) << 8) + (arrayOfByte[(i + 4)] & 0xFF);
      localStringBuilder.append("0123456789ABCDEFGHIJKLMNOPQRSTUV".charAt((int)(l >> 35 & 0x1F))).append("0123456789ABCDEFGHIJKLMNOPQRSTUV".charAt((int)(l >> 30 & 0x1F))).append("0123456789ABCDEFGHIJKLMNOPQRSTUV".charAt((int)(l >> 25 & 0x1F))).append("0123456789ABCDEFGHIJKLMNOPQRSTUV".charAt((int)(l >> 20 & 0x1F))).append("0123456789ABCDEFGHIJKLMNOPQRSTUV".charAt((int)(l >> 15 & 0x1F))).append("0123456789ABCDEFGHIJKLMNOPQRSTUV".charAt((int)(l >> 10 & 0x1F))).append("0123456789ABCDEFGHIJKLMNOPQRSTUV".charAt((int)(l >> 5 & 0x1F))).append("0123456789ABCDEFGHIJKLMNOPQRSTUV".charAt((int)(l & 0x1F)));
      i += 5;
    }
    return localStringBuilder.substring(0, localStringBuilder.length() - j) + "======".substring(0, j);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/a/a/a/i/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */