package com.amazonaws.event;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

public class ProgressListenerCallbackExecutor
{
  static ExecutorService executor = Executors.newSingleThreadExecutor(new ThreadFactory()
  {
    public final Thread newThread(Runnable paramAnonymousRunnable)
    {
      paramAnonymousRunnable = new Thread(paramAnonymousRunnable);
      paramAnonymousRunnable.setName("android-sdk-progress-listener-callback-thread");
      paramAnonymousRunnable.setDaemon(true);
      return paramAnonymousRunnable;
    }
  });
  private final ProgressListener anI;
  
  public ProgressListenerCallbackExecutor()
  {
    this.anI = null;
  }
  
  private ProgressListenerCallbackExecutor(ProgressListener paramProgressListener)
  {
    this.anI = paramProgressListener;
  }
  
  public static ProgressListenerCallbackExecutor a(ProgressListener paramProgressListener)
  {
    if (paramProgressListener == null) {
      return null;
    }
    return new ProgressListenerCallbackExecutor(paramProgressListener);
  }
  
  public final void a(final ProgressEvent paramProgressEvent)
  {
    if (this.anI == null) {
      return;
    }
    executor.submit(new Runnable()
    {
      public void run()
      {
        ProgressListenerCallbackExecutor.a(ProgressListenerCallbackExecutor.this);
      }
    });
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/event/ProgressListenerCallbackExecutor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */