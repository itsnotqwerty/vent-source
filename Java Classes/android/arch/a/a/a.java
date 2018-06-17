package android.arch.a.a;

import java.util.concurrent.Executor;

public class a
  extends c
{
  private static volatile a X;
  private static final Executor aa = new Executor()
  {
    public final void execute(Runnable paramAnonymousRunnable)
    {
      a.F().f(paramAnonymousRunnable);
    }
  };
  private static final Executor ab = new Executor()
  {
    public final void execute(Runnable paramAnonymousRunnable)
    {
      a.F().e(paramAnonymousRunnable);
    }
  };
  public c Y = this.Z;
  private c Z = new b();
  
  public static a F()
  {
    if (X != null) {
      return X;
    }
    try
    {
      if (X == null) {
        X = new a();
      }
      return X;
    }
    finally {}
  }
  
  public final boolean V()
  {
    return this.Y.V();
  }
  
  public final void e(Runnable paramRunnable)
  {
    this.Y.e(paramRunnable);
  }
  
  public final void f(Runnable paramRunnable)
  {
    this.Y.f(paramRunnable);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/arch/a/a/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */