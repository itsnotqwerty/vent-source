package com.google.android.gms.common.api.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.api.g.a;
import com.google.android.gms.common.api.h;
import com.google.android.gms.common.api.i;
import com.google.android.gms.common.api.j;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.common.internal.q;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;

@KeepName
public abstract class BasePendingResult<R extends i>
  extends g<R>
{
  static final ThreadLocal<Boolean> aDh = new cm();
  private Status aCx;
  private final Object aDi = new Object();
  private a<R> aDj;
  private WeakReference<f> aDk;
  private final CountDownLatch aDl = new CountDownLatch(1);
  private final ArrayList<g.a> aDm = new ArrayList();
  private j<? super R> aDn;
  private final AtomicReference<by> aDo = new AtomicReference();
  private R aDp;
  private volatile boolean aDq;
  private boolean aDr;
  private boolean aDs;
  private q aDt;
  private volatile bt<R> aDu;
  private boolean aDv = false;
  @KeepName
  private b mResultGuardian;
  
  @Deprecated
  BasePendingResult()
  {
    this.aDj = new a(Looper.getMainLooper());
    this.aDk = new WeakReference(null);
  }
  
  protected BasePendingResult(f paramf)
  {
    if (paramf != null) {}
    for (Looper localLooper = paramf.getLooper();; localLooper = Looper.getMainLooper())
    {
      this.aDj = new a(localLooper);
      this.aDk = new WeakReference(paramf);
      return;
    }
  }
  
  private final void c(R paramR)
  {
    this.aDp = paramR;
    this.aDt = null;
    this.aDl.countDown();
    this.aCx = this.aDp.nf();
    if (this.aDr) {
      this.aDn = null;
    }
    for (;;)
    {
      paramR = (ArrayList)this.aDm;
      int j = paramR.size();
      int i = 0;
      while (i < j)
      {
        Object localObject = paramR.get(i);
        i += 1;
        ((g.a)localObject).ne();
      }
      if (this.aDn == null)
      {
        if ((this.aDp instanceof h)) {
          this.mResultGuardian = new b((byte)0);
        }
      }
      else
      {
        this.aDj.removeMessages(2);
        this.aDj.a(this.aDn, nj());
      }
    }
    this.aDm.clear();
  }
  
  public static void d(i parami)
  {
    if ((parami instanceof h)) {}
  }
  
  private boolean kC()
  {
    return this.aDl.getCount() == 0L;
  }
  
  private final R nj()
  {
    boolean bool = true;
    synchronized (this.aDi)
    {
      if (!this.aDq)
      {
        ae.a(bool, "Result has already been consumed.");
        ae.a(kC(), "Result is not ready.");
        i locali = this.aDp;
        this.aDp = null;
        this.aDn = null;
        this.aDq = true;
        ??? = (by)this.aDo.getAndSet(null);
        if (??? != null) {
          ((by)???).c(this);
        }
        return locali;
      }
      bool = false;
    }
  }
  
  public final void a(Status paramStatus)
  {
    synchronized (this.aDi)
    {
      if (!kC())
      {
        b(b(paramStatus));
        this.aDs = true;
      }
      return;
    }
  }
  
  public final void a(g.a parama)
  {
    ae.b(true, "Callback cannot be null.");
    synchronized (this.aDi)
    {
      if (kC())
      {
        parama.ne();
        return;
      }
      this.aDm.add(parama);
    }
  }
  
  public final void a(by paramby)
  {
    this.aDo.set(paramby);
  }
  
  public final void a(j<? super R> paramj)
  {
    boolean bool2 = true;
    Object localObject = this.aDi;
    if (paramj == null) {}
    try
    {
      this.aDn = null;
      return;
    }
    finally {}
    if (!this.aDq)
    {
      bool1 = true;
      ae.a(bool1, "Result has already been consumed.");
      if (this.aDu != null) {
        break label76;
      }
    }
    label76:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      ae.a(bool1, "Cannot set callbacks if then() has been called.");
      if (!isCanceled()) {
        break label81;
      }
      return;
      bool1 = false;
      break;
    }
    label81:
    if (kC()) {
      this.aDj.a(paramj, nj());
    }
    for (;;)
    {
      return;
      this.aDn = paramj;
    }
  }
  
  protected abstract R b(Status paramStatus);
  
  public final void b(R paramR)
  {
    boolean bool2 = true;
    for (;;)
    {
      synchronized (this.aDi)
      {
        if ((!this.aDs) && (!this.aDr))
        {
          if ((!kC()) || (!kC()))
          {
            bool1 = true;
            ae.a(bool1, "Results have already been set");
            if (this.aDq) {
              break label86;
            }
            bool1 = bool2;
            ae.a(bool1, "Result has already been consumed");
            c(paramR);
          }
        }
        else {
          return;
        }
      }
      boolean bool1 = false;
      continue;
      label86:
      bool1 = false;
    }
  }
  
  public final void cancel()
  {
    synchronized (this.aDi)
    {
      if ((this.aDr) || (this.aDq)) {
        return;
      }
      this.aDr = true;
      c(b(Status.aDe));
      return;
    }
  }
  
  public final boolean isCanceled()
  {
    synchronized (this.aDi)
    {
      boolean bool = this.aDr;
      return bool;
    }
  }
  
  public final Integer nd()
  {
    return null;
  }
  
  public final boolean nh()
  {
    synchronized (this.aDi)
    {
      if (((f)this.aDk.get() == null) || (!this.aDv)) {
        cancel();
      }
      boolean bool = isCanceled();
      return bool;
    }
  }
  
  public final void ni()
  {
    if ((this.aDv) || (((Boolean)aDh.get()).booleanValue())) {}
    for (boolean bool = true;; bool = false)
    {
      this.aDv = bool;
      return;
    }
  }
  
  public static final class a<R extends i>
    extends Handler
  {
    public a()
    {
      this(Looper.getMainLooper());
    }
    
    public a(Looper paramLooper)
    {
      super();
    }
    
    public final void a(j<? super R> paramj, R paramR)
    {
      sendMessage(obtainMessage(1, new Pair(paramj, paramR)));
    }
    
    public final void handleMessage(Message paramMessage)
    {
      switch (paramMessage.what)
      {
      default: 
        int i = paramMessage.what;
        Log.wtf("BasePendingResult", 45 + "Don't know how to handle message: " + i, new Exception());
        return;
      case 1: 
        Object localObject = (Pair)paramMessage.obj;
        paramMessage = (j)((Pair)localObject).first;
        localObject = (i)((Pair)localObject).second;
        try
        {
          paramMessage.a((i)localObject);
          return;
        }
        catch (RuntimeException paramMessage)
        {
          BasePendingResult.d((i)localObject);
          throw paramMessage;
        }
      }
      ((BasePendingResult)paramMessage.obj).a(Status.aDd);
    }
  }
  
  final class b
  {
    private b() {}
    
    protected final void finalize()
      throws Throwable
    {
      BasePendingResult.d(BasePendingResult.a(BasePendingResult.this));
      super.finalize();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/internal/BasePendingResult.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */