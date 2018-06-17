package com.layer.sdk.internal.lsdkk.lsdka;

import com.layer.sdk.internal.lsdkk.k;
import com.layer.sdk.internal.lsdkk.k.a;

public class b
  extends c<b, a>
{
  private static final k.a b = k.a(b.class);
  private final Object c = new Object();
  
  public b(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      b(b.d);
      return;
    }
    b(b.a);
  }
  
  public b a()
  {
    for (;;)
    {
      synchronized (this.c)
      {
        b localb = (b)q();
        switch (1.bqe[localb.ordinal()])
        {
        case 1: 
          if (k.a(2)) {
            k.a(b, "Ignoring connect request due to state being: " + localb);
          }
          return localb;
          if (k.a(2)) {
            k.a(b, "Connect requested when state is DISCONNECTED. Setting state to CONNECTING and requesting connect");
          }
          ((a)this.a).a(this);
          localb = (b)b(b.c);
          return localb;
        }
      }
    }
  }
  
  public b b()
  {
    for (;;)
    {
      synchronized (this.c)
      {
        b localb = (b)q();
        switch (1.bqe[localb.ordinal()])
        {
        case 2: 
          return localb;
        case 3: 
          ((a)this.a).d(this);
          localb = (b)b(b.b);
          return localb;
        }
      }
    }
  }
  
  public b c()
  {
    for (;;)
    {
      synchronized (this.c)
      {
        b localb = (b)q();
        switch (1.bqe[localb.ordinal()])
        {
        case 2: 
          return localb;
          ((a)this.a).b(this);
          localb = (b)b(b.d);
          return localb;
        }
      }
    }
  }
  
  public b d()
  {
    for (;;)
    {
      synchronized (this.c)
      {
        b localb = (b)q();
        switch (1.bqe[localb.ordinal()])
        {
        case 2: 
          return localb;
          localb = (b)b(b.a);
          return localb;
        }
      }
    }
  }
  
  public b e()
  {
    for (;;)
    {
      synchronized (this.c)
      {
        b localb = (b)q();
        switch (1.bqe[localb.ordinal()])
        {
        case 3: 
          return localb;
          ((a)this.a).c(this);
          localb = (b)b(b.a);
          return localb;
        }
      }
    }
  }
  
  public b f()
  {
    for (;;)
    {
      synchronized (this.c)
      {
        b localb = (b)q();
        switch (1.bqe[localb.ordinal()])
        {
        case 4: 
          return localb;
          ((a)this.a).e(this);
          localb = (b)b(b.a);
          return localb;
        }
      }
    }
  }
  
  public static abstract interface a
  {
    public abstract void a(b paramb);
    
    public abstract void b(b paramb);
    
    public abstract void c(b paramb);
    
    public abstract void d(b paramb);
    
    public abstract void e(b paramb);
  }
  
  public static enum b
  {
    private b() {}
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkk/lsdka/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */