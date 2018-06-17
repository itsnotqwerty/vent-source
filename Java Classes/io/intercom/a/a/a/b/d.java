package io.intercom.a.a.a.b;

import android.util.Log;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.util.List;

public final class d
{
  public final byte[] cHj = new byte['Ā'];
  public ByteBuffer cHk;
  public c cHl;
  public int cHm = 0;
  
  private void HO()
  {
    do
    {
      HQ();
      if (this.cHj[0] == 1)
      {
        int i = this.cHj[1];
        int j = this.cHj[2];
        this.cHl.cHi = (i & 0xFF | (j & 0xFF) << 8);
      }
    } while ((this.cHm > 0) && (!HR()));
  }
  
  private void HP()
  {
    int i;
    do
    {
      i = read();
      int j = Math.min(this.cHk.position() + i, this.cHk.limit());
      this.cHk.position(j);
    } while (i > 0);
  }
  
  private void HQ()
  {
    this.cHm = read();
    if (this.cHm > 0)
    {
      int i = 0;
      int j = 0;
      for (;;)
      {
        int k = i;
        try
        {
          if (j < this.cHm)
          {
            k = i;
            i = this.cHm - j;
            k = i;
            this.cHk.get(this.cHj, j, i);
            j += i;
          }
        }
        catch (Exception localException)
        {
          if (Log.isLoggable("GifHeaderParser", 3)) {
            Log.d("GifHeaderParser", "Error Reading Block n: " + j + " count: " + k + " blockSize: " + this.cHm, localException);
          }
          this.cHl.status = 1;
        }
      }
    }
  }
  
  private int[] ff(int paramInt)
  {
    localObject = null;
    byte[] arrayOfByte = new byte[paramInt * 3];
    try
    {
      this.cHk.get(arrayOfByte);
      int[] arrayOfInt = new int['Ā'];
      int j = 0;
      int i = 0;
      for (;;)
      {
        localObject = arrayOfInt;
        if (i >= paramInt) {
          break;
        }
        int n = j + 1;
        int k = arrayOfByte[j];
        int m = n + 1;
        n = arrayOfByte[n];
        j = m + 1;
        arrayOfInt[i] = ((k & 0xFF) << 16 | 0xFF000000 | (n & 0xFF) << 8 | arrayOfByte[m] & 0xFF);
        i += 1;
      }
      return (int[])localObject;
    }
    catch (BufferUnderflowException localBufferUnderflowException)
    {
      if (Log.isLoggable("GifHeaderParser", 3)) {
        Log.d("GifHeaderParser", "Format Error Reading Color Table", localBufferUnderflowException);
      }
      this.cHl.status = 1;
    }
  }
  
  private int read()
  {
    try
    {
      int i = this.cHk.get();
      return i & 0xFF;
    }
    catch (Exception localException)
    {
      this.cHl.status = 1;
    }
    return 0;
  }
  
  public final void HN()
  {
    int i = 0;
    while ((i == 0) && (!HR()) && (this.cHl.cHb <= Integer.MAX_VALUE))
    {
      int k;
      int j;
      label182:
      Object localObject;
      boolean bool;
      switch (read())
      {
      default: 
        this.cHl.status = 1;
        break;
      case 44: 
        if (this.cHl.cHc == null) {
          this.cHl.cHc = new b();
        }
        this.cHl.cHc.cGQ = this.cHk.getShort();
        this.cHl.cHc.cGR = this.cHk.getShort();
        this.cHl.cHc.cGS = this.cHk.getShort();
        this.cHl.cHc.cGT = this.cHk.getShort();
        k = read();
        int m;
        if ((k & 0x80) != 0)
        {
          j = 1;
          m = (int)Math.pow(2.0D, (k & 0x7) + 1);
          localObject = this.cHl.cHc;
          if ((k & 0x40) == 0) {
            break label323;
          }
          bool = true;
          ((b)localObject).cGU = bool;
          if (j == 0) {
            break label329;
          }
        }
        for (this.cHl.cHc.cGZ = ff(m);; this.cHl.cHc.cGZ = null)
        {
          this.cHl.cHc.cGY = this.cHk.position();
          read();
          HP();
          if (HR()) {
            break;
          }
          localObject = this.cHl;
          ((c)localObject).cHb += 1;
          this.cHl.cHd.add(this.cHl.cHc);
          break;
          j = 0;
          break label182;
          bool = false;
          break label217;
        }
      case 33: 
        switch (read())
        {
        default: 
          HP();
          break;
        case 249: 
          this.cHl.cHc = new b();
          read();
          j = read();
          this.cHl.cHc.cGW = ((j & 0x1C) >> 2);
          if (this.cHl.cHc.cGW == 0) {
            this.cHl.cHc.cGW = 1;
          }
          localObject = this.cHl.cHc;
          if ((j & 0x1) != 0) {}
          for (bool = true;; bool = false)
          {
            ((b)localObject).cGV = bool;
            k = this.cHk.getShort();
            j = k;
            if (k < 2) {
              j = 10;
            }
            this.cHl.cHc.delay = (j * 10);
            this.cHl.cHc.cGX = read();
            read();
            break;
          }
        case 255: 
          HQ();
          localObject = new StringBuilder();
          j = 0;
          while (j < 11)
          {
            ((StringBuilder)localObject).append((char)this.cHj[j]);
            j += 1;
          }
          if (((StringBuilder)localObject).toString().equals("NETSCAPE2.0")) {
            HO();
          } else {
            HP();
          }
          break;
        case 254: 
          HP();
          break;
        case 1: 
          HP();
        }
        break;
      case 59: 
        label217:
        label323:
        label329:
        i = 1;
      }
    }
  }
  
  public final boolean HR()
  {
    return this.cHl.status != 0;
  }
  
  public final void readHeader()
  {
    boolean bool = true;
    Object localObject = new StringBuilder();
    int i = 0;
    while (i < 6)
    {
      ((StringBuilder)localObject).append((char)read());
      i += 1;
    }
    if (!((StringBuilder)localObject).toString().startsWith("GIF"))
    {
      this.cHl.status = 1;
      return;
    }
    this.cHl.width = this.cHk.getShort();
    this.cHl.height = this.cHk.getShort();
    i = read();
    localObject = this.cHl;
    if ((i & 0x80) != 0) {}
    for (;;)
    {
      ((c)localObject).cHe = bool;
      this.cHl.cHf = ((int)Math.pow(2.0D, (i & 0x7) + 1));
      this.cHl.cHg = read();
      this.cHl.cHh = read();
      if ((!this.cHl.cHe) || (HR())) {
        break;
      }
      this.cHl.cHa = ff(this.cHl.cHf);
      this.cHl.bgColor = this.cHl.cHa[this.cHl.cHg];
      return;
      bool = false;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/b/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */