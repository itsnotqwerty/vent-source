package android.support.constraint.a;

public class b
  implements e.a
{
  h dT = null;
  public float dU = 0.0F;
  boolean dV = false;
  public final a dW;
  public boolean dX = false;
  
  public b(c paramc)
  {
    this.dW = new a(this, paramc);
  }
  
  public final b a(e parame, int paramInt)
  {
    this.dW.a(parame.g(paramInt), 1.0F);
    this.dW.a(parame.g(paramInt), -1.0F);
    return this;
  }
  
  public final b a(h paramh1, h paramh2, h paramh3, int paramInt)
  {
    int i = 0;
    int j = 0;
    if (paramInt != 0)
    {
      i = j;
      j = paramInt;
      if (paramInt < 0)
      {
        j = paramInt * -1;
        i = 1;
      }
      this.dU = j;
    }
    if (i == 0)
    {
      this.dW.a(paramh1, -1.0F);
      this.dW.a(paramh2, 1.0F);
      this.dW.a(paramh3, 1.0F);
      return this;
    }
    this.dW.a(paramh1, 1.0F);
    this.dW.a(paramh2, -1.0F);
    this.dW.a(paramh3, -1.0F);
    return this;
  }
  
  public final b a(h paramh1, h paramh2, h paramh3, h paramh4, float paramFloat)
  {
    this.dW.a(paramh1, -1.0F);
    this.dW.a(paramh2, 1.0F);
    this.dW.a(paramh3, paramFloat);
    this.dW.a(paramh4, -paramFloat);
    return this;
  }
  
  public final h a(boolean[] paramArrayOfBoolean)
  {
    return this.dW.a(paramArrayOfBoolean, null);
  }
  
  public final void a(e.a parama)
  {
    if ((parama instanceof b))
    {
      parama = (b)parama;
      this.dT = null;
      this.dW.clear();
      int i = 0;
      while (i < parama.dW.dI)
      {
        h localh = parama.dW.e(i);
        float f = parama.dW.f(i);
        this.dW.a(localh, f, true);
        i += 1;
      }
    }
  }
  
  public final h al()
  {
    return this.dT;
  }
  
  public final b b(h paramh1, h paramh2, h paramh3, int paramInt)
  {
    int i = 0;
    int j = 0;
    if (paramInt != 0)
    {
      i = j;
      j = paramInt;
      if (paramInt < 0)
      {
        j = paramInt * -1;
        i = 1;
      }
      this.dU = j;
    }
    if (i == 0)
    {
      this.dW.a(paramh1, -1.0F);
      this.dW.a(paramh2, 1.0F);
      this.dW.a(paramh3, -1.0F);
      return this;
    }
    this.dW.a(paramh1, 1.0F);
    this.dW.a(paramh2, -1.0F);
    this.dW.a(paramh3, 1.0F);
    return this;
  }
  
  public final b b(h paramh1, h paramh2, h paramh3, h paramh4, float paramFloat)
  {
    this.dW.a(paramh3, 0.5F);
    this.dW.a(paramh4, 0.5F);
    this.dW.a(paramh1, -0.5F);
    this.dW.a(paramh2, -0.5F);
    this.dU = (-paramFloat);
    return this;
  }
  
  final void c(h paramh)
  {
    if (this.dT != null)
    {
      this.dW.a(this.dT, -1.0F);
      this.dT = null;
    }
    float f = -1.0F * this.dW.a(paramh, true);
    this.dT = paramh;
    if (f == 1.0F) {}
    for (;;)
    {
      return;
      this.dU /= f;
      paramh = this.dW;
      int j = paramh.dQ;
      int i = 0;
      while ((j != -1) && (i < paramh.dI))
      {
        float[] arrayOfFloat = paramh.dP;
        arrayOfFloat[j] /= f;
        j = paramh.dO[j];
        i += 1;
      }
    }
  }
  
  public final void clear()
  {
    this.dW.clear();
    this.dT = null;
    this.dU = 0.0F;
  }
  
  public void d(h paramh)
  {
    float f = 1.0F;
    if (paramh.fe == 1) {}
    for (;;)
    {
      this.dW.a(paramh, f);
      return;
      if (paramh.fe == 2) {
        f = 1000.0F;
      } else if (paramh.fe == 3) {
        f = 1000000.0F;
      } else if (paramh.fe == 4) {
        f = 1.0E9F;
      } else if (paramh.fe == 5) {
        f = 1.0E12F;
      }
    }
  }
  
  public String toString()
  {
    String str;
    if (this.dT == null)
    {
      str = "" + "0";
      str = str + " = ";
      if (this.dU == 0.0F) {
        break label375;
      }
      str = str + this.dU;
    }
    label97:
    label177:
    label205:
    label302:
    label369:
    label372:
    label375:
    for (int i = 1;; i = 0)
    {
      int k = this.dW.dI;
      int j = 0;
      Object localObject;
      float f;
      if (j < k)
      {
        localObject = this.dW.e(j);
        if (localObject == null) {
          break label372;
        }
        f = this.dW.f(j);
        if (f == 0.0F) {
          break label372;
        }
        localObject = ((h)localObject).toString();
        if (i == 0)
        {
          if (f >= 0.0F) {
            break label369;
          }
          str = str + "- ";
          f *= -1.0F;
          if (f != 1.0F) {
            break label302;
          }
          str = str + (String)localObject;
          i = 1;
        }
      }
      for (;;)
      {
        j += 1;
        break label97;
        str = "" + this.dT;
        break;
        if (f > 0.0F)
        {
          str = str + " + ";
          break label177;
        }
        str = str + " - ";
        f *= -1.0F;
        break label177;
        str = str + f + " " + (String)localObject;
        break label205;
        localObject = str;
        if (i == 0) {
          localObject = str + "0.0";
        }
        return (String)localObject;
        break label177;
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/constraint/a/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */