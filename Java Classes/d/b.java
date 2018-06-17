package d;

import java.io.UnsupportedEncodingException;

final class b
{
  private static final byte[] cTT = { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47 };
  private static final byte[] cTU = { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95 };
  
  public static String E(byte[] paramArrayOfByte)
  {
    return a(paramArrayOfByte, cTT);
  }
  
  private static String a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    byte[] arrayOfByte = new byte[(paramArrayOfByte1.length + 2) / 3 * 4];
    int k = paramArrayOfByte1.length - paramArrayOfByte1.length % 3;
    int i = 0;
    int m;
    for (int j = 0; i < k; j = m + 1)
    {
      m = j + 1;
      arrayOfByte[j] = paramArrayOfByte2[((paramArrayOfByte1[i] & 0xFF) >> 2)];
      j = m + 1;
      arrayOfByte[m] = paramArrayOfByte2[((paramArrayOfByte1[i] & 0x3) << 4 | (paramArrayOfByte1[(i + 1)] & 0xFF) >> 4)];
      m = j + 1;
      arrayOfByte[j] = paramArrayOfByte2[((paramArrayOfByte1[(i + 1)] & 0xF) << 2 | (paramArrayOfByte1[(i + 2)] & 0xFF) >> 6)];
      arrayOfByte[m] = paramArrayOfByte2[(paramArrayOfByte1[(i + 2)] & 0x3F)];
      i += 3;
    }
    switch (paramArrayOfByte1.length % 3)
    {
    }
    for (;;)
    {
      try
      {
        paramArrayOfByte1 = new String(arrayOfByte, "US-ASCII");
        return paramArrayOfByte1;
      }
      catch (UnsupportedEncodingException paramArrayOfByte1)
      {
        throw new AssertionError(paramArrayOfByte1);
      }
      i = j + 1;
      arrayOfByte[j] = paramArrayOfByte2[((paramArrayOfByte1[k] & 0xFF) >> 2)];
      j = i + 1;
      arrayOfByte[i] = paramArrayOfByte2[((paramArrayOfByte1[k] & 0x3) << 4)];
      arrayOfByte[j] = 61;
      arrayOfByte[(j + 1)] = 61;
      continue;
      i = j + 1;
      arrayOfByte[j] = paramArrayOfByte2[((paramArrayOfByte1[k] & 0xFF) >> 2)];
      j = i + 1;
      arrayOfByte[i] = paramArrayOfByte2[((paramArrayOfByte1[k] & 0x3) << 4 | (paramArrayOfByte1[(k + 1)] & 0xFF) >> 4)];
      arrayOfByte[j] = paramArrayOfByte2[((paramArrayOfByte1[(k + 1)] & 0xF) << 2)];
      arrayOfByte[(j + 1)] = 61;
    }
  }
  
  public static byte[] decode(String paramString)
  {
    int m = paramString.length();
    while (m > 0)
    {
      i = paramString.charAt(m - 1);
      if ((i != 61) && (i != 10) && (i != 13) && (i != 32) && (i != 9)) {
        break;
      }
      m -= 1;
    }
    byte[] arrayOfByte = new byte[(int)(m * 6L / 8L)];
    int n = 0;
    int k = 0;
    int i1 = 0;
    int j = 0;
    if (n < m)
    {
      i = paramString.charAt(n);
      if ((i >= 65) && (i <= 90))
      {
        i -= 65;
        label116:
        k = (byte)i | k << 6;
        i1 += 1;
        i = j;
        if (i1 % 4 == 0)
        {
          i = j + 1;
          arrayOfByte[j] = ((byte)(k >> 16));
          j = i + 1;
          arrayOfByte[i] = ((byte)(k >> 8));
          i = j + 1;
          arrayOfByte[j] = ((byte)k);
        }
        j = i;
      }
    }
    for (int i = k;; i = k)
    {
      n += 1;
      k = i;
      break;
      if ((i >= 97) && (i <= 122))
      {
        i -= 71;
        break label116;
      }
      if ((i >= 48) && (i <= 57))
      {
        i += 4;
        break label116;
      }
      if ((i == 43) || (i == 45))
      {
        i = 62;
        break label116;
      }
      if ((i == 47) || (i == 95))
      {
        i = 63;
        break label116;
      }
      if ((i != 10) && (i != 13) && (i != 32) && (i != 9))
      {
        return null;
        m = i1 % 4;
        if (m == 1) {
          return null;
        }
        if (m == 2)
        {
          arrayOfByte[j] = ((byte)(k << 12 >> 16));
          i = j + 1;
        }
        while (i == arrayOfByte.length)
        {
          return arrayOfByte;
          i = j;
          if (m == 3)
          {
            k <<= 6;
            m = j + 1;
            arrayOfByte[j] = ((byte)(k >> 16));
            i = m + 1;
            arrayOfByte[m] = ((byte)(k >> 8));
          }
        }
        paramString = new byte[i];
        System.arraycopy(arrayOfByte, 0, paramString, 0, i);
        return paramString;
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/d/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */