package com.layer.a.b;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

public abstract class a
  extends ThreadPoolExecutor
  implements RejectedExecutionHandler
{
  private final String a;
  private boolean b;
  private final ReentrantLock c = new ReentrantLock();
  private final Condition d = this.c.newCondition();
  
  public a(String paramString, int paramInt1, int paramInt2, long paramLong, TimeUnit paramTimeUnit, BlockingQueue<Runnable> paramBlockingQueue)
  {
    super(paramInt1, paramInt2, paramLong, paramTimeUnit, paramBlockingQueue);
    this.a = paramString;
    setRejectedExecutionHandler(this);
  }
  
  public void a()
  {
    this.c.lock();
    try
    {
      this.b = true;
      return;
    }
    finally
    {
      this.c.unlock();
    }
  }
  
  public void b()
  {
    this.c.lock();
    try
    {
      this.b = false;
      this.d.signalAll();
      return;
    }
    finally
    {
      this.c.unlock();
    }
  }
  
  /* Error */
  protected void beforeExecute(Thread paramThread, Runnable paramRunnable)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: aload_2
    //   3: invokespecial 60	java/util/concurrent/ThreadPoolExecutor:beforeExecute	(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    //   6: aload_0
    //   7: getfield 26	com/layer/a/b/a:c	Ljava/util/concurrent/locks/ReentrantLock;
    //   10: invokevirtual 44	java/util/concurrent/locks/ReentrantLock:lock	()V
    //   13: aload_0
    //   14: getfield 46	com/layer/a/b/a:b	Z
    //   17: ifeq +28 -> 45
    //   20: aload_0
    //   21: getfield 32	com/layer/a/b/a:d	Ljava/util/concurrent/locks/Condition;
    //   24: invokeinterface 63 1 0
    //   29: goto -16 -> 13
    //   32: astore_2
    //   33: aload_1
    //   34: invokevirtual 68	java/lang/Thread:interrupt	()V
    //   37: aload_0
    //   38: getfield 26	com/layer/a/b/a:c	Ljava/util/concurrent/locks/ReentrantLock;
    //   41: invokevirtual 49	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   44: return
    //   45: aload_0
    //   46: getfield 26	com/layer/a/b/a:c	Ljava/util/concurrent/locks/ReentrantLock;
    //   49: invokevirtual 49	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   52: return
    //   53: astore_1
    //   54: aload_0
    //   55: getfield 26	com/layer/a/b/a:c	Ljava/util/concurrent/locks/ReentrantLock;
    //   58: invokevirtual 49	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   61: aload_1
    //   62: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	63	0	this	a
    //   0	63	1	paramThread	Thread
    //   0	63	2	paramRunnable	Runnable
    // Exception table:
    //   from	to	target	type
    //   13	29	32	java/lang/InterruptedException
    //   13	29	53	finally
    //   33	37	53	finally
  }
  
  public boolean c()
  {
    return this.b;
  }
  
  public void rejectedExecution(Runnable paramRunnable, ThreadPoolExecutor paramThreadPoolExecutor)
  {
    if ((isTerminating()) || (isTerminated())) {
      return;
    }
    throw new IllegalStateException("Rejected a runnable: " + paramRunnable);
  }
  
  public String toString()
  {
    return this.a + ": active=" + getActiveCount() + " completed=" + getCompletedTaskCount() + " largest pool=" + getLargestPoolSize();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/a/b/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */