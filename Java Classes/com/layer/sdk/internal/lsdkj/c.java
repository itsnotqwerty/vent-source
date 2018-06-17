package com.layer.sdk.internal.lsdkj;

import com.layer.a.c.b;
import com.layer.a.c.b.a;
import com.layer.b.d.k;
import com.layer.sdk.exceptions.LayerException;
import com.layer.sdk.exceptions.LayerException.Type;

public class c
  extends b<a, Void>
{
  public c(b.a parama, a parama1)
  {
    super(parama, parama1);
  }
  
  protected Void a(a parama)
    throws Exception
  {
    try
    {
      a.b(parama).k();
      return null;
    }
    catch (Exception parama)
    {
      throw new LayerException(LayerException.Type.UNKNOWN, "Could not begin push", parama);
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


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkj/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */