package io.intercom.a.a.a.b;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.util.Log;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public class e
  implements a
{
  private static final String TAG = e.class.getSimpleName();
  private int awZ;
  private Boolean cHA;
  private Bitmap.Config cHB = Bitmap.Config.ARGB_8888;
  private byte[] cHj;
  private ByteBuffer cHk;
  private c cHl;
  private int[] cHn;
  private final int[] cHo = new int['Ā'];
  private final a.a cHp;
  private short[] cHq;
  private byte[] cHr;
  private byte[] cHs;
  private byte[] cHt;
  private int[] cHu;
  private int cHv;
  private Bitmap cHw;
  private boolean cHx;
  private int cHy;
  private int cHz;
  private int status;
  
  private e(a.a parama)
  {
    this.cHp = parama;
    this.cHl = new c();
  }
  
  public e(a.a parama, c paramc, ByteBuffer paramByteBuffer, int paramInt)
  {
    this(parama);
    a(paramc, paramByteBuffer, paramInt);
  }
  
  private Bitmap HS()
  {
    if ((this.cHA == null) || (this.cHA.booleanValue())) {}
    for (Object localObject = Bitmap.Config.ARGB_8888;; localObject = this.cHB)
    {
      localObject = this.cHp.a(this.cHz, this.cHy, (Bitmap.Config)localObject);
      ((Bitmap)localObject).setHasAlpha(true);
      return (Bitmap)localObject;
    }
  }
  
  private Bitmap a(b paramb1, b paramb2)
  {
    int[] arrayOfInt = this.cHu;
    if (paramb2 == null)
    {
      if (this.cHw != null) {
        this.cHp.f(this.cHw);
      }
      this.cHw = null;
      Arrays.fill(arrayOfInt, 0);
    }
    if ((paramb2 != null) && (paramb2.cGW == 3) && (this.cHw == null)) {
      Arrays.fill(arrayOfInt, 0);
    }
    int j;
    int n;
    int k;
    if ((paramb2 != null) && (paramb2.cGW > 0))
    {
      if (paramb2.cGW == 2)
      {
        j = 0;
        if (!paramb1.cGV)
        {
          j = this.cHl.bgColor;
          i = j;
          if (paramb1.cGZ != null)
          {
            i = j;
            if (this.cHl.cHg == paramb1.cGX) {
              i = 0;
            }
          }
          n = paramb2.cGT / this.awZ;
          j = paramb2.cGR / this.awZ;
          i1 = paramb2.cGS / this.awZ;
          k = paramb2.cGQ / this.awZ;
          m = j * this.cHz + k;
          i2 = this.cHz;
          j = m;
        }
        for (;;)
        {
          if (j >= m + n * i2) {
            break label316;
          }
          k = j;
          for (;;)
          {
            if (k < j + i1)
            {
              arrayOfInt[k] = i;
              k += 1;
              continue;
              i = j;
              if (this.cHv != 0) {
                break;
              }
              this.cHA = Boolean.valueOf(true);
              i = j;
              break;
            }
          }
          j += this.cHz;
        }
      }
      if ((paramb2.cGW == 3) && (this.cHw != null)) {
        this.cHw.getPixels(arrayOfInt, 0, this.cHz, 0, 0, this.cHz, this.cHy);
      }
    }
    label316:
    if (paramb1 != null) {
      this.cHk.position(paramb1.cGY);
    }
    if (paramb1 == null) {}
    Object localObject1;
    Object localObject2;
    byte[] arrayOfByte;
    int i13;
    int i14;
    for (int i7 = this.cHl.width * this.cHl.height;; i7 = paramb1.cGS * paramb1.cGT)
    {
      if ((this.cHt == null) || (this.cHt.length < i7)) {
        this.cHt = this.cHp.fd(i7);
      }
      paramb2 = this.cHt;
      if (this.cHq == null) {
        this.cHq = new short['က'];
      }
      localObject1 = this.cHq;
      if (this.cHr == null) {
        this.cHr = new byte['က'];
      }
      localObject2 = this.cHr;
      if (this.cHs == null) {
        this.cHs = new byte['ခ'];
      }
      arrayOfByte = this.cHs;
      i13 = readByte();
      i14 = 1 << i13;
      n = i14 + 2;
      i1 = -1;
      k = i13 + 1;
      j = (1 << k) - 1;
      i = 0;
      while (i < i14)
      {
        localObject1[i] = 0;
        localObject2[i] = ((byte)i);
        i += 1;
      }
    }
    Object localObject3 = this.cHj;
    int i11 = 0;
    int i4 = 0;
    int i3 = 0;
    int m = 0;
    int i2 = 0;
    int i6 = 0;
    int i10 = 0;
    int i5 = 0;
    int i = i1;
    int i1 = i6;
    for (;;)
    {
      int i9;
      if (i11 < i7)
      {
        i9 = m;
        i8 = i5;
        if (m != 0) {
          break label1002;
        }
        i9 = readByte();
        if (i9 > 0) {
          break label971;
        }
      }
      int i19;
      while (i9 <= 0)
      {
        this.status = 3;
        Arrays.fill(paramb2, i10, i7, (byte)0);
        if ((!paramb1.cGU) && (this.awZ == 1)) {
          break label2091;
        }
        localObject2 = this.cHu;
        int i15 = paramb1.cGT / this.awZ;
        int i16 = paramb1.cGR / this.awZ;
        int i17 = paramb1.cGS / this.awZ;
        int i18 = paramb1.cGQ / this.awZ;
        k = 1;
        j = 8;
        m = 0;
        if (this.cHv != 0) {
          break label1366;
        }
        i6 = 1;
        i19 = this.awZ;
        int i20 = this.cHz;
        int i21 = this.cHy;
        arrayOfByte = this.cHt;
        localObject3 = this.cHn;
        paramb2 = this.cHA;
        i1 = 0;
        if (i1 >= i15) {
          break label1970;
        }
        if (!paramb1.cGU) {
          break label2350;
        }
        i = m;
        n = j;
        i2 = k;
        if (m >= i15) {
          i2 = k + 1;
        }
        switch (i2)
        {
        default: 
          n = j;
          i = m;
          label815:
          m = i;
          k = i + n;
          j = n;
          i = i2;
          label831:
          n = m + i16;
          if (i19 != 1) {
            break label1397;
          }
          m = 1;
          label847:
          localObject1 = paramb2;
          if (n >= i21) {
            break label1440;
          }
          i3 = n * i20;
          n = i3 + i18;
          i2 = n + i17;
          i7 = i2;
          if (i3 + i20 < i2) {
            i7 = i3 + i20;
          }
          i2 = i1 * i19 * paramb1.cGS;
          if (m == 0) {
            break label1459;
          }
          for (;;)
          {
            if (n >= i7) {
              break label1437;
            }
            m = localObject3[(arrayOfByte[i2] & 0xFF)];
            if (m == 0) {
              break;
            }
            localObject2[n] = m;
            localObject1 = paramb2;
            label952:
            i2 += i19;
            n += 1;
            paramb2 = (b)localObject1;
          }
          label971:
          this.cHk.get(this.cHj, 0, Math.min(i9, this.cHk.remaining()));
        }
      }
      int i8 = 0;
      label1002:
      i6 = ((localObject3[i8] & 0xFF) << i3) + i4;
      i5 = i3 + 8;
      for (;;)
      {
        label1026:
        i4 = i6;
        i3 = i5;
        if (i5 < k) {
          break label2391;
        }
        m = i6 & j;
        i6 >>= k;
        i5 -= k;
        if (m == i14)
        {
          k = i13 + 1;
          j = (1 << k) - 1;
          n = i14 + 2;
          i = -1;
        }
        else
        {
          i4 = i6;
          i3 = i5;
          if (m == i14 + 1) {
            break label2391;
          }
          if (i != -1) {
            break;
          }
          arrayOfByte[i1] = localObject2[m];
          i1 += 1;
          i2 = m;
          i = m;
        }
      }
      if (m >= n)
      {
        arrayOfByte[i1] = ((byte)i2);
        i1 += 1;
        i2 = i;
      }
      for (;;)
      {
        if (i2 >= i14)
        {
          arrayOfByte[i1] = localObject2[i2];
          i1 += 1;
          i2 = localObject1[i2];
        }
        else
        {
          int i12 = localObject2[i2] & 0xFF;
          paramb2[i10] = ((byte)i12);
          i3 = i10 + 1;
          i4 = i11 + 1;
          i2 = i1;
          i1 = i4;
          while (i2 > 0)
          {
            i2 -= 1;
            paramb2[i3] = arrayOfByte[i2];
            i3 += 1;
            i1 += 1;
          }
          i4 = n;
          if (n < 4096)
          {
            localObject1[n] = ((short)i);
            localObject2[n] = ((byte)i12);
            n += 1;
            i4 = n;
            if ((n & j) == 0)
            {
              i4 = n;
              if (n < 4096)
              {
                i = k + 1;
                j += n;
              }
            }
          }
          for (;;)
          {
            k = i;
            i = m;
            i11 = i1;
            i1 = i2;
            i2 = i12;
            i10 = i3;
            break label1026;
            label1366:
            i6 = 0;
            break;
            i = 4;
            n = j;
            break label815;
            i = 2;
            n = 4;
            break label815;
            i = 1;
            n = 2;
            break label815;
            label1397:
            m = 0;
            break label847;
            localObject1 = paramb2;
            if (paramb2 != null) {
              break label952;
            }
            localObject1 = paramb2;
            if (i6 == 0) {
              break label952;
            }
            localObject1 = paramb2;
            if (paramb2.booleanValue()) {
              break label952;
            }
            localObject1 = Boolean.valueOf(true);
            break label952;
            label1437:
            localObject1 = paramb2;
            label1440:
            label1459:
            int i22;
            do
            {
              i1 += 1;
              m = k;
              k = i;
              paramb2 = (b)localObject1;
              break;
              i22 = i2 + (i7 - n) * i19;
              i8 = n;
              m = i2;
              localObject1 = paramb2;
            } while (i8 >= i7);
            int i23 = paramb1.cGS;
            i5 = 0;
            i4 = 0;
            i3 = 0;
            i2 = 0;
            n = 0;
            i9 = m;
            int i24;
            while ((i9 < this.awZ + m) && (i9 < this.cHt.length) && (i9 < i22))
            {
              i10 = this.cHt[i9];
              i24 = this.cHn[(i10 & 0xFF)];
              i14 = n;
              i13 = i2;
              i12 = i3;
              i11 = i4;
              i10 = i5;
              if (i24 != 0)
              {
                i10 = i5 + (i24 >> 24 & 0xFF);
                i11 = i4 + (i24 >> 16 & 0xFF);
                i12 = i3 + (i24 >> 8 & 0xFF);
                i13 = i2 + (i24 & 0xFF);
                i14 = n + 1;
              }
              i9 += 1;
              n = i14;
              i2 = i13;
              i3 = i12;
              i4 = i11;
              i5 = i10;
            }
            i10 = m + i23;
            i9 = i5;
            i5 = i4;
            i4 = i3;
            i3 = i2;
            i2 = n;
            n = i10;
            while ((n < m + i23 + this.awZ) && (n < this.cHt.length) && (n < i22))
            {
              i10 = this.cHt[n];
              i24 = this.cHn[(i10 & 0xFF)];
              i14 = i2;
              i13 = i3;
              i12 = i4;
              i11 = i5;
              i10 = i9;
              if (i24 != 0)
              {
                i10 = i9 + (i24 >> 24 & 0xFF);
                i11 = i5 + (i24 >> 16 & 0xFF);
                i12 = i4 + (i24 >> 8 & 0xFF);
                i13 = i3 + (i24 & 0xFF);
                i14 = i2 + 1;
              }
              n += 1;
              i2 = i14;
              i3 = i13;
              i4 = i12;
              i5 = i11;
              i9 = i10;
            }
            if (i2 == 0)
            {
              n = 0;
              label1885:
              if (n == 0) {
                break label1950;
              }
              localObject2[i8] = n;
            }
            for (;;)
            {
              m += i19;
              i8 += 1;
              break;
              n = i9 / i2 << 24 | i5 / i2 << 16 | i4 / i2 << 8 | i3 / i2;
              break label1885;
              label1950:
              if ((i6 != 0) && (!paramb2.booleanValue()))
              {
                paramb2 = Boolean.valueOf(true);
                continue;
                label1970:
                if (this.cHA == null) {
                  if (paramb2 != null) {
                    break label2082;
                  }
                }
                label2082:
                for (boolean bool = false;; bool = paramb2.booleanValue())
                {
                  this.cHA = Boolean.valueOf(bool);
                  if ((this.cHx) && ((paramb1.cGW == 0) || (paramb1.cGW == 1)))
                  {
                    if (this.cHw == null) {
                      this.cHw = HS();
                    }
                    this.cHw.setPixels(arrayOfInt, 0, this.cHz, 0, 0, this.cHz, this.cHy);
                  }
                  paramb1 = HS();
                  paramb1.setPixels(arrayOfInt, 0, this.cHz, 0, 0, this.cHz, this.cHy);
                  return paramb1;
                }
                label2091:
                paramb2 = this.cHu;
                i4 = paramb1.cGT;
                i5 = paramb1.cGR;
                i6 = paramb1.cGS;
                i7 = paramb1.cGQ;
                if (this.cHv == 0)
                {
                  i = 1;
                  i8 = this.cHz;
                  localObject1 = this.cHt;
                  localObject2 = this.cHn;
                  m = -1;
                  j = 0;
                }
                for (;;)
                {
                  if (j >= i4) {
                    break label2309;
                  }
                  i2 = (j + i5) * i8;
                  i1 = i2 + i7;
                  n = i1 + i6;
                  k = n;
                  if (i2 + i8 < n) {
                    k = i2 + i8;
                  }
                  n = paramb1.cGS * j;
                  label2214:
                  if (i1 < k)
                  {
                    i3 = localObject1[n];
                    i9 = i3 & 0xFF;
                    i2 = m;
                    if (i9 != m)
                    {
                      i2 = localObject2[i9];
                      if (i2 == 0) {
                        break label2293;
                      }
                      paramb2[i1] = i2;
                    }
                    label2293:
                    for (i2 = m;; i2 = i3)
                    {
                      i1 += 1;
                      n += 1;
                      m = i2;
                      break label2214;
                      i = 0;
                      break;
                    }
                  }
                  j += 1;
                }
                label2309:
                if ((this.cHA == null) && (i != 0) && (m != -1)) {}
                for (bool = true;; bool = false)
                {
                  this.cHA = Boolean.valueOf(bool);
                  break;
                }
              }
            }
            label2350:
            i = i1;
            n = m;
            i2 = k;
            m = i;
            k = n;
            i = i2;
            break label831;
            i = k;
            n = i4;
          }
          i2 = m;
        }
      }
      label2391:
      m = i9 - 1;
      i5 = i8 + 1;
    }
  }
  
  private void a(c paramc, ByteBuffer paramByteBuffer, int paramInt)
  {
    if (paramInt <= 0) {
      try
      {
        throw new IllegalArgumentException("Sample size must be >=0, not: " + paramInt);
      }
      finally {}
    }
    paramInt = Integer.highestOneBit(paramInt);
    this.status = 0;
    this.cHl = paramc;
    this.cHv = -1;
    this.cHk = paramByteBuffer.asReadOnlyBuffer();
    this.cHk.position(0);
    this.cHk.order(ByteOrder.LITTLE_ENDIAN);
    this.cHx = false;
    paramByteBuffer = paramc.cHd.iterator();
    while (paramByteBuffer.hasNext()) {
      if (((b)paramByteBuffer.next()).cGW == 3) {
        this.cHx = true;
      }
    }
    this.awZ = paramInt;
    this.cHz = (paramc.width / paramInt);
    this.cHy = (paramc.height / paramInt);
    this.cHt = this.cHp.fd(paramc.width * paramc.height);
    this.cHu = this.cHp.fe(this.cHz * this.cHy);
  }
  
  private int readByte()
  {
    return this.cHk.get() & 0xFF;
  }
  
  public final int HI()
  {
    int i;
    if ((this.cHl.cHb <= 0) || (this.cHv < 0)) {
      i = 0;
    }
    int k;
    do
    {
      int j;
      do
      {
        return i;
        k = this.cHv;
        j = -1;
        i = j;
      } while (k < 0);
      i = j;
    } while (k >= this.cHl.cHb);
    return ((b)this.cHl.cHd.get(k)).delay;
  }
  
  public final int HJ()
  {
    return this.cHv;
  }
  
  public final void HK()
  {
    this.cHv = -1;
  }
  
  public final int HL()
  {
    return this.cHk.limit() + this.cHt.length + this.cHu.length * 4;
  }
  
  public final Bitmap HM()
  {
    for (;;)
    {
      try
      {
        if ((this.cHl.cHb <= 0) || (this.cHv < 0))
        {
          if (Log.isLoggable(TAG, 3)) {
            Log.d(TAG, "Unable to decode frame, frameCount=" + this.cHl.cHb + ", framePointer=" + this.cHv);
          }
          this.status = 1;
        }
        Object localObject1;
        if ((this.status == 1) || (this.status == 2))
        {
          if (Log.isLoggable(TAG, 3)) {
            Log.d(TAG, "Unable to decode frame, status=" + this.status);
          }
          localObject1 = null;
          return (Bitmap)localObject1;
        }
        this.status = 0;
        if (this.cHj == null) {
          this.cHj = this.cHp.fd(255);
        }
        b localb = (b)this.cHl.cHd.get(this.cHv);
        int i = this.cHv - 1;
        if (i >= 0)
        {
          localObject1 = (b)this.cHl.cHd.get(i);
          int[] arrayOfInt;
          if (localb.cGZ != null)
          {
            arrayOfInt = localb.cGZ;
            this.cHn = arrayOfInt;
            if (this.cHn == null)
            {
              if (Log.isLoggable(TAG, 3)) {
                Log.d(TAG, "No valid color table found for frame #" + this.cHv);
              }
              this.status = 1;
              localObject1 = null;
            }
          }
          else
          {
            arrayOfInt = this.cHl.cHa;
            continue;
          }
          if (localb.cGV)
          {
            System.arraycopy(this.cHn, 0, this.cHo, 0, this.cHn.length);
            this.cHn = this.cHo;
            this.cHn[localb.cGX] = 0;
          }
          localObject1 = a(localb, (b)localObject1);
        }
        else
        {
          Object localObject3 = null;
        }
      }
      finally {}
    }
  }
  
  public final void a(Bitmap.Config paramConfig)
  {
    if ((paramConfig != Bitmap.Config.ARGB_8888) && (paramConfig != Bitmap.Config.RGB_565)) {
      throw new IllegalArgumentException("Unsupported format: " + paramConfig + ", must be one of " + Bitmap.Config.ARGB_8888 + " or " + Bitmap.Config.RGB_565);
    }
    this.cHB = paramConfig;
  }
  
  public final void advance()
  {
    this.cHv = ((this.cHv + 1) % this.cHl.cHb);
  }
  
  public final void clear()
  {
    this.cHl = null;
    if (this.cHt != null) {
      this.cHp.B(this.cHt);
    }
    if (this.cHu != null) {
      this.cHp.h(this.cHu);
    }
    if (this.cHw != null) {
      this.cHp.f(this.cHw);
    }
    this.cHw = null;
    this.cHk = null;
    this.cHA = null;
    if (this.cHj != null) {
      this.cHp.B(this.cHj);
    }
  }
  
  public final ByteBuffer getData()
  {
    return this.cHk;
  }
  
  public final int getFrameCount()
  {
    return this.cHl.cHb;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/b/e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */