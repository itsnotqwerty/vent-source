package com.layer.sdk.internal.lsdkk.lsdka;

import com.layer.a.c.c.a;
import com.layer.a.c.d;
import com.layer.b.a.j;
import com.layer.b.d.m;
import com.layer.sdk.exceptions.LayerException;
import com.layer.sdk.exceptions.LayerException.Type;
import com.layer.sdk.internal.lsdkj.b;
import com.layer.sdk.internal.lsdkj.f;
import com.layer.sdk.internal.lsdkj.f.a;
import com.layer.sdk.internal.lsdkk.k.a;
import com.layer.sdk.internal.lsdkk.q;
import com.layer.sdk.internal.lsdkk.q.a;
import com.layer.sdk.internal.telemetry.TelemetryManager;
import com.layer.sdk.internal.telemetry.TelemetryManager.Measurement;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

public class a
  extends c<c, b>
  implements j
{
  private static final k.a b = com.layer.sdk.internal.lsdkk.k.a(a.class);
  private static final com.layer.a.a.b.a c;
  private final Object d = new Object();
  private volatile boolean e = false;
  private final AtomicBoolean f;
  private final Object g = new Object();
  private final com.layer.a.b.a h = new q.a("AuthExecutor", 15L, TimeUnit.SECONDS, 10);
  private final com.layer.b.d.k i;
  private final com.layer.b.a.a j;
  private final AtomicReference<b> k = new AtomicReference(null);
  private final AtomicReference<com.layer.sdk.internal.lsdkj.a> l = new AtomicReference(null);
  private final AtomicReference<f> m = new AtomicReference(null);
  private long n;
  private long o;
  
  static
  {
    com.layer.a.a.b.a locala = new com.layer.a.a.b.a();
    locala.bpD = 600000;
    c = locala;
  }
  
  public a(com.layer.b.d.k paramk, com.layer.b.a.a parama)
  {
    this.i = paramk;
    this.j = parama;
    this.j.bub = this;
    if (j())
    {
      this.f = new AtomicBoolean(false);
      b(c.f);
      return;
    }
    this.f = new AtomicBoolean(true);
    b(c.j);
  }
  
  private void a(AtomicReference<? extends d> paramAtomicReference)
  {
    while (paramAtomicReference.get() != null) {
      try
      {
        TimeUnit.MILLISECONDS.sleep(10L);
      }
      catch (InterruptedException localInterruptedException) {}
    }
  }
  
  private static LayerException.Type b(Throwable paramThrowable)
  {
    if ((paramThrowable instanceof m)) {
      return LayerException.fromTransportException((m)paramThrowable, null).getType();
    }
    return LayerException.Type.UNKNOWN;
  }
  
  private static LayerException b(Throwable paramThrowable, String paramString)
  {
    if ((paramThrowable instanceof m)) {
      return LayerException.fromTransportException((m)paramThrowable, paramString);
    }
    return new LayerException(LayerException.Type.UNKNOWN, paramString, paramThrowable);
  }
  
  private com.layer.b.a.a.a r()
  {
    return this.j.wQ();
  }
  
  private void s()
  {
    this.n = System.currentTimeMillis();
  }
  
  private void t()
  {
    long l1 = System.currentTimeMillis();
    long l2 = this.n;
    TelemetryManager.record(TelemetryManager.Measurement.TIME_FOR_AUTH, l1 - l2);
    TelemetryManager.record(TelemetryManager.Measurement.AUTH, 1L);
  }
  
  private void u()
  {
    this.o = System.currentTimeMillis();
  }
  
  private void v()
  {
    long l1 = System.currentTimeMillis();
    long l2 = this.o;
    TelemetryManager.record(TelemetryManager.Measurement.TIME_FOR_DEAUTH, l1 - l2);
  }
  
  protected c a(String paramString, UUID paramUUID, a parama)
  {
    if (com.layer.sdk.internal.lsdkk.k.d()) {
      com.layer.sdk.internal.lsdkk.k.c("AuthManager: Setting state to authenticated");
    }
    if (this.e)
    {
      paramString = (c)q();
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(b, "AuthManager is closed during authentication attempt. State is: " + paramString);
      }
      return paramString;
    }
    c localc = (c)b(c.f);
    ((b)this.a).a(paramString, paramUUID, parama);
    return localc;
  }
  
  public void a()
  {
    if (this.e) {}
    while (!com.layer.sdk.internal.lsdkk.k.a(2)) {
      return;
    }
    com.layer.sdk.internal.lsdkk.k.a(b, "TLS certificate cleared");
  }
  
  public void a(String paramString)
  {
    if (this.e) {}
    do
    {
      return;
      b(c.d);
      if (!this.f.get())
      {
        ((b)this.a).b(paramString);
        return;
      }
    } while (!com.layer.sdk.internal.lsdkk.k.a(2));
    com.layer.sdk.internal.lsdkk.k.a(b, "Suppressing nonce challenge: " + paramString);
  }
  
  protected void a(boolean paramBoolean)
  {
    this.f.set(paramBoolean);
  }
  
  public c b(String paramString)
  {
    if (this.e) {
      return (c)q();
    }
    for (;;)
    {
      synchronized (this.g)
      {
        c localc = (c)q();
        switch (4.bqe[localc.ordinal()])
        {
        case 3: 
          if (com.layer.sdk.internal.lsdkk.k.a(2)) {
            com.layer.sdk.internal.lsdkk.k.a(b, "Ignoring onAnswerChallenge due to " + localc + " . Identity Token: " + paramString);
          }
          return localc;
        }
      }
      paramString = c(paramString);
      return paramString;
    }
  }
  
  public void b()
  {
    if (this.e) {}
    while (!com.layer.sdk.internal.lsdkk.k.a(2)) {
      return;
    }
    com.layer.sdk.internal.lsdkk.k.a(b, "Transport session cleared");
  }
  
  public c c()
  {
    if (com.layer.sdk.internal.lsdkk.k.d()) {
      com.layer.sdk.internal.lsdkk.k.c("AuthManager: Authenticate");
    }
    if (this.e) {
      return (c)q();
    }
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(b, "authenticate");
    }
    a(false);
    for (;;)
    {
      synchronized (this.g)
      {
        c localc = (c)q();
        switch (4.bqe[localc.ordinal()])
        {
        case 1: 
          if (com.layer.sdk.internal.lsdkk.k.a(2)) {
            com.layer.sdk.internal.lsdkk.k.a(b, "Ignoring authentication request. Another authentication is in flight. Current state: " + localc);
          }
          return localc;
        }
      }
      if (j())
      {
        localObject3 = r();
        if (com.layer.sdk.internal.lsdkk.k.a(2)) {
          com.layer.sdk.internal.lsdkk.k.a(b, "Resuming session");
        }
        localObject3 = a(((com.layer.b.a.a.a)localObject3).b, ((com.layer.b.a.a.a)localObject3).a, a.b);
        return (c)localObject3;
      }
      b(c.a);
      if (((b)this.a).h())
      {
        if (com.layer.sdk.internal.lsdkk.k.a(2)) {
          com.layer.sdk.internal.lsdkk.k.a(b, "Already connected. Trying to authenticate");
        }
        localObject3 = l();
        return (c)localObject3;
      }
      Object localObject3 = (c)b(c.b);
      ((b)this.a).i();
      return (c)localObject3;
    }
  }
  
  protected c c(String paramString)
  {
    if (this.e) {
      return (c)q();
    }
    a(this.l);
    paramString = new com.layer.sdk.internal.lsdkj.a(new com.layer.a.c.b.a()new com.layer.sdk.internal.lsdkj.a.a
    {
      public final void c(Throwable paramAnonymousThrowable)
      {
        try
        {
          a.this.b(a.c.j);
          if (!a.e(a.this)) {
            ((a.b)a.this.a).a(a.a(paramAnonymousThrowable, "Could not answer challenge"), false);
          }
          return;
        }
        finally
        {
          a.g(a.this).set(null);
        }
      }
      
      public final void wp()
      {
        if (com.layer.sdk.internal.lsdkk.k.d()) {
          com.layer.sdk.internal.lsdkk.k.c("AuthManager: Successfully answered challenge");
        }
        try
        {
          a.this.l();
          return;
        }
        finally
        {
          a.g(a.this).set(null);
        }
      }
    }, new com.layer.sdk.internal.lsdkj.a.a(this.j, paramString));
    if (this.l.compareAndSet(null, paramString))
    {
      if (com.layer.sdk.internal.lsdkk.k.d()) {
        com.layer.sdk.internal.lsdkk.k.c("AuthManager: Sending challenge answer task to executor");
      }
      this.h.execute(paramString);
      return (c)b(c.e);
    }
    paramString = (c)b(c.j);
    ((b)this.a).a(new LayerException(LayerException.Type.FAILED_TO_AUTHENTICATE, "Could not launch challenge answer task"), false);
    return paramString;
  }
  
  public c d()
  {
    for (;;)
    {
      try
      {
        c localc1;
        if (this.e)
        {
          localc1 = (c)q();
          return localc1;
        }
        if (com.layer.sdk.internal.lsdkk.k.a(2)) {
          com.layer.sdk.internal.lsdkk.k.a(b, "deauthenticate");
        }
        a(true);
        synchronized (this.g)
        {
          localc1 = (c)q();
          switch (4.bqe[localc1.ordinal()])
          {
          case 1: 
            if (com.layer.sdk.internal.lsdkk.k.a(2)) {
              com.layer.sdk.internal.lsdkk.k.a(b, "Ignoring deauthentication, likely due to a pending request. Current state: " + localc1);
            }
            break;
          }
        }
        if (j()) {
          break label170;
        }
      }
      finally {}
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(b, "Already de-authenticated due to no authenticated session");
      }
      c localc2 = o();
      continue;
      label170:
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(b, "Able to deauthenticate, setting state to deauthenticating");
      }
      b(c.g);
      if (((b)this.a).h())
      {
        localc2 = m();
      }
      else
      {
        if (com.layer.sdk.internal.lsdkk.k.a(2)) {
          com.layer.sdk.internal.lsdkk.k.a(b, "No connection for deauthenticate attempt. Requesting connection.");
        }
        localc2 = (c)b(c.h);
        ((b)this.a).i();
      }
    }
  }
  
  public c e()
  {
    if (com.layer.sdk.internal.lsdkk.k.d()) {
      com.layer.sdk.internal.lsdkk.k.c("AuthManager: Connected");
    }
    if (this.e) {
      return (c)q();
    }
    for (;;)
    {
      synchronized (this.g)
      {
        c localc1 = (c)q();
        switch (4.bqe[localc1.ordinal()])
        {
        case 4: 
          if (com.layer.sdk.internal.lsdkk.k.a(2)) {
            com.layer.sdk.internal.lsdkk.k.a(b, "Not in a state to handle a connected callback. Current state: " + localc1);
          }
          return localc1;
        }
      }
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(b, "Received connected callback while awaiting an authentication attempt. Proceeding with authentication.");
      }
      c localc2 = l();
      return localc2;
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(b, "Received connected callback while awaiting a deauthentication attempt. Proceeding with deauthentication.");
      }
      localc2 = m();
      return localc2;
    }
  }
  
  public c f()
  {
    if (this.e) {
      return (c)q();
    }
    for (;;)
    {
      synchronized (this.g)
      {
        c localc1 = (c)q();
        switch (4.bqe[localc1.ordinal()])
        {
        case 3: 
          if (com.layer.sdk.internal.lsdkk.k.a(2)) {
            com.layer.sdk.internal.lsdkk.k.a(b, "Not in a state to handle a connection error. Current state: " + localc1);
          }
          return localc1;
        }
      }
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(b, "Setting state to deauthenticated due to connection error on connection test or challenge");
      }
      c localc2 = (c)b(c.j);
      return localc2;
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(b, "Connection error during deauthentication request. Forcing deauthentication.");
      }
      localc2 = o();
      return localc2;
    }
  }
  
  public UUID g()
  {
    com.layer.b.a.a.a locala = r();
    if (locala == null) {
      return null;
    }
    return locala.a;
  }
  
  public String h()
  {
    com.layer.b.a.a.a locala = r();
    if (locala == null) {
      return null;
    }
    return locala.b;
  }
  
  public boolean i()
  {
    return q() == c.f;
  }
  
  public boolean j()
  {
    com.layer.b.a.a.a locala = r();
    return (locala != null) && (locala.a != null) && (locala.b != null);
  }
  
  public void k()
  {
    synchronized (this.d)
    {
      this.e = true;
      n();
      q.a(this.h);
      q.b(this.h);
      this.a = null;
      return;
    }
  }
  
  protected c l()
  {
    if (this.e) {
      return (c)q();
    }
    a(this.k);
    Object localObject = new b(c.wo(), new c.a()new com.layer.sdk.internal.lsdkj.b.a
    {
      public final void a(com.layer.a.c.c paramAnonymousc)
      {
        if (com.layer.sdk.internal.lsdkk.k.d()) {
          com.layer.sdk.internal.lsdkk.k.c("AuthManager: Starting task for auth attempt");
        }
        if (com.layer.sdk.internal.lsdkk.k.a(2)) {
          com.layer.sdk.internal.lsdkk.k.a(a.wB(), "Starting authentication task");
        }
        a.a(a.this);
      }
      
      public final void a(com.layer.a.c.c paramAnonymousc, long paramAnonymousLong, Throwable paramAnonymousThrowable)
      {
        if (a.f(paramAnonymousThrowable) == LayerException.Type.EIT_NONCE_NOT_FOUND)
        {
          if (com.layer.sdk.internal.lsdkk.k.a(6)) {
            com.layer.sdk.internal.lsdkk.k.d(a.wB(), "Auth attempt couldn't resolve the nonce. Reason: " + paramAnonymousThrowable.getMessage(), paramAnonymousThrowable);
          }
          a.f(a.this).e();
          ((a.b)a.this.a).k();
        }
        if (com.layer.sdk.internal.lsdkk.k.a(4)) {
          com.layer.sdk.internal.lsdkk.k.c(a.wB(), "Retrying authentication in " + paramAnonymousLong + " ms... Reason: " + paramAnonymousThrowable.getMessage());
        }
      }
      
      /* Error */
      public final void a(com.layer.a.c.c paramAnonymousc, com.layer.a.c.c.b paramAnonymousb, Throwable paramAnonymousThrowable)
      {
        // Byte code:
        //   0: aload_0
        //   1: getfield 17	com/layer/sdk/internal/lsdkk/lsdka/a$1:bsU	Lcom/layer/sdk/internal/lsdkk/lsdka/a;
        //   4: getstatic 114	com/layer/sdk/internal/lsdkk/lsdka/a$c:j	Lcom/layer/sdk/internal/lsdkk/lsdka/a$c;
        //   7: invokevirtual 118	com/layer/sdk/internal/lsdkk/lsdka/a:b	(Ljava/lang/Object;)Ljava/lang/Object;
        //   10: pop
        //   11: aload_0
        //   12: getfield 17	com/layer/sdk/internal/lsdkk/lsdka/a$1:bsU	Lcom/layer/sdk/internal/lsdkk/lsdka/a;
        //   15: invokestatic 120	com/layer/sdk/internal/lsdkk/lsdka/a:c	(Lcom/layer/sdk/internal/lsdkk/lsdka/a;)V
        //   18: aload_0
        //   19: getfield 17	com/layer/sdk/internal/lsdkk/lsdka/a$1:bsU	Lcom/layer/sdk/internal/lsdkk/lsdka/a;
        //   22: invokestatic 123	com/layer/sdk/internal/lsdkk/lsdka/a:e	(Lcom/layer/sdk/internal/lsdkk/lsdka/a;)Z
        //   25: ifne +40 -> 65
        //   28: aload_0
        //   29: getfield 17	com/layer/sdk/internal/lsdkk/lsdka/a$1:bsU	Lcom/layer/sdk/internal/lsdkk/lsdka/a;
        //   32: getfield 93	com/layer/sdk/internal/lsdkk/lsdka/a:a	Ljava/lang/Object;
        //   35: checkcast 95	com/layer/sdk/internal/lsdkk/lsdka/a$b
        //   38: astore_1
        //   39: aload_3
        //   40: ldc 125
        //   42: invokestatic 128	com/layer/sdk/internal/lsdkk/lsdka/a:a	(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/layer/sdk/exceptions/LayerException;
        //   45: astore_3
        //   46: aload_2
        //   47: getstatic 134	com/layer/a/c/c$b:bpH	Lcom/layer/a/c/c$b;
        //   50: if_acmpne +27 -> 77
        //   53: iconst_1
        //   54: istore 4
        //   56: aload_1
        //   57: aload_3
        //   58: iload 4
        //   60: invokeinterface 137 3 0
        //   65: aload_0
        //   66: getfield 17	com/layer/sdk/internal/lsdkk/lsdka/a$1:bsU	Lcom/layer/sdk/internal/lsdkk/lsdka/a;
        //   69: invokestatic 140	com/layer/sdk/internal/lsdkk/lsdka/a:d	(Lcom/layer/sdk/internal/lsdkk/lsdka/a;)Ljava/util/concurrent/atomic/AtomicReference;
        //   72: aconst_null
        //   73: invokevirtual 146	java/util/concurrent/atomic/AtomicReference:set	(Ljava/lang/Object;)V
        //   76: return
        //   77: iconst_0
        //   78: istore 4
        //   80: goto -24 -> 56
        //   83: astore_1
        //   84: aload_0
        //   85: getfield 17	com/layer/sdk/internal/lsdkk/lsdka/a$1:bsU	Lcom/layer/sdk/internal/lsdkk/lsdka/a;
        //   88: invokestatic 140	com/layer/sdk/internal/lsdkk/lsdka/a:d	(Lcom/layer/sdk/internal/lsdkk/lsdka/a;)Ljava/util/concurrent/atomic/AtomicReference;
        //   91: aconst_null
        //   92: invokevirtual 146	java/util/concurrent/atomic/AtomicReference:set	(Ljava/lang/Object;)V
        //   95: aload_1
        //   96: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	97	0	this	1
        //   0	97	1	paramAnonymousc	com.layer.a.c.c
        //   0	97	2	paramAnonymousb	com.layer.a.c.c.b
        //   0	97	3	paramAnonymousThrowable	Throwable
        //   54	25	4	bool	boolean
        // Exception table:
        //   from	to	target	type
        //   0	53	83	finally
        //   56	65	83	finally
      }
      
      public final void b(com.layer.a.c.c paramAnonymousc)
      {
        if (com.layer.sdk.internal.lsdkk.k.d()) {
          com.layer.sdk.internal.lsdkk.k.c("AuthManager: Task for auth attempt succeeded");
        }
        try
        {
          Object localObject = a.b(a.this);
          if (localObject == null)
          {
            if (com.layer.sdk.internal.lsdkk.k.a(2)) {
              com.layer.sdk.internal.lsdkk.k.a(a.wB(), "Authenticated but session does not exist. Setting to a challenged state.");
            }
            a.this.b(a.c.d);
            a.c(a.this);
            return;
          }
          paramAnonymousc = ((com.layer.b.a.a.a)localObject).b;
          localObject = ((com.layer.b.a.a.a)localObject).a;
          if ((paramAnonymousc == null) || (localObject == null))
          {
            if (com.layer.sdk.internal.lsdkk.k.a(2)) {
              com.layer.sdk.internal.lsdkk.k.a(a.wB(), "Authenticated but session is invalid. Setting to a challenged state.");
            }
            a.this.b(a.c.d);
            a.c(a.this);
            return;
          }
          a.this.a(paramAnonymousc, (UUID)localObject, a.a.a);
          a.c(a.this);
          return;
        }
        finally
        {
          a.d(a.this).set(null);
        }
      }
    }, new com.layer.sdk.internal.lsdkj.b.a(this.i));
    if (this.k.compareAndSet(null, localObject))
    {
      if (com.layer.sdk.internal.lsdkk.k.d()) {
        com.layer.sdk.internal.lsdkk.k.c("AuthManager: Sending auth task to executor");
      }
      this.h.execute((Runnable)localObject);
      return (c)b(c.c);
    }
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(b, "Active authentication task, setting state to deauthenticated and reporting error.");
    }
    localObject = (c)b(c.j);
    ((b)this.a).a(new LayerException(LayerException.Type.FAILED_TO_AUTHENTICATE, "Could not launch authentication task"), false);
    return (c)localObject;
  }
  
  protected c m()
  {
    if (this.e) {
      return (c)q();
    }
    if (com.layer.sdk.internal.lsdkk.k.a(2)) {
      com.layer.sdk.internal.lsdkk.k.a(b, "Launching deauthentication attempt");
    }
    a(this.m);
    if (!j())
    {
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(b, "No session exists, forcing deauthentication");
      }
      return o();
    }
    f localf = new f(new com.layer.a.c.b.a()new f.a
    {
      public final void c(Throwable paramAnonymousThrowable)
      {
        if ((paramAnonymousThrowable != null) && (com.layer.sdk.internal.lsdkk.k.a(6))) {
          com.layer.sdk.internal.lsdkk.k.d(a.wB(), "Deauth Attempt failed", paramAnonymousThrowable);
        }
        try
        {
          a.this.o();
          a.h(a.this);
          return;
        }
        finally
        {
          a.i(a.this).set(null);
        }
      }
      
      public final void wp()
      {
        try
        {
          a.this.o();
          a.h(a.this);
          return;
        }
        finally
        {
          a.i(a.this).set(null);
        }
      }
    }, new f.a(this.i));
    if (this.m.compareAndSet(null, localf))
    {
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(b, "Executing deauthentication task");
      }
      u();
      this.h.execute(localf);
      return (c)b(c.i);
    }
    return o();
  }
  
  protected void n()
  {
    b localb = (b)this.k.get();
    if (localb != null) {
      localb.a(true);
    }
  }
  
  protected c o()
  {
    if (this.e)
    {
      localc = (c)q();
      if (com.layer.sdk.internal.lsdkk.k.a(2)) {
        com.layer.sdk.internal.lsdkk.k.a(b, "AuthManager is closed during deauthentication attempt. State is: " + localc);
      }
      return localc;
    }
    c localc = (c)b(c.j);
    this.j.e();
    ((b)this.a).j();
    return localc;
  }
  
  public static enum a
  {
    private a() {}
  }
  
  public static abstract interface b
  {
    public abstract void a(LayerException paramLayerException, boolean paramBoolean);
    
    public abstract void a(String paramString, UUID paramUUID, a.a parama);
    
    public abstract void b(String paramString);
    
    public abstract boolean h();
    
    public abstract void i();
    
    public abstract void j();
    
    public abstract void k();
  }
  
  public static enum c
  {
    private c() {}
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/lsdkk/lsdka/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */