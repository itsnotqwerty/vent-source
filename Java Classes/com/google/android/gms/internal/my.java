package com.google.android.gms.internal;

import java.io.IOException;

public final class my<M extends mx<M>, T>
{
  protected final Class<T> aZP;
  protected final boolean aZQ;
  public final int tag;
  private int type;
  
  protected final int W(Object paramObject)
  {
    int i = this.tag >>> 3;
    switch (this.type)
    {
    default: 
      i = this.type;
      throw new IllegalArgumentException(24 + "Unknown type " + i);
    case 10: 
      paramObject = (nd)paramObject;
      return (mv.db(i << 3) << 1) + ((nd)paramObject).sZ();
    }
    return mv.b(i, (nd)paramObject);
  }
  
  protected final void a(Object paramObject, mv parammv)
  {
    for (;;)
    {
      try
      {
        parammv.da(this.tag);
        switch (this.type)
        {
        case 10: 
          i = this.type;
          throw new IllegalArgumentException(24 + "Unknown type " + i);
        }
      }
      catch (IOException paramObject)
      {
        throw new IllegalStateException((Throwable)paramObject);
      }
      int i = this.tag;
      ((nd)paramObject).a(parammv);
      parammv.ay(i >>> 3, 4);
      return;
      parammv.b((nd)paramObject);
      return;
    }
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof my)) {
        return false;
      }
      paramObject = (my)paramObject;
    } while ((this.type == ((my)paramObject).type) && (this.aZP == ((my)paramObject).aZP) && (this.tag == ((my)paramObject).tag) && (this.aZQ == ((my)paramObject).aZQ));
    return false;
  }
  
  public final int hashCode()
  {
    int j = this.type;
    int k = this.aZP.hashCode();
    int m = this.tag;
    if (this.aZQ) {}
    for (int i = 1;; i = 0) {
      return i + (((j + 1147) * 31 + k) * 31 + m) * 31;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/my.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */