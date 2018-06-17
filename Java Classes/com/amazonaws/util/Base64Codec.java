package com.amazonaws.util;

class Base64Codec
{
  final byte[] auK = CodecUtils.av("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/");
  
  private static int a(byte paramByte)
  {
    int i = LazyHolder.ke()[paramByte];
    if (i >= 0) {
      return i;
    }
    throw new IllegalArgumentException("Invalid base 64 character: '" + (char)paramByte + "'");
  }
  
  static void a(int paramInt1, byte[] paramArrayOfByte1, int paramInt2, byte[] paramArrayOfByte2, int paramInt3)
  {
    int i = paramInt3 + 1;
    int j = paramInt2 + 1;
    int k = a(paramArrayOfByte1[paramInt2]);
    paramInt2 = j + 1;
    j = a(paramArrayOfByte1[j]);
    paramArrayOfByte2[paramInt3] = ((byte)(k << 2 | j >>> 4 & 0x3));
    if (paramInt1 == 1)
    {
      CodecUtils.ar(j, 15);
      return;
    }
    paramInt3 = a(paramArrayOfByte1[paramInt2]);
    paramArrayOfByte2[i] = ((byte)((j & 0xF) << 4 | paramInt3 >>> 2 & 0xF));
    if (paramInt1 == 2)
    {
      CodecUtils.ar(paramInt3, 3);
      return;
    }
    paramArrayOfByte2[(i + 1)] = ((byte)((paramInt3 & 0x3) << 6 | a(paramArrayOfByte1[(paramInt2 + 1)])));
  }
  
  static void b(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    int i = paramInt2 + 1;
    int j = paramInt1 + 1;
    int k = a(paramArrayOfByte1[paramInt1]);
    paramInt1 = j + 1;
    j = a(paramArrayOfByte1[j]);
    paramArrayOfByte2[paramInt2] = ((byte)(k << 2 | j >>> 4 & 0x3));
    paramInt2 = a(paramArrayOfByte1[paramInt1]);
    paramArrayOfByte2[i] = ((byte)((j & 0xF) << 4 | paramInt2 >>> 2 & 0xF));
    paramArrayOfByte2[(i + 1)] = ((byte)((paramInt2 & 0x3) << 6 | a(paramArrayOfByte1[(paramInt1 + 1)])));
  }
  
  final void a(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    int i = paramInt2 + 1;
    byte[] arrayOfByte = this.auK;
    int j = paramInt1 + 1;
    paramInt1 = paramArrayOfByte1[paramInt1];
    paramArrayOfByte2[paramInt2] = arrayOfByte[(paramInt1 >>> 2 & 0x3F)];
    paramInt2 = i + 1;
    arrayOfByte = this.auK;
    int k = paramArrayOfByte1[j];
    paramArrayOfByte2[i] = arrayOfByte[((paramInt1 & 0x3) << 4 | k >>> 4 & 0xF)];
    arrayOfByte = this.auK;
    paramInt1 = paramArrayOfByte1[(j + 1)];
    paramArrayOfByte2[paramInt2] = arrayOfByte[((k & 0xF) << 2 | paramInt1 >>> 6 & 0x3)];
    paramArrayOfByte2[(paramInt2 + 1)] = this.auK[(paramInt1 & 0x3F)];
  }
  
  private static class LazyHolder
  {
    private static final byte[] auL;
    
    static
    {
      byte[] arrayOfByte = new byte[123];
      int i = 0;
      if (i <= 122)
      {
        if ((i >= 65) && (i <= 90)) {
          arrayOfByte[i] = ((byte)(i - 65));
        }
        for (;;)
        {
          i += 1;
          break;
          if ((i >= 48) && (i <= 57)) {
            arrayOfByte[i] = ((byte)(i + 4));
          } else if (i == 43) {
            arrayOfByte[i] = ((byte)(i + 19));
          } else if (i == 47) {
            arrayOfByte[i] = ((byte)(i + 16));
          } else if ((i >= 97) && (i <= 122)) {
            arrayOfByte[i] = ((byte)(i - 71));
          } else {
            arrayOfByte[i] = -1;
          }
        }
      }
      auL = arrayOfByte;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/util/Base64Codec.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */