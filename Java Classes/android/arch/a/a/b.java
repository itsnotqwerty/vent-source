package android.arch.a.a;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public final class b
  extends c
{
  private ExecutorService ac = Executors.newFixedThreadPool(2);
  private volatile Handler ad;
  private final Object mLock = new Object();
  
  public final boolean V()
  {
    return Looper.getMainLooper().getThread() == Thread.currentThread();
  }
  
  public final void e(Runnable paramRunnable)
  {
    this.ac.execute(paramRunnable);
  }
  
  public final void f(Runnable paramRunnable)
  {
    if (this.ad == null) {}
    synchronized (this.mLock)
    {
      if (this.ad == null) {
        this.ad = new Handler(Looper.getMainLooper());
      }
      this.ad.post(paramRunnable);
      return;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/arch/a/a/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */