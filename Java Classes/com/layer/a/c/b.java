package com.layer.a.c;

import java.util.Queue;

public abstract class b<Targs, Tresults>
  extends d<Targs, Tresults>
{
  private final a a;
  
  public b(a parama, Targs paramTargs)
  {
    super(paramTargs);
    this.a = parama;
  }
  
  public d a()
  {
    a(1);
    return this;
  }
  
  public void run()
  {
    if (g() == -1) {
      a();
    }
    if (g() != 1)
    {
      a(new e(this, "Task run while not ready"));
      if (!i().isEmpty()) {
        break label109;
      }
      a(3);
      if (this.a != null) {
        this.a.wp();
      }
    }
    for (;;)
    {
      return;
      try
      {
        a(2);
        this.b = a(a_());
      }
      catch (Exception localException)
      {
        a(new e(this, null, "Uncaught Task exception", localException));
      }
      break;
      label109:
      a(Integer.MAX_VALUE);
      if (!i().isEmpty())
      {
        localObject = (e)i().peek();
        if (localObject == null) {}
      }
      for (Object localObject = ((e)localObject).getCause(); this.a != null; localObject = null)
      {
        this.a.c((Throwable)localObject);
        return;
      }
    }
  }
  
  public static abstract interface a
  {
    public abstract void c(Throwable paramThrowable);
    
    public abstract void wp();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/a/c/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */