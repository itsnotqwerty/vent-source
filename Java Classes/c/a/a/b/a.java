package c.a.a.b;

final class a
{
  private static final byte[] bIG = { -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 };
  
  static final void a(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2)
  {
    paramArrayOfByte2[0] = ((byte)"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt(paramArrayOfByte1[paramInt1] >> 2 & 0x3F));
    if (paramInt2 == 3)
    {
      paramArrayOfByte2[1] = ((byte)"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt(paramArrayOfByte1[paramInt1] << 4 & 0x30 | paramArrayOfByte1[(paramInt1 + 1)] >> 4 & 0xF));
      paramArrayOfByte2[2] = ((byte)"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt(paramArrayOfByte1[(paramInt1 + 1)] << 2 & 0x3C | paramArrayOfByte1[(paramInt1 + 2)] >> 6 & 0x3));
      paramArrayOfByte2[3] = ((byte)"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt(paramArrayOfByte1[(paramInt1 + 2)] & 0x3F));
      return;
    }
    if (paramInt2 == 2)
    {
      paramArrayOfByte2[1] = ((byte)"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt(paramArrayOfByte1[paramInt1] << 4 & 0x30 | paramArrayOfByte1[(paramInt1 + 1)] >> 4 & 0xF));
      paramArrayOfByte2[2] = ((byte)"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt(paramArrayOfByte1[(paramInt1 + 1)] << 2 & 0x3C));
      return;
    }
    paramArrayOfByte2[1] = ((byte)"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".charAt(paramArrayOfByte1[paramInt1] << 4 & 0x30));
  }
  
  static final void a(byte[] paramArrayOfByte1, int paramInt1, int paramInt2, byte[] paramArrayOfByte2, int paramInt3)
  {
    paramArrayOfByte2[paramInt3] = ((byte)(bIG[(paramArrayOfByte1[paramInt1] & 0xFF)] << 2 | bIG[(paramArrayOfByte1[(paramInt1 + 1)] & 0xFF)] >> 4));
    if (paramInt2 > 2)
    {
      paramArrayOfByte2[(paramInt3 + 1)] = ((byte)(bIG[(paramArrayOfByte1[(paramInt1 + 1)] & 0xFF)] << 4 & 0xF0 | bIG[(paramArrayOfByte1[(paramInt1 + 2)] & 0xFF)] >> 2));
      if (paramInt2 > 3) {
        paramArrayOfByte2[(paramInt3 + 2)] = ((byte)(bIG[(paramArrayOfByte1[(paramInt1 + 2)] & 0xFF)] << 6 & 0xC0 | bIG[(paramArrayOfByte1[(paramInt1 + 3)] & 0xFF)]));
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/c/a/a/b/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */