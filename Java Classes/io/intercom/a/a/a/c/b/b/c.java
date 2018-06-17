package io.intercom.a.a.a.c.b.b;

import io.intercom.a.a.a.i.h;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

final class c
{
  final b cLK = new b();
  final Map<String, a> locks = new HashMap();
  
  final void release(String arg1)
  {
    a locala1;
    try
    {
      locala1 = (a)h.checkNotNull(this.locks.get(???), "Argument must not be null");
      if (locala1.interestedThreads <= 0) {
        throw new IllegalStateException("Cannot release a lock that is not held, safeKey: " + ??? + ", interestedThreads: " + locala1.interestedThreads);
      }
    }
    finally {}
    locala1.interestedThreads -= 1;
    a locala2;
    b localb;
    if (locala1.interestedThreads == 0)
    {
      locala2 = (a)this.locks.remove(???);
      if (!locala2.equals(locala1)) {
        throw new IllegalStateException("Removed the wrong lock, expected to remove: " + locala1 + ", but actually removed: " + locala2 + ", safeKey: " + ???);
      }
      localb = this.cLK;
    }
    synchronized (localb.pool)
    {
      if (localb.pool.size() < 10) {
        localb.pool.offer(locala2);
      }
      locala1.lock.unlock();
      return;
    }
  }
  
  private static final class a
  {
    int interestedThreads;
    final Lock lock = new ReentrantLock();
  }
  
  private static final class b
  {
    final Queue<c.a> pool = new ArrayDeque();
    
    final c.a ID()
    {
      synchronized (this.pool)
      {
        c.a locala = (c.a)this.pool.poll();
        ??? = locala;
        if (locala == null) {
          ??? = new c.a();
        }
        return (c.a)???;
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/a/a/a/c/b/b/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */