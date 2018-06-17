package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.a;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.d;
import com.google.android.gms.common.k;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class al<T extends IInterface>
{
  private static String[] aIp = { "service_esmobile", "service_googleme" };
  private final Looper aCC;
  private final com.google.android.gms.common.m aDE;
  int aHU;
  long aHV;
  private long aHW;
  private int aHX;
  private long aHY;
  private m aHZ;
  private final h aIa;
  private final Object aIb = new Object();
  private w aIc;
  protected ar aId;
  private T aIe;
  private final ArrayList<aq<?>> aIf = new ArrayList();
  private at aIg;
  private int aIh = 1;
  private final an aIi;
  private final ao aIj;
  private final int aIk;
  private final String aIl;
  private a aIm = null;
  private boolean aIn = false;
  protected AtomicInteger aIo = new AtomicInteger(0);
  protected final Context mContext;
  final Handler mHandler;
  private final Object mLock = new Object();
  
  protected al(Context paramContext, Looper paramLooper, an paraman, ao paramao)
  {
    this(paramContext, paramLooper, h.A(paramContext), com.google.android.gms.common.m.oN(), 93, (an)ae.E(paraman), (ao)ae.E(paramao), null);
  }
  
  protected al(Context paramContext, Looper paramLooper, h paramh, com.google.android.gms.common.m paramm, int paramInt, an paraman, ao paramao, String paramString)
  {
    this.mContext = ((Context)ae.g(paramContext, "Context must not be null"));
    this.aCC = ((Looper)ae.g(paramLooper, "Looper must not be null"));
    this.aIa = ((h)ae.g(paramh, "Supervisor must not be null"));
    this.aDE = ((com.google.android.gms.common.m)ae.g(paramm, "API availability must not be null"));
    this.mHandler = new ap(this, paramLooper);
    this.aIk = paramInt;
    this.aIi = paraman;
    this.aIj = paramao;
    this.aIl = paramString;
  }
  
  private final void a(int paramInt, T paramT)
  {
    boolean bool = true;
    int i;
    int j;
    if (paramInt == 4)
    {
      i = 1;
      if (paramT == null) {
        break label494;
      }
      j = 1;
      label17:
      if (i != j) {
        break label500;
      }
    }
    for (;;)
    {
      ae.au(bool);
      for (;;)
      {
        String str;
        Object localObject2;
        synchronized (this.mLock)
        {
          this.aIh = paramInt;
          this.aIe = paramT;
          ok();
          switch (paramInt)
          {
          case 2: 
            return;
          case 3: 
            if ((this.aIg != null) && (this.aHZ != null))
            {
              paramT = this.aHZ.aHF;
              str = this.aHZ.aHG;
              Log.e("GmsClient", String.valueOf(paramT).length() + 70 + String.valueOf(str).length() + "Calling connect() while still connected, missing disconnect() for " + paramT + " on " + str);
              paramT = this.aIa;
              str = this.aHZ.aHF;
              localObject2 = this.aHZ.aHG;
              paramInt = this.aHZ.aHt;
              localat = this.aIg;
              om();
              paramT.a(str, (String)localObject2, paramInt, localat);
              this.aIo.incrementAndGet();
            }
            this.aIg = new at(this, this.aIo.get());
            this.aHZ = new m("com.google.android.gms", oi());
            paramT = this.aIa;
            str = this.aHZ.aHF;
            localObject2 = this.aHZ.aHG;
            paramInt = this.aHZ.aHt;
            at localat = this.aIg;
            om();
            if (paramT.a(new i(str, (String)localObject2, paramInt), localat)) {
              continue;
            }
            paramT = this.aHZ.aHF;
            str = this.aHZ.aHG;
            Log.e("GmsClient", String.valueOf(paramT).length() + 34 + String.valueOf(str).length() + "unable to connect to service: " + paramT + " on " + str);
            au(16, this.aIo.get());
          }
        }
        this.aHW = System.currentTimeMillis();
        continue;
        if (this.aIg != null)
        {
          paramT = this.aIa;
          str = oi();
          localObject2 = this.aIg;
          om();
          paramT.a(str, "com.google.android.gms", 129, (ServiceConnection)localObject2);
          this.aIg = null;
        }
      }
      i = 0;
      break;
      label494:
      j = 0;
      break label17;
      label500:
      bool = false;
    }
  }
  
  private final boolean a(int paramInt1, int paramInt2, T paramT)
  {
    synchronized (this.mLock)
    {
      if (this.aIh != paramInt1) {
        return false;
      }
      a(paramInt2, paramT);
      return true;
    }
  }
  
  private final String om()
  {
    if (this.aIl == null) {
      return this.mContext.getClass().getName();
    }
    return this.aIl;
  }
  
  private final boolean oo()
  {
    for (;;)
    {
      synchronized (this.mLock)
      {
        if (this.aIh == 3)
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
  
  private final boolean os()
  {
    if (this.aIn) {}
    while ((TextUtils.isEmpty(oj())) || (TextUtils.isEmpty(null))) {
      return false;
    }
    try
    {
      Class.forName(oj());
      return true;
    }
    catch (ClassNotFoundException localClassNotFoundException) {}
    return false;
  }
  
  protected final void a(int paramInt1, IBinder paramIBinder, Bundle paramBundle, int paramInt2)
  {
    this.mHandler.sendMessage(this.mHandler.obtainMessage(1, paramInt2, -1, new av(this, paramInt1, paramIBinder, paramBundle)));
  }
  
  protected final void a(a parama)
  {
    this.aHX = parama.aCj;
    this.aHY = System.currentTimeMillis();
  }
  
  public final void a(ar paramar)
  {
    this.aId = ((ar)ae.g(paramar, "Connection progress callbacks cannot be null."));
    a(2, null);
  }
  
  public final void a(ax paramax)
  {
    paramax.nL();
  }
  
  /* Error */
  public final void a(n arg1, Set<Scope> paramSet)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 370	com/google/android/gms/common/internal/al:op	()Landroid/os/Bundle;
    //   4: astore 4
    //   6: new 372	com/google/android/gms/common/internal/bf
    //   9: dup
    //   10: aload_0
    //   11: getfield 150	com/google/android/gms/common/internal/al:aIk	I
    //   14: invokespecial 373	com/google/android/gms/common/internal/bf:<init>	(I)V
    //   17: astore_3
    //   18: aload_3
    //   19: aload_0
    //   20: getfield 127	com/google/android/gms/common/internal/al:mContext	Landroid/content/Context;
    //   23: invokevirtual 376	android/content/Context:getPackageName	()Ljava/lang/String;
    //   26: putfield 379	com/google/android/gms/common/internal/bf:aIG	Ljava/lang/String;
    //   29: aload_3
    //   30: aload 4
    //   32: putfield 383	com/google/android/gms/common/internal/bf:aIJ	Landroid/os/Bundle;
    //   35: aload_2
    //   36: ifnull +25 -> 61
    //   39: aload_3
    //   40: aload_2
    //   41: aload_2
    //   42: invokeinterface 388 1 0
    //   47: anewarray 390	com/google/android/gms/common/api/Scope
    //   50: invokeinterface 394 2 0
    //   55: checkcast 396	[Lcom/google/android/gms/common/api/Scope;
    //   58: putfield 399	com/google/android/gms/common/internal/bf:aII	[Lcom/google/android/gms/common/api/Scope;
    //   61: aload_0
    //   62: invokevirtual 402	com/google/android/gms/common/internal/al:mX	()Z
    //   65: ifeq +34 -> 99
    //   68: aload_0
    //   69: invokevirtual 406	com/google/android/gms/common/internal/al:mV	()Landroid/accounts/Account;
    //   72: ifnull +77 -> 149
    //   75: aload_0
    //   76: invokevirtual 406	com/google/android/gms/common/internal/al:mV	()Landroid/accounts/Account;
    //   79: astore_2
    //   80: aload_3
    //   81: aload_2
    //   82: putfield 410	com/google/android/gms/common/internal/bf:aIK	Landroid/accounts/Account;
    //   85: aload_1
    //   86: ifnull +13 -> 99
    //   89: aload_3
    //   90: aload_1
    //   91: invokeinterface 416 1 0
    //   96: putfield 420	com/google/android/gms/common/internal/bf:aIH	Landroid/os/IBinder;
    //   99: aload_3
    //   100: aload_0
    //   101: invokevirtual 424	com/google/android/gms/common/internal/al:nX	()[Lcom/google/android/gms/common/k;
    //   104: putfield 428	com/google/android/gms/common/internal/bf:aIL	[Lcom/google/android/gms/common/k;
    //   107: aload_0
    //   108: getfield 99	com/google/android/gms/common/internal/al:aIb	Ljava/lang/Object;
    //   111: astore_1
    //   112: aload_1
    //   113: monitorenter
    //   114: aload_0
    //   115: getfield 161	com/google/android/gms/common/internal/al:aIc	Lcom/google/android/gms/common/internal/w;
    //   118: ifnull +48 -> 166
    //   121: aload_0
    //   122: getfield 161	com/google/android/gms/common/internal/al:aIc	Lcom/google/android/gms/common/internal/w;
    //   125: new 430	com/google/android/gms/common/internal/as
    //   128: dup
    //   129: aload_0
    //   130: aload_0
    //   131: getfield 117	com/google/android/gms/common/internal/al:aIo	Ljava/util/concurrent/atomic/AtomicInteger;
    //   134: invokevirtual 231	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   137: invokespecial 431	com/google/android/gms/common/internal/as:<init>	(Lcom/google/android/gms/common/internal/al;I)V
    //   140: aload_3
    //   141: invokeinterface 436 3 0
    //   146: aload_1
    //   147: monitorexit
    //   148: return
    //   149: new 438	android/accounts/Account
    //   152: dup
    //   153: ldc_w 440
    //   156: ldc_w 442
    //   159: invokespecial 443	android/accounts/Account:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   162: astore_2
    //   163: goto -83 -> 80
    //   166: ldc -71
    //   168: ldc_w 445
    //   171: invokestatic 448	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   174: pop
    //   175: goto -29 -> 146
    //   178: astore_2
    //   179: aload_1
    //   180: monitorexit
    //   181: aload_2
    //   182: athrow
    //   183: astore_1
    //   184: ldc -71
    //   186: ldc_w 450
    //   189: aload_1
    //   190: invokestatic 453	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   193: pop
    //   194: aload_0
    //   195: getfield 148	com/google/android/gms/common/internal/al:mHandler	Landroid/os/Handler;
    //   198: aload_0
    //   199: getfield 148	com/google/android/gms/common/internal/al:mHandler	Landroid/os/Handler;
    //   202: bipush 6
    //   204: aload_0
    //   205: getfield 117	com/google/android/gms/common/internal/al:aIo	Ljava/util/concurrent/atomic/AtomicInteger;
    //   208: invokevirtual 231	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   211: iconst_1
    //   212: invokevirtual 276	android/os/Handler:obtainMessage	(III)Landroid/os/Message;
    //   215: invokevirtual 280	android/os/Handler:sendMessage	(Landroid/os/Message;)Z
    //   218: pop
    //   219: return
    //   220: astore_1
    //   221: aload_1
    //   222: athrow
    //   223: astore_1
    //   224: ldc -71
    //   226: ldc_w 450
    //   229: aload_1
    //   230: invokestatic 453	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   233: pop
    //   234: aload_0
    //   235: bipush 8
    //   237: aconst_null
    //   238: aconst_null
    //   239: aload_0
    //   240: getfield 117	com/google/android/gms/common/internal/al:aIo	Ljava/util/concurrent/atomic/AtomicInteger;
    //   243: invokevirtual 231	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   246: invokevirtual 455	com/google/android/gms/common/internal/al:a	(ILandroid/os/IBinder;Landroid/os/Bundle;I)V
    //   249: return
    //   250: astore_1
    //   251: goto -27 -> 224
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	254	0	this	al
    //   0	254	2	paramSet	Set<Scope>
    //   17	124	3	localbf	bf
    //   4	27	4	localBundle	Bundle
    // Exception table:
    //   from	to	target	type
    //   114	146	178	finally
    //   146	148	178	finally
    //   166	175	178	finally
    //   179	181	178	finally
    //   107	114	183	android/os/DeadObjectException
    //   181	183	183	android/os/DeadObjectException
    //   107	114	220	java/lang/SecurityException
    //   181	183	220	java/lang/SecurityException
    //   107	114	223	android/os/RemoteException
    //   181	183	223	android/os/RemoteException
    //   107	114	250	java/lang/RuntimeException
    //   181	183	250	java/lang/RuntimeException
  }
  
  public final void a(String paramString, PrintWriter paramPrintWriter)
  {
    int i;
    Object localObject1;
    synchronized (this.mLock)
    {
      i = this.aIh;
      localObject1 = this.aIe;
    }
    for (;;)
    {
      Object localObject3;
      synchronized (this.aIb)
      {
        localObject3 = this.aIc;
        paramPrintWriter.append(paramString).append("mConnectState=");
        switch (i)
        {
        default: 
          paramPrintWriter.print("UNKNOWN");
          paramPrintWriter.append(" mService=");
          if (localObject1 != null) {
            break label539;
          }
          paramPrintWriter.append("null");
          paramPrintWriter.append(" mServiceBroker=");
          if (localObject3 != null) {
            break label573;
          }
          paramPrintWriter.println("null");
          localObject1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.US);
          long l;
          if (this.aHW > 0L)
          {
            ??? = paramPrintWriter.append(paramString).append("lastConnectedTime=");
            l = this.aHW;
            localObject3 = ((SimpleDateFormat)localObject1).format(new Date(this.aHW));
            ((PrintWriter)???).println(String.valueOf(localObject3).length() + 21 + l + " " + (String)localObject3);
          }
          if (this.aHV > 0L) {
            paramPrintWriter.append(paramString).append("lastSuspendedCause=");
          }
          switch (this.aHU)
          {
          default: 
            paramPrintWriter.append(String.valueOf(this.aHU));
            ??? = paramPrintWriter.append(" lastSuspendedTime=");
            l = this.aHV;
            localObject3 = ((SimpleDateFormat)localObject1).format(new Date(this.aHV));
            ((PrintWriter)???).println(String.valueOf(localObject3).length() + 21 + l + " " + (String)localObject3);
            if (this.aHY > 0L)
            {
              paramPrintWriter.append(paramString).append("lastFailedStatus=").append(d.cE(this.aHX));
              paramString = paramPrintWriter.append(" lastFailedTime=");
              l = this.aHY;
              paramPrintWriter = ((SimpleDateFormat)localObject1).format(new Date(this.aHY));
              paramString.println(String.valueOf(paramPrintWriter).length() + 21 + l + " " + paramPrintWriter);
            }
            return;
            paramString = finally;
            throw paramString;
          }
          break;
        }
      }
      paramPrintWriter.print("REMOTE_CONNECTING");
      continue;
      paramPrintWriter.print("LOCAL_CONNECTING");
      continue;
      paramPrintWriter.print("CONNECTED");
      continue;
      paramPrintWriter.print("DISCONNECTING");
      continue;
      paramPrintWriter.print("DISCONNECTED");
      continue;
      label539:
      paramPrintWriter.append(oj()).append("@").append(Integer.toHexString(System.identityHashCode(((IInterface)localObject1).asBinder())));
      continue;
      label573:
      paramPrintWriter.append("IGmsServiceBroker@").println(Integer.toHexString(System.identityHashCode(((w)localObject3).asBinder())));
      continue;
      paramPrintWriter.append("CAUSE_SERVICE_DISCONNECTED");
      continue;
      paramPrintWriter.append("CAUSE_NETWORK_LOST");
    }
  }
  
  protected final void au(int paramInt1, int paramInt2)
  {
    this.mHandler.sendMessage(this.mHandler.obtainMessage(7, paramInt2, -1, new aw(this, paramInt1)));
  }
  
  public void disconnect()
  {
    this.aIo.incrementAndGet();
    synchronized (this.aIf)
    {
      int j = this.aIf.size();
      int i = 0;
      while (i < j)
      {
        ((aq)this.aIf.get(i)).da();
        i += 1;
      }
      this.aIf.clear();
    }
    synchronized (this.aIb)
    {
      this.aIc = null;
      a(1, null);
      return;
      localObject2 = finally;
      throw ((Throwable)localObject2);
    }
  }
  
  public abstract T h(IBinder paramIBinder);
  
  public final boolean isConnected()
  {
    for (;;)
    {
      synchronized (this.mLock)
      {
        if (this.aIh == 4)
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
  
  public final boolean isConnecting()
  {
    for (;;)
    {
      synchronized (this.mLock)
      {
        if (this.aIh != 2)
        {
          if (this.aIh != 3) {
            break label40;
          }
          break label35;
          return bool;
        }
      }
      label35:
      boolean bool = true;
      continue;
      label40:
      bool = false;
    }
  }
  
  public Account mV()
  {
    return null;
  }
  
  public boolean mX()
  {
    return false;
  }
  
  public final Intent mY()
  {
    throw new UnsupportedOperationException("Not a sign in API");
  }
  
  public final String mZ()
  {
    if ((isConnected()) && (this.aHZ != null)) {
      return this.aHZ.aHG;
    }
    throw new RuntimeException("Failed to connect when checking package");
  }
  
  protected Set<Scope> nW()
  {
    return Collections.EMPTY_SET;
  }
  
  public k[] nX()
  {
    return new k[0];
  }
  
  public abstract String oi();
  
  public abstract String oj();
  
  void ok() {}
  
  public final void on()
  {
    int i = this.aDE.w(this.mContext);
    if (i != 0)
    {
      a(1, null);
      this.aId = ((ar)ae.g(new au(this), "Connection progress callbacks cannot be null."));
      this.mHandler.sendMessage(this.mHandler.obtainMessage(3, this.aIo.get(), i, null));
      return;
    }
    a(new au(this));
  }
  
  public Bundle op()
  {
    return new Bundle();
  }
  
  protected final void oq()
  {
    if (!isConnected()) {
      throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
    }
  }
  
  public final T or()
    throws DeadObjectException
  {
    synchronized (this.mLock)
    {
      if (this.aIh == 5) {
        throw new DeadObjectException();
      }
    }
    oq();
    if (this.aIe != null) {}
    for (boolean bool = true;; bool = false)
    {
      ae.a(bool, "Client is connected but service is null");
      IInterface localIInterface = this.aIe;
      return localIInterface;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/internal/al.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */