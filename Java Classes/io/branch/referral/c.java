package io.branch.referral;

import java.io.UnsupportedEncodingException;

final class c
{
  public static String A(byte[] paramArrayOfByte)
  {
    for (;;)
    {
      int j;
      int m;
      try
      {
        int k = paramArrayOfByte.length;
        c localc = new c();
        j = k / 3 * 4;
        if (localc.cvI)
        {
          i = j;
          if (k % 3 > 0) {
            i = j + 4;
          }
          if ((!localc.cvJ) || (k <= 0)) {
            break label166;
          }
          m = (k - 1) / 57;
          if (localc.cvK)
          {
            j = 2;
            break label169;
            localc.cvz = new byte[i];
            localc.d(paramArrayOfByte, k);
            return new String(localc.cvz, "US-ASCII");
          }
        }
        else
        {
          i = j;
          switch (k % 3)
          {
          case 0: 
          default: 
            i = j;
            break;
          case 1: 
            i = j + 2;
            break;
          case 2: 
            i = j + 3;
            break;
          }
        }
        j = 1;
      }
      catch (UnsupportedEncodingException paramArrayOfByte)
      {
        throw new AssertionError(paramArrayOfByte);
      }
      label166:
      continue;
      label169:
      int i = j * (m + 1) + i;
    }
  }
  
  public static byte[] z(byte[] paramArrayOfByte)
  {
    int i = paramArrayOfByte.length;
    b localb = new b(new byte[i * 3 / 4]);
    if (localb.state == 6) {
      i = 0;
    }
    while (i == 0)
    {
      throw new IllegalArgumentException("bad base-64");
      int i3 = i + 0;
      int j = localb.state;
      int k = localb.value;
      byte[] arrayOfByte = localb.cvz;
      int[] arrayOfInt = localb.cvD;
      int m = 0;
      i = 0;
      label81:
      int i1 = m;
      int i2 = k;
      if (i < i3)
      {
        int n = m;
        i1 = k;
        i2 = i;
        if (j == 0)
        {
          n = i;
          for (i = k; n + 4 <= i3; i = k)
          {
            k = arrayOfInt[(paramArrayOfByte[n] & 0xFF)] << 18 | arrayOfInt[(paramArrayOfByte[(n + 1)] & 0xFF)] << 12 | arrayOfInt[(paramArrayOfByte[(n + 2)] & 0xFF)] << 6 | arrayOfInt[(paramArrayOfByte[(n + 3)] & 0xFF)];
            i = k;
            if (k < 0) {
              break;
            }
            arrayOfByte[(m + 2)] = ((byte)k);
            arrayOfByte[(m + 1)] = ((byte)(k >> 8));
            arrayOfByte[m] = ((byte)(k >> 16));
            m += 3;
            n += 4;
          }
          i1 = m;
          i2 = i;
          if (n < i3)
          {
            i2 = n;
            i1 = i;
            n = m;
          }
        }
        else
        {
          i = i2 + 1;
          k = arrayOfInt[(paramArrayOfByte[i2] & 0xFF)];
          switch (j)
          {
          }
          do
          {
            do
            {
              do
              {
                do
                {
                  do
                  {
                    do
                    {
                      m = n;
                      k = i1;
                      break;
                      if (k >= 0)
                      {
                        j += 1;
                        m = n;
                        break;
                      }
                    } while (k == -1);
                    localb.state = 6;
                    i = 0;
                    break;
                    if (k >= 0)
                    {
                      k = i1 << 6 | k;
                      j += 1;
                      m = n;
                      break label81;
                    }
                  } while (k == -1);
                  localb.state = 6;
                  i = 0;
                  break;
                  if (k >= 0)
                  {
                    k = i1 << 6 | k;
                    j += 1;
                    m = n;
                    break label81;
                  }
                  if (k == -2)
                  {
                    arrayOfByte[n] = ((byte)(i1 >> 4));
                    j = 4;
                    m = n + 1;
                    k = i1;
                    break label81;
                  }
                } while (k == -1);
                localb.state = 6;
                i = 0;
                break;
                if (k >= 0)
                {
                  k = i1 << 6 | k;
                  arrayOfByte[(n + 2)] = ((byte)k);
                  arrayOfByte[(n + 1)] = ((byte)(k >> 8));
                  arrayOfByte[n] = ((byte)(k >> 16));
                  m = n + 3;
                  j = 0;
                  break label81;
                }
                if (k == -2)
                {
                  arrayOfByte[(n + 1)] = ((byte)(i1 >> 2));
                  arrayOfByte[n] = ((byte)(i1 >> 10));
                  m = n + 2;
                  j = 5;
                  k = i1;
                  break label81;
                }
              } while (k == -1);
              localb.state = 6;
              i = 0;
              break;
              if (k == -2)
              {
                j += 1;
                m = n;
                k = i1;
                break label81;
              }
            } while (k == -1);
            localb.state = 6;
            i = 0;
            break;
          } while (k == -1);
          localb.state = 6;
          i = 0;
          continue;
        }
      }
      i = i1;
      switch (j)
      {
      default: 
        i = i1;
      case 0: 
      case 1: 
      case 2: 
      case 3: 
        for (;;)
        {
          localb.state = j;
          localb.cvA = i;
          i = 1;
          break;
          localb.state = 6;
          i = 0;
          break;
          arrayOfByte[i1] = ((byte)(i2 >> 4));
          i = i1 + 1;
          continue;
          k = i1 + 1;
          arrayOfByte[i1] = ((byte)(i2 >> 10));
          i = k + 1;
          arrayOfByte[k] = ((byte)(i2 >> 2));
        }
      }
      localb.state = 6;
      i = 0;
    }
    if (localb.cvA == localb.cvz.length) {
      return localb.cvz;
    }
    paramArrayOfByte = new byte[localb.cvA];
    System.arraycopy(localb.cvz, 0, paramArrayOfByte, 0, localb.cvA);
    return paramArrayOfByte;
  }
  
  static abstract class a
  {
    public int cvA;
    public byte[] cvz;
  }
  
  static final class b
    extends c.a
  {
    private static final int[] cvB = { -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 };
    private static final int[] cvC = { -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, 63, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1 };
    final int[] cvD;
    int state;
    int value;
    
    public b(byte[] paramArrayOfByte)
    {
      this.cvz = paramArrayOfByte;
      this.cvD = cvB;
      this.state = 0;
      this.value = 0;
    }
  }
  
  static final class c
    extends c.a
  {
    private static final byte[] cvE = { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47 };
    private static final byte[] cvF = { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95 };
    int count;
    final byte[] cvG = new byte[2];
    int cvH = 0;
    public final boolean cvI = true;
    public final boolean cvJ = false;
    public final boolean cvK = false;
    final byte[] cvL = cvE;
    
    public c()
    {
      this.cvz = null;
      if (this.cvJ) {}
      for (int i = 19;; i = -1)
      {
        this.count = i;
        return;
      }
    }
    
    public final boolean d(byte[] paramArrayOfByte, int paramInt)
    {
      int n = 0;
      byte[] arrayOfByte1 = this.cvL;
      byte[] arrayOfByte2 = this.cvz;
      int i = this.count;
      int m = paramInt + 0;
      paramInt = -1;
      int j;
      label59:
      int k;
      switch (this.cvH)
      {
      default: 
        j = 0;
        if (paramInt != -1)
        {
          arrayOfByte2[0] = arrayOfByte1[(paramInt >> 18 & 0x3F)];
          arrayOfByte2[1] = arrayOfByte1[(paramInt >> 12 & 0x3F)];
          arrayOfByte2[2] = arrayOfByte1[(paramInt >> 6 & 0x3F)];
          k = 4;
          arrayOfByte2[3] = arrayOfByte1[(paramInt & 0x3F)];
          i -= 1;
          if (i == 0)
          {
            paramInt = k;
            if (this.cvK)
            {
              paramInt = 5;
              arrayOfByte2[4] = 13;
            }
            k = paramInt + 1;
            arrayOfByte2[paramInt] = 10;
            i = 19;
            paramInt = k;
          }
        }
        break;
      }
      for (;;)
      {
        label163:
        if (j + 3 <= m)
        {
          k = (paramArrayOfByte[j] & 0xFF) << 16 | (paramArrayOfByte[(j + 1)] & 0xFF) << 8 | paramArrayOfByte[(j + 2)] & 0xFF;
          arrayOfByte2[paramInt] = arrayOfByte1[(k >> 18 & 0x3F)];
          arrayOfByte2[(paramInt + 1)] = arrayOfByte1[(k >> 12 & 0x3F)];
          arrayOfByte2[(paramInt + 2)] = arrayOfByte1[(k >> 6 & 0x3F)];
          arrayOfByte2[(paramInt + 3)] = arrayOfByte1[(k & 0x3F)];
          j += 3;
          paramInt += 4;
          i -= 1;
          if (i != 0) {
            break label964;
          }
          if (!this.cvK) {
            break label961;
          }
          i = paramInt + 1;
          arrayOfByte2[paramInt] = 13;
          paramInt = i;
        }
        label685:
        label707:
        label885:
        label958:
        label961:
        for (;;)
        {
          i = paramInt + 1;
          arrayOfByte2[paramInt] = 10;
          k = 19;
          paramInt = i;
          i = k;
          break label163;
          j = 0;
          break label59;
          if (2 > m) {
            break;
          }
          paramInt = this.cvG[0];
          j = paramArrayOfByte[0];
          paramInt = paramArrayOfByte[1] & 0xFF | (paramInt & 0xFF) << 16 | (j & 0xFF) << 8;
          this.cvH = 0;
          j = 2;
          break label59;
          if (m <= 0) {
            break;
          }
          paramInt = this.cvG[0];
          j = this.cvG[1];
          paramInt = paramArrayOfByte[0] & 0xFF | (paramInt & 0xFF) << 16 | (j & 0xFF) << 8;
          this.cvH = 0;
          j = 1;
          break label59;
          if (j - this.cvH == m - 1)
          {
            if (this.cvH > 0) {
              k = this.cvG[0];
            }
            for (j = 1;; j = 0)
            {
              k = (k & 0xFF) << 4;
              this.cvH -= j;
              m = paramInt + 1;
              arrayOfByte2[paramInt] = arrayOfByte1[(k >> 6 & 0x3F)];
              j = m + 1;
              arrayOfByte2[m] = arrayOfByte1[(k & 0x3F)];
              paramInt = j;
              if (this.cvI)
              {
                k = j + 1;
                arrayOfByte2[j] = 61;
                paramInt = k + 1;
                arrayOfByte2[k] = 61;
              }
              j = paramInt;
              if (this.cvJ)
              {
                j = paramInt;
                if (this.cvK)
                {
                  arrayOfByte2[paramInt] = 13;
                  j = paramInt + 1;
                }
                arrayOfByte2[j] = 10;
                j += 1;
              }
              this.cvA = j;
              this.count = i;
              return true;
              k = paramArrayOfByte[j];
            }
          }
          if (j - this.cvH == m - 2) {
            if (this.cvH > 1)
            {
              k = this.cvG[0];
              m = j;
              j = 1;
              if (this.cvH <= 0) {
                break label885;
              }
              m = this.cvG[j];
              j += 1;
              k = (m & 0xFF) << 2 | (k & 0xFF) << 10;
              this.cvH -= j;
              j = paramInt + 1;
              arrayOfByte2[paramInt] = arrayOfByte1[(k >> 12 & 0x3F)];
              m = j + 1;
              arrayOfByte2[j] = arrayOfByte1[(k >> 6 & 0x3F)];
              paramInt = m + 1;
              arrayOfByte2[m] = arrayOfByte1[(k & 0x3F)];
              if (!this.cvI) {
                break label958;
              }
              j = paramInt + 1;
              arrayOfByte2[paramInt] = 61;
              paramInt = j;
            }
          }
          for (;;)
          {
            j = paramInt;
            if (this.cvJ)
            {
              j = paramInt;
              if (this.cvK)
              {
                arrayOfByte2[paramInt] = 13;
                j = paramInt + 1;
              }
              arrayOfByte2[j] = 10;
              j += 1;
            }
            break;
            m = j + 1;
            k = paramArrayOfByte[j];
            j = n;
            break label685;
            m = paramArrayOfByte[m];
            break label707;
            j = paramInt;
            if (!this.cvJ) {
              break;
            }
            j = paramInt;
            if (paramInt <= 0) {
              break;
            }
            j = paramInt;
            if (i == 19) {
              break;
            }
            if (this.cvK)
            {
              j = paramInt + 1;
              arrayOfByte2[paramInt] = 13;
              paramInt = j;
            }
            for (;;)
            {
              j = paramInt + 1;
              arrayOfByte2[paramInt] = 10;
              break;
            }
          }
        }
        label964:
        continue;
        paramInt = 4;
        continue;
        paramInt = 0;
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/branch/referral/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */