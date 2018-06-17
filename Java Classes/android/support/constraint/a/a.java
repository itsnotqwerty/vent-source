package android.support.constraint.a;

import java.util.Arrays;

public final class a
{
  int dI = 0;
  final b dJ;
  final c dK;
  private int dL = 8;
  private h dM = null;
  int[] dN = new int[this.dL];
  int[] dO = new int[this.dL];
  float[] dP = new float[this.dL];
  int dQ = -1;
  private int dR = -1;
  private boolean dS = false;
  
  a(b paramb, c paramc)
  {
    this.dJ = paramb;
    this.dK = paramc;
  }
  
  static boolean a(h paramh)
  {
    return paramh.fk <= 1;
  }
  
  public final float a(h paramh, boolean paramBoolean)
  {
    if (this.dM == paramh) {
      this.dM = null;
    }
    if (this.dQ == -1) {}
    for (;;)
    {
      return 0.0F;
      int i = this.dQ;
      int j = 0;
      int k = -1;
      while ((i != -1) && (j < this.dI))
      {
        if (this.dN[i] == paramh.id)
        {
          if (i == this.dQ) {
            this.dQ = this.dO[i];
          }
          for (;;)
          {
            if (paramBoolean) {
              paramh.e(this.dJ);
            }
            paramh.fk -= 1;
            this.dI -= 1;
            this.dN[i] = -1;
            if (this.dS) {
              this.dR = i;
            }
            return this.dP[i];
            this.dO[k] = this.dO[i];
          }
        }
        int m = this.dO[i];
        j += 1;
        k = i;
        i = m;
      }
    }
  }
  
  final h a(boolean[] paramArrayOfBoolean, h paramh)
  {
    int j = this.dQ;
    Object localObject1 = null;
    float f1 = 0.0F;
    int i = 0;
    while ((j != -1) && (i < this.dI))
    {
      float f2 = f1;
      Object localObject2 = localObject1;
      if (this.dP[j] < 0.0F)
      {
        h localh = this.dK.ea[this.dN[j]];
        if (paramArrayOfBoolean != null)
        {
          f2 = f1;
          localObject2 = localObject1;
          if (paramArrayOfBoolean[localh.id] != 0) {}
        }
        else
        {
          f2 = f1;
          localObject2 = localObject1;
          if (localh != paramh) {
            if (localh.fh != h.a.fn)
            {
              f2 = f1;
              localObject2 = localObject1;
              if (localh.fh != h.a.fo) {}
            }
            else
            {
              float f3 = this.dP[j];
              f2 = f1;
              localObject2 = localObject1;
              if (f3 < f1)
              {
                f2 = f3;
                localObject2 = localh;
              }
            }
          }
        }
      }
      j = this.dO[j];
      i += 1;
      f1 = f2;
      localObject1 = localObject2;
    }
    return (h)localObject1;
  }
  
  public final void a(h paramh, float paramFloat)
  {
    if (paramFloat == 0.0F) {
      a(paramh, true);
    }
    do
    {
      do
      {
        return;
        if (this.dQ != -1) {
          break;
        }
        this.dQ = 0;
        this.dP[this.dQ] = paramFloat;
        this.dN[this.dQ] = paramh.id;
        this.dO[this.dQ] = -1;
        paramh.fk += 1;
        paramh.d(this.dJ);
        this.dI += 1;
      } while (this.dS);
      this.dR += 1;
    } while (this.dR < this.dN.length);
    this.dS = true;
    this.dR = (this.dN.length - 1);
    return;
    int i = this.dQ;
    int j = 0;
    int m = -1;
    while ((i != -1) && (j < this.dI))
    {
      if (this.dN[i] == paramh.id)
      {
        this.dP[i] = paramFloat;
        return;
      }
      if (this.dN[i] < paramh.id) {
        m = i;
      }
      i = this.dO[i];
      j += 1;
    }
    i = this.dR + 1;
    label244:
    int k;
    if (this.dS)
    {
      if (this.dN[this.dR] == -1) {
        i = this.dR;
      }
    }
    else
    {
      j = i;
      if (i >= this.dN.length)
      {
        j = i;
        if (this.dI < this.dN.length)
        {
          k = 0;
          label274:
          j = i;
          if (k < this.dN.length)
          {
            if (this.dN[k] != -1) {
              break label532;
            }
            j = k;
          }
        }
      }
      i = j;
      if (j >= this.dN.length)
      {
        i = this.dN.length;
        this.dL *= 2;
        this.dS = false;
        this.dR = (i - 1);
        this.dP = Arrays.copyOf(this.dP, this.dL);
        this.dN = Arrays.copyOf(this.dN, this.dL);
        this.dO = Arrays.copyOf(this.dO, this.dL);
      }
      this.dN[i] = paramh.id;
      this.dP[i] = paramFloat;
      if (m == -1) {
        break label541;
      }
      this.dO[i] = this.dO[m];
      this.dO[m] = i;
    }
    for (;;)
    {
      paramh.fk += 1;
      paramh.d(this.dJ);
      this.dI += 1;
      if (!this.dS) {
        this.dR += 1;
      }
      if (this.dI >= this.dN.length) {
        this.dS = true;
      }
      if (this.dR < this.dN.length) {
        break;
      }
      this.dS = true;
      this.dR = (this.dN.length - 1);
      return;
      i = this.dN.length;
      break label244;
      label532:
      k += 1;
      break label274;
      label541:
      this.dO[i] = this.dQ;
      this.dQ = i;
    }
  }
  
  final void a(h paramh, float paramFloat, boolean paramBoolean)
  {
    if (paramFloat == 0.0F) {}
    do
    {
      do
      {
        return;
        if (this.dQ != -1) {
          break;
        }
        this.dQ = 0;
        this.dP[this.dQ] = paramFloat;
        this.dN[this.dQ] = paramh.id;
        this.dO[this.dQ] = -1;
        paramh.fk += 1;
        paramh.d(this.dJ);
        this.dI += 1;
      } while (this.dS);
      this.dR += 1;
    } while (this.dR < this.dN.length);
    this.dS = true;
    this.dR = (this.dN.length - 1);
    return;
    int i = this.dQ;
    int j = 0;
    int m = -1;
    for (;;)
    {
      if ((i == -1) || (j >= this.dI)) {
        break label317;
      }
      if (this.dN[i] == paramh.id)
      {
        float[] arrayOfFloat = this.dP;
        arrayOfFloat[i] += paramFloat;
        if (this.dP[i] != 0.0F) {
          break;
        }
        if (i == this.dQ) {
          this.dQ = this.dO[i];
        }
        for (;;)
        {
          if (paramBoolean) {
            paramh.e(this.dJ);
          }
          if (this.dS) {
            this.dR = i;
          }
          paramh.fk -= 1;
          this.dI -= 1;
          return;
          this.dO[m] = this.dO[i];
        }
      }
      if (this.dN[i] < paramh.id) {
        m = i;
      }
      i = this.dO[i];
      j += 1;
    }
    label317:
    i = this.dR + 1;
    label351:
    int k;
    if (this.dS)
    {
      if (this.dN[this.dR] == -1) {
        i = this.dR;
      }
    }
    else
    {
      j = i;
      if (i >= this.dN.length)
      {
        j = i;
        if (this.dI < this.dN.length)
        {
          k = 0;
          label384:
          j = i;
          if (k < this.dN.length)
          {
            if (this.dN[k] != -1) {
              break label634;
            }
            j = k;
          }
        }
      }
      i = j;
      if (j >= this.dN.length)
      {
        i = this.dN.length;
        this.dL *= 2;
        this.dS = false;
        this.dR = (i - 1);
        this.dP = Arrays.copyOf(this.dP, this.dL);
        this.dN = Arrays.copyOf(this.dN, this.dL);
        this.dO = Arrays.copyOf(this.dO, this.dL);
      }
      this.dN[i] = paramh.id;
      this.dP[i] = paramFloat;
      if (m == -1) {
        break label643;
      }
      this.dO[i] = this.dO[m];
      this.dO[m] = i;
    }
    for (;;)
    {
      paramh.fk += 1;
      paramh.d(this.dJ);
      this.dI += 1;
      if (!this.dS) {
        this.dR += 1;
      }
      if (this.dR < this.dN.length) {
        break;
      }
      this.dS = true;
      this.dR = (this.dN.length - 1);
      return;
      i = this.dN.length;
      break label351;
      label634:
      k += 1;
      break label384;
      label643:
      this.dO[i] = this.dQ;
      this.dQ = i;
    }
  }
  
  public final float b(h paramh)
  {
    int j = this.dQ;
    int i = 0;
    while ((j != -1) && (i < this.dI))
    {
      if (this.dN[j] == paramh.id) {
        return this.dP[j];
      }
      j = this.dO[j];
      i += 1;
    }
    return 0.0F;
  }
  
  public final void clear()
  {
    int j = this.dQ;
    int i = 0;
    while ((j != -1) && (i < this.dI))
    {
      h localh = this.dK.ea[this.dN[j]];
      if (localh != null) {
        localh.e(this.dJ);
      }
      j = this.dO[j];
      i += 1;
    }
    this.dQ = -1;
    this.dR = -1;
    this.dS = false;
    this.dI = 0;
  }
  
  final h e(int paramInt)
  {
    int j = this.dQ;
    int i = 0;
    while ((j != -1) && (i < this.dI))
    {
      if (i == paramInt) {
        return this.dK.ea[this.dN[j]];
      }
      j = this.dO[j];
      i += 1;
    }
    return null;
  }
  
  final float f(int paramInt)
  {
    int j = this.dQ;
    int i = 0;
    while ((j != -1) && (i < this.dI))
    {
      if (i == paramInt) {
        return this.dP[j];
      }
      j = this.dO[j];
      i += 1;
    }
    return 0.0F;
  }
  
  public final String toString()
  {
    String str = "";
    int j = this.dQ;
    int i = 0;
    while ((j != -1) && (i < this.dI))
    {
      str = str + " -> ";
      str = str + this.dP[j] + " : ";
      str = str + this.dK.ea[this.dN[j]];
      j = this.dO[j];
      i += 1;
    }
    return str;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/constraint/a/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */