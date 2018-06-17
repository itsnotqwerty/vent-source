package io.intercom.a.a.a.c.b.a;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import io.intercom.a.a.a.i.i;

final class c
  implements l
{
  private final b cLg = new b();
  private final h<a, Bitmap> cLh = new h();
  
  static String c(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
  {
    return "[" + paramInt1 + "x" + paramInt2 + "], " + paramConfig;
  }
  
  public final Bitmap Ix()
  {
    return (Bitmap)this.cLh.removeLast();
  }
  
  public final String b(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
  {
    return c(paramInt1, paramInt2, paramConfig);
  }
  
  public final void g(Bitmap paramBitmap)
  {
    a locala = this.cLg.d(paramBitmap.getWidth(), paramBitmap.getHeight(), paramBitmap.getConfig());
    this.cLh.a(locala, paramBitmap);
  }
  
  public final Bitmap get(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
  {
    paramConfig = this.cLg.d(paramInt1, paramInt2, paramConfig);
    return (Bitmap)this.cLh.b(paramConfig);
  }
  
  public final String h(Bitmap paramBitmap)
  {
    return c(paramBitmap.getWidth(), paramBitmap.getHeight(), paramBitmap.getConfig());
  }
  
  public final int i(Bitmap paramBitmap)
  {
    return i.l(paramBitmap);
  }
  
  public final String toString()
  {
    return "AttributeStrategy:\n  " + this.cLh;
  }
  
  static final class a
    implements m
  {
    Bitmap.Config bOP;
    private final c.b cLi;
    int height;
    int width;
    
    public a(c.b paramb)
    {
      this.cLi = paramb;
    }
    
    public final void Iy()
    {
      this.cLi.a(this);
    }
    
    public final boolean equals(Object paramObject)
    {
      boolean bool2 = false;
      boolean bool1 = bool2;
      if ((paramObject instanceof a))
      {
        paramObject = (a)paramObject;
        bool1 = bool2;
        if (this.width == ((a)paramObject).width)
        {
          bool1 = bool2;
          if (this.height == ((a)paramObject).height)
          {
            bool1 = bool2;
            if (this.bOP == ((a)paramObject).bOP) {
              bool1 = true;
            }
          }
        }
      }
      return bool1;
    }
    
    public final int hashCode()
    {
      int j = this.width;
      int k = this.height;
      if (this.bOP != null) {}
      for (int i = this.bOP.hashCode();; i = 0) {
        return i + (j * 31 + k) * 31;
      }
    }
    
    public final String toString()
    {
      return c.c(this.width, this.height, this.bOP);
    }
  }
  
  static final class b
    extends d<c.a>
  {
    final c.a d(int paramInt1, int paramInt2, Bitmap.Config paramConfig)
    {
      c.a locala = (c.a)IA();
      locala.width = paramInt1;
      locala.height = paramInt2;
      locala.bOP = paramConfig;
      return locala;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/b/a/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */