package com.layer.sdk.internal.lsdkk.lsdkc;

import com.layer.sdk.internal.lsdkk.lsdka.c;
import com.layer.sdk.listeners.LayerTypingIndicatorListener.TypingIndicator;

public class b
  extends c<b, a>
{
  public b()
  {
    b(b.a);
  }
  
  private b a(b paramb)
  {
    b(paramb);
    switch (1.bqe[paramb.ordinal()])
    {
    default: 
      return paramb;
    case 1: 
      ((a)this.a).f(this);
      ((a)this.a).c(this);
      return paramb;
    case 2: 
      ((a)this.a).f(this);
      ((a)this.a).d(this);
      ((a)this.a).a(this);
      return paramb;
    }
    ((a)this.a).f(this);
    ((a)this.a).e(this);
    ((a)this.a).b(this);
    return paramb;
  }
  
  public b a()
  {
    b localb = (b)q();
    switch (1.bqe[localb.ordinal()])
    {
    default: 
      return localb;
    }
    return a(b.c);
  }
  
  public b a(LayerTypingIndicatorListener.TypingIndicator paramTypingIndicator)
  {
    b localb = (b)q();
    switch (1.bqe[localb.ordinal()])
    {
    default: 
      return localb;
    case 1: 
      switch (1.b[paramTypingIndicator.ordinal()])
      {
      default: 
        return localb;
      }
      return a(b.b);
    case 2: 
      switch (1.b[paramTypingIndicator.ordinal()])
      {
      default: 
        return localb;
      case 1: 
        ((a)this.a).d(this);
        return localb;
      case 2: 
        return a(b.c);
      }
      return a(b.a);
    }
    switch (1.b[paramTypingIndicator.ordinal()])
    {
    default: 
      return localb;
    case 1: 
      return a(b.b);
    case 2: 
      ((a)this.a).e(this);
      return localb;
    }
    return a(b.a);
  }
  
  public b b()
  {
    b localb = (b)q();
    switch (1.bqe[localb.ordinal()])
    {
    default: 
      return localb;
    }
    return a(b.a);
  }
  
  public b c()
  {
    b localb = (b)q();
    switch (1.bqe[localb.ordinal()])
    {
    default: 
      return localb;
    case 2: 
      ((a)this.a).g(this);
      return localb;
    }
    ((a)this.a).h(this);
    return localb;
  }
  
  public static abstract interface a
  {
    public abstract void a(b paramb);
    
    public abstract void b(b paramb);
    
    public abstract void c(b paramb);
    
    public abstract void d(b paramb);
    
    public abstract void e(b paramb);
    
    public abstract void f(b paramb);
    
    public abstract void g(b paramb);
    
    public abstract void h(b paramb);
  }
  
  public static enum b
  {
    private b() {}
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkk/lsdkc/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */