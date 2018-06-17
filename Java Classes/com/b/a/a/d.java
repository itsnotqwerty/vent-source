package com.b.a.a;

public abstract class d
  implements Runnable
{
  protected final String b;
  
  public d(String paramString, Object... paramVarArgs)
  {
    this.b = String.format(paramString, paramVarArgs);
  }
  
  public abstract void e();
  
  public final void run()
  {
    String str = Thread.currentThread().getName();
    Thread.currentThread().setName(this.b);
    try
    {
      e();
      return;
    }
    finally
    {
      Thread.currentThread().setName(str);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/b/a/a/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */