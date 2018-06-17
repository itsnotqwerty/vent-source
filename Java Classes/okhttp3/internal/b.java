package okhttp3.internal;

public abstract class b
  implements Runnable
{
  protected final String name;
  
  public b(String paramString, Object... paramVarArgs)
  {
    this.name = c.format(paramString, paramVarArgs);
  }
  
  public abstract void execute();
  
  public final void run()
  {
    String str = Thread.currentThread().getName();
    Thread.currentThread().setName(this.name);
    try
    {
      execute();
      return;
    }
    finally
    {
      Thread.currentThread().setName(str);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/okhttp3/internal/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */