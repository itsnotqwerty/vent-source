package com.layer.sdk.internal.lsdkd;

import com.layer.sdk.internal.lsdkc.a;
import com.layer.sdk.internal.lsdkd.lsdka.e;
import com.layer.sdk.internal.lsdke.b;

public abstract interface h
{
  public abstract a g();
  
  public abstract String i();
  
  public abstract e j();
  
  public abstract b l();
  
  public abstract f m();
  
  public abstract i n();
  
  public static class a
    implements h
  {
    final h a;
    final f b;
    
    public a(h paramh)
    {
      this.a = paramh;
      this.b = new f(this);
    }
    
    public a g()
    {
      return this.a.g();
    }
    
    public String i()
    {
      return this.a.i();
    }
    
    public e j()
    {
      return this.a.j();
    }
    
    public b l()
    {
      return this.a.l();
    }
    
    public f m()
    {
      return this.b;
    }
    
    public i n()
    {
      return null;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkd/h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */