package com.google.android.gms.internal;

import java.io.IOException;

public final class mu
{
  final int aZD;
  private final int aZE;
  private int aZF;
  private int aZG;
  private int aZH;
  private int aZI;
  private int aZJ = Integer.MAX_VALUE;
  private int aZK;
  private int aZL = 64;
  private int aZM = 67108864;
  final byte[] buffer;
  
  private mu(byte[] paramArrayOfByte, int paramInt)
  {
    this.buffer = paramArrayOfByte;
    this.aZD = 0;
    paramInt += 0;
    this.aZF = paramInt;
    this.aZE = paramInt;
    this.aZH = 0;
  }
  
  public static mu a(byte[] paramArrayOfByte, int paramInt)
  {
    return new mu(paramArrayOfByte, paramInt);
  }
  
  private final void cY(int paramInt)
    throws IOException
  {
    if (paramInt < 0) {
      throw nc.sV();
    }
    if (this.aZH + paramInt > this.aZJ)
    {
      cY(this.aZJ - this.aZH);
      throw nc.sU();
    }
    if (paramInt <= this.aZF - this.aZH)
    {
      this.aZH += paramInt;
      return;
    }
    throw nc.sU();
  }
  
  private final void sO()
  {
    this.aZF += this.aZG;
    int i = this.aZF;
    if (i > this.aZJ)
    {
      this.aZG = (i - this.aZJ);
      this.aZF -= this.aZG;
      return;
    }
    this.aZG = 0;
  }
  
  private final byte sQ()
    throws IOException
  {
    if (this.aZH == this.aZF) {
      throw nc.sU();
    }
    byte[] arrayOfByte = this.buffer;
    int i = this.aZH;
    this.aZH = (i + 1);
    return arrayOfByte[i];
  }
  
  public final void a(nd paramnd)
    throws IOException
  {
    int i = sK();
    if (this.aZK >= this.aZL) {
      throw nc.sX();
    }
    i = cV(i);
    this.aZK += 1;
    paramnd.a(this);
    cT(0);
    this.aZK -= 1;
    cW(i);
  }
  
  final void av(int paramInt1, int paramInt2)
  {
    if (paramInt1 > this.aZH - this.aZD)
    {
      paramInt2 = this.aZH;
      int i = this.aZD;
      throw new IllegalArgumentException(50 + "Position " + paramInt1 + " is beyond current " + (paramInt2 - i));
    }
    if (paramInt1 < 0) {
      throw new IllegalArgumentException(24 + "Bad position " + paramInt1);
    }
    this.aZH = (this.aZD + paramInt1);
    this.aZI = paramInt2;
  }
  
  public final void cT(int paramInt)
    throws nc
  {
    if (this.aZI != paramInt) {
      throw new nc("Protocol message end-group tag did not match expected tag.");
    }
  }
  
  public final boolean cU(int paramInt)
    throws IOException
  {
    switch (paramInt & 0x7)
    {
    default: 
      throw new nc("Protocol message tag had invalid wire type.");
    case 0: 
      sK();
      return true;
    case 1: 
      sN();
      return true;
    case 2: 
      cY(sK());
      return true;
    case 3: 
      int i;
      do
      {
        i = sI();
      } while ((i != 0) && (cU(i)));
      cT(paramInt >>> 3 << 3 | 0x4);
      return true;
    case 4: 
      return false;
    }
    sM();
    return true;
  }
  
  public final int cV(int paramInt)
    throws nc
  {
    if (paramInt < 0) {
      throw nc.sV();
    }
    paramInt = this.aZH + paramInt;
    int i = this.aZJ;
    if (paramInt > i) {
      throw nc.sU();
    }
    this.aZJ = paramInt;
    sO();
    return i;
  }
  
  public final void cW(int paramInt)
  {
    this.aZJ = paramInt;
    sO();
  }
  
  public final void cX(int paramInt)
  {
    av(paramInt, this.aZI);
  }
  
  public final int getPosition()
  {
    return this.aZH - this.aZD;
  }
  
  public final String readString()
    throws IOException
  {
    int i = sK();
    if (i < 0) {
      throw nc.sV();
    }
    if (i > this.aZF - this.aZH) {
      throw nc.sU();
    }
    String str = new String(this.buffer, this.aZH, i, nb.UTF_8);
    this.aZH = (i + this.aZH);
    return str;
  }
  
  public final int sI()
    throws IOException
  {
    if (this.aZH == this.aZF)
    {
      this.aZI = 0;
      return 0;
    }
    this.aZI = sK();
    if (this.aZI == 0) {
      throw new nc("Protocol message contained an invalid tag (zero).");
    }
    return this.aZI;
  }
  
  public final boolean sJ()
    throws IOException
  {
    return sK() != 0;
  }
  
  public final int sK()
    throws IOException
  {
    int i = sQ();
    if (i >= 0) {}
    int k;
    do
    {
      return i;
      i &= 0x7F;
      j = sQ();
      if (j >= 0) {
        return i | j << 7;
      }
      i |= (j & 0x7F) << 7;
      j = sQ();
      if (j >= 0) {
        return i | j << 14;
      }
      i |= (j & 0x7F) << 14;
      k = sQ();
      if (k >= 0) {
        return i | k << 21;
      }
      j = sQ();
      k = i | (k & 0x7F) << 21 | j << 28;
      i = k;
    } while (j >= 0);
    int j = 0;
    for (;;)
    {
      if (j >= 5) {
        break label133;
      }
      i = k;
      if (sQ() >= 0) {
        break;
      }
      j += 1;
    }
    label133:
    throw nc.sW();
  }
  
  public final long sL()
    throws IOException
  {
    int i = 0;
    long l = 0L;
    while (i < 64)
    {
      int j = sQ();
      l |= (j & 0x7F) << i;
      if ((j & 0x80) == 0) {
        return l;
      }
      i += 7;
    }
    throw nc.sW();
  }
  
  public final int sM()
    throws IOException
  {
    return sQ() & 0xFF | (sQ() & 0xFF) << 8 | (sQ() & 0xFF) << 16 | (sQ() & 0xFF) << 24;
  }
  
  public final long sN()
    throws IOException
  {
    int i = sQ();
    int j = sQ();
    int k = sQ();
    int m = sQ();
    int n = sQ();
    int i1 = sQ();
    int i2 = sQ();
    int i3 = sQ();
    long l = i;
    return (j & 0xFF) << 8 | l & 0xFF | (k & 0xFF) << 16 | (m & 0xFF) << 24 | (n & 0xFF) << 32 | (i1 & 0xFF) << 40 | (i2 & 0xFF) << 48 | (i3 & 0xFF) << 56;
  }
  
  public final int sP()
  {
    if (this.aZJ == Integer.MAX_VALUE) {
      return -1;
    }
    int i = this.aZH;
    return this.aZJ - i;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/mu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */