package com.layer.sdk.internal.lsdkj;

import com.layer.a.c.b;
import com.layer.a.c.b.a;
import com.layer.b.d.k;
import com.layer.sdk.exceptions.LayerException;
import com.layer.sdk.exceptions.LayerException.Type;
import java.util.concurrent.TimeUnit;

public class g
  extends b<a, Void>
{
  public g(b.a parama, a parama1)
  {
    super(parama, parama1);
  }
  
  protected Void a(a parama)
  {
    a.b(parama).f();
    if (a.b(parama).g() != null) {
      try
      {
        for (;;)
        {
          int i = a.b(parama).g().intValue();
          if (i <= 0) {
            break;
          }
          try
          {
            TimeUnit.MILLISECONDS.sleep(10L);
          }
          catch (InterruptedException localInterruptedException) {}
        }
        return null;
      }
      catch (NullPointerException parama)
      {
        throw new LayerException(LayerException.Type.UNKNOWN, parama);
      }
    }
  }
  
  public static class a
  {
    private final k a;
    
    public a(k paramk)
    {
      this.a = paramk;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkj/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */