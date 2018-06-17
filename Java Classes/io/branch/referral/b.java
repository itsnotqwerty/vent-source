package io.branch.referral;

final class b
{
  public static int cvw = 1048833;
  public static int cvx = 1048834;
  public static int cvy = 1048835;
  
  private static String a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramInt2 < 0) {
      return null;
    }
    paramInt2 = paramInt1 + c(paramArrayOfByte, paramInt2 * 4 + 36);
    paramInt1 = paramArrayOfByte[(paramInt2 + 1)];
    int i = paramArrayOfByte[paramInt2] & 0xFF | paramInt1 << 8 & 0xFF00;
    byte[] arrayOfByte = new byte[i];
    paramInt1 = 0;
    while (paramInt1 < i)
    {
      arrayOfByte[paramInt1] = paramArrayOfByte[(paramInt2 + 2 + paramInt1 * 2)];
      paramInt1 += 1;
    }
    return new String(arrayOfByte);
  }
  
  private static int c(byte[] paramArrayOfByte, int paramInt)
  {
    return paramArrayOfByte[(paramInt + 3)] << 24 & 0xFF000000 | paramArrayOfByte[(paramInt + 2)] << 16 & 0xFF0000 | paramArrayOfByte[(paramInt + 1)] << 8 & 0xFF00 | paramArrayOfByte[paramInt] & 0xFF;
  }
  
  public static String y(byte[] paramArrayOfByte)
  {
    int m = c(paramArrayOfByte, 16) * 4 + 36;
    int j = c(paramArrayOfByte, 12);
    int i = j;
    if (i < paramArrayOfByte.length - 4) {
      if (c(paramArrayOfByte, i) != cvx) {}
    }
    for (;;)
    {
      label41:
      if (i < paramArrayOfByte.length)
      {
        j = c(paramArrayOfByte, i);
        if (j == cvx)
        {
          int n = c(paramArrayOfByte, i + 28);
          j = i + 36;
          int k = 0;
          for (;;)
          {
            i = j;
            if (k >= n) {
              break label41;
            }
            i = c(paramArrayOfByte, j + 4);
            int i1 = c(paramArrayOfByte, j + 8);
            int i2 = c(paramArrayOfByte, j + 16);
            if (a(paramArrayOfByte, m, i).equals("scheme"))
            {
              String str;
              if (i1 != -1)
              {
                str = a(paramArrayOfByte, m, i1);
                label144:
                if ((str == null) || (str.equals("http")) || (str.equals("https")) || (str.equals("geo")) || (str.equals("*")) || (str.equals("package")) || (str.equals("sms")) || (str.equals("smsto")) || (str.equals("mms")) || (str.equals("mmsto")) || (str.equals("tel")) || (str.equals("voicemail")) || (str.equals("file")) || (str.equals("content")) || (str.equals("mailto"))) {
                  break label330;
                }
              }
              label330:
              for (i = 1;; i = 0)
              {
                if (i == 0) {
                  break label335;
                }
                return str;
                i += 4;
                break;
                str = "resourceID 0x" + Integer.toHexString(i2);
                break label144;
              }
            }
            label335:
            k += 1;
            j += 20;
          }
        }
        if (j == cvy)
        {
          i += 24;
          continue;
        }
      }
      return "bnc_no_value";
      i = j;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/branch/referral/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */