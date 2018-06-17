package com.google.android.gms.internal;

import java.io.IOException;
import java.util.List;

public abstract class mx<M extends mx<M>>
  extends nd
{
  protected mz aZO;
  
  public void a(mv parammv)
    throws IOException
  {
    if (this.aZO == null) {}
    for (;;)
    {
      return;
      int i = 0;
      while (i < this.aZO.ai)
      {
        this.aZO.aZU[i].a(parammv);
        i += 1;
      }
    }
  }
  
  protected final boolean a(mu parammu, int paramInt)
    throws IOException
  {
    int j = parammu.getPosition();
    if (!parammu.cU(paramInt)) {
      return false;
    }
    int i = paramInt >>> 3;
    int k = parammu.getPosition() - j;
    nf localnf;
    label69:
    Object localObject;
    if (k == 0)
    {
      parammu = ng.bak;
      localnf = new nf(paramInt, parammu);
      if (this.aZO != null) {
        break label158;
      }
      this.aZO = new mz();
      parammu = null;
      localObject = parammu;
      if (parammu == null)
      {
        localObject = new na();
        parammu = this.aZO;
        paramInt = parammu.dc(i);
        if (paramInt < 0) {
          break label200;
        }
        parammu.aZU[paramInt] = localObject;
      }
    }
    for (;;)
    {
      ((na)localObject).aZW.add(localnf);
      return true;
      localObject = new byte[k];
      int m = parammu.aZD;
      System.arraycopy(parammu.buffer, j + m, localObject, 0, k);
      parammu = (mu)localObject;
      break;
      label158:
      parammu = this.aZO;
      paramInt = parammu.dc(i);
      if ((paramInt < 0) || (parammu.aZU[paramInt] == mz.aZR))
      {
        parammu = null;
        break label69;
      }
      parammu = parammu.aZU[paramInt];
      break label69;
      label200:
      paramInt ^= 0xFFFFFFFF;
      if ((paramInt < parammu.ai) && (parammu.aZU[paramInt] == mz.aZR))
      {
        parammu.aZT[paramInt] = i;
        parammu.aZU[paramInt] = localObject;
      }
      else
      {
        if (parammu.ai >= parammu.aZT.length)
        {
          j = mz.ap(parammu.ai + 1);
          int[] arrayOfInt = new int[j];
          na[] arrayOfna = new na[j];
          System.arraycopy(parammu.aZT, 0, arrayOfInt, 0, parammu.aZT.length);
          System.arraycopy(parammu.aZU, 0, arrayOfna, 0, parammu.aZU.length);
          parammu.aZT = arrayOfInt;
          parammu.aZU = arrayOfna;
        }
        if (parammu.ai - paramInt != 0)
        {
          System.arraycopy(parammu.aZT, paramInt, parammu.aZT, paramInt + 1, parammu.ai - paramInt);
          System.arraycopy(parammu.aZU, paramInt, parammu.aZU, paramInt + 1, parammu.ai - paramInt);
        }
        parammu.aZT[paramInt] = i;
        parammu.aZU[paramInt] = localObject;
        parammu.ai += 1;
      }
    }
  }
  
  protected int st()
  {
    if (this.aZO != null)
    {
      int j = 0;
      for (int i = 0;; i = k + i)
      {
        k = i;
        if (j >= this.aZO.ai) {
          break;
        }
        k = this.aZO.aZU[j].st();
        j += 1;
      }
    }
    int k = 0;
    return k;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/mx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */