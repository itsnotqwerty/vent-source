package com.firebase.jobdispatcher;

import android.app.Service;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import android.os.Messenger;
import android.support.v4.g.m;
import android.util.Log;
import android.util.Pair;

public class GooglePlayReceiver
  extends Service
  implements d.a
{
  private static final m<String, m<String, o>> axE = new m(1);
  private static final p axy = new p("com.firebase.jobdispatcher.");
  Messenger axA;
  ab axB;
  private d axC;
  private int axD;
  c axm;
  private final f axz = new f();
  
  static q a(o paramo, Bundle paramBundle)
  {
    Object localObject1 = axy;
    if (paramBundle == null)
    {
      Log.e("FJD.ExternalReceiver", "Unexpected null Bundle provided");
      paramBundle = null;
    }
    Object localObject2;
    while (paramBundle == null)
    {
      Log.e("FJD.GooglePlayReceiver", "unable to decode job");
      a(paramo, 2);
      return null;
      localObject2 = paramBundle.getBundle("extras");
      if (localObject2 == null)
      {
        paramBundle = null;
      }
      else
      {
        localObject1 = ((p)localObject1).g((Bundle)localObject2);
        paramBundle = paramBundle.getParcelableArrayList("triggered_uris");
        if (paramBundle != null) {
          ((q.a)localObject1).axN = new aa(paramBundle);
        }
        paramBundle = ((q.a)localObject1).kT();
      }
    }
    synchronized (axE)
    {
      localObject2 = (m)axE.get(paramBundle.axF);
      localObject1 = localObject2;
      if (localObject2 == null)
      {
        localObject1 = new m(1);
        axE.put(paramBundle.axF, localObject1);
      }
      ((m)localObject1).put(paramBundle.tag, paramo);
      return paramBundle;
    }
  }
  
  private static void a(o paramo, int paramInt)
  {
    try
    {
      paramo.ct(paramInt);
      return;
    }
    catch (Throwable paramo)
    {
      Log.e("FJD.GooglePlayReceiver", "Encountered error running callback", paramo.getCause());
    }
  }
  
  static void b(n paramn)
  {
    synchronized (axE)
    {
      localObject = (m)axE.get(paramn.axF);
      if (localObject == null) {
        return;
      }
      if ((o)((m)localObject).get(paramn.tag) == null) {
        return;
      }
    }
    Object localObject = new q.a();
    ((q.a)localObject).tag = paramn.tag;
    ((q.a)localObject).axF = paramn.axF;
    ((q.a)localObject).axG = paramn.axG;
    d.a(((q.a)localObject).kT(), false);
  }
  
  private Messenger kG()
  {
    try
    {
      if (this.axA == null) {
        this.axA = new Messenger(new j(Looper.getMainLooper(), this));
      }
      Messenger localMessenger = this.axA;
      return localMessenger;
    }
    finally {}
  }
  
  private c kI()
  {
    try
    {
      if (this.axm == null) {
        this.axm = new g(getApplicationContext());
      }
      c localc = this.axm;
      return localc;
    }
    finally {}
  }
  
  private ab kJ()
  {
    try
    {
      if (this.axB == null) {
        this.axB = new ab(kI().kD());
      }
      ab localab = this.axB;
      return localab;
    }
    finally {}
  }
  
  static p kK()
  {
    return axy;
  }
  
  /* Error */
  public final void a(q paramq, int paramInt)
  {
    // Byte code:
    //   0: getstatic 42	com/firebase/jobdispatcher/GooglePlayReceiver:axE	Landroid/support/v4/g/m;
    //   3: astore 4
    //   5: aload 4
    //   7: monitorenter
    //   8: getstatic 42	com/firebase/jobdispatcher/GooglePlayReceiver:axE	Landroid/support/v4/g/m;
    //   11: aload_1
    //   12: getfield 108	com/firebase/jobdispatcher/q:axF	Ljava/lang/String;
    //   15: invokevirtual 112	android/support/v4/g/m:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   18: checkcast 37	android/support/v4/g/m
    //   21: astore 5
    //   23: aload 5
    //   25: ifnonnull +24 -> 49
    //   28: getstatic 42	com/firebase/jobdispatcher/GooglePlayReceiver:axE	Landroid/support/v4/g/m;
    //   31: invokevirtual 211	android/support/v4/g/m:isEmpty	()Z
    //   34: ifeq +11 -> 45
    //   37: aload_0
    //   38: aload_0
    //   39: getfield 213	com/firebase/jobdispatcher/GooglePlayReceiver:axD	I
    //   42: invokevirtual 216	com/firebase/jobdispatcher/GooglePlayReceiver:stopSelf	(I)V
    //   45: aload 4
    //   47: monitorexit
    //   48: return
    //   49: aload 5
    //   51: aload_1
    //   52: getfield 119	com/firebase/jobdispatcher/q:tag	Ljava/lang/String;
    //   55: invokevirtual 219	android/support/v4/g/m:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   58: checkcast 123	com/firebase/jobdispatcher/o
    //   61: astore 6
    //   63: aload 6
    //   65: ifnonnull +30 -> 95
    //   68: getstatic 42	com/firebase/jobdispatcher/GooglePlayReceiver:axE	Landroid/support/v4/g/m;
    //   71: invokevirtual 211	android/support/v4/g/m:isEmpty	()Z
    //   74: ifeq +11 -> 85
    //   77: aload_0
    //   78: aload_0
    //   79: getfield 213	com/firebase/jobdispatcher/GooglePlayReceiver:axD	I
    //   82: invokevirtual 216	com/firebase/jobdispatcher/GooglePlayReceiver:stopSelf	(I)V
    //   85: aload 4
    //   87: monitorexit
    //   88: return
    //   89: astore_1
    //   90: aload 4
    //   92: monitorexit
    //   93: aload_1
    //   94: athrow
    //   95: aload 5
    //   97: invokevirtual 211	android/support/v4/g/m:isEmpty	()Z
    //   100: ifeq +14 -> 114
    //   103: getstatic 42	com/firebase/jobdispatcher/GooglePlayReceiver:axE	Landroid/support/v4/g/m;
    //   106: aload_1
    //   107: getfield 108	com/firebase/jobdispatcher/q:axF	Ljava/lang/String;
    //   110: invokevirtual 219	android/support/v4/g/m:remove	(Ljava/lang/Object;)Ljava/lang/Object;
    //   113: pop
    //   114: aload_1
    //   115: invokeinterface 224 1 0
    //   120: ifeq +81 -> 201
    //   123: aload_1
    //   124: invokeinterface 228 1 0
    //   129: instanceof 230
    //   132: ifeq +69 -> 201
    //   135: iload_2
    //   136: iconst_1
    //   137: if_icmpeq +64 -> 201
    //   140: iconst_1
    //   141: istore_3
    //   142: iload_3
    //   143: ifeq +63 -> 206
    //   146: new 232	com/firebase/jobdispatcher/n$a
    //   149: dup
    //   150: aload_0
    //   151: invokespecial 234	com/firebase/jobdispatcher/GooglePlayReceiver:kJ	()Lcom/firebase/jobdispatcher/ab;
    //   154: aload_1
    //   155: invokespecial 237	com/firebase/jobdispatcher/n$a:<init>	(Lcom/firebase/jobdispatcher/ab;Lcom/firebase/jobdispatcher/r;)V
    //   158: astore_1
    //   159: aload_1
    //   160: iconst_1
    //   161: putfield 241	com/firebase/jobdispatcher/n$a:axL	Z
    //   164: aload_1
    //   165: invokevirtual 245	com/firebase/jobdispatcher/n$a:kS	()Lcom/firebase/jobdispatcher/n;
    //   168: astore_1
    //   169: aload_0
    //   170: invokespecial 195	com/firebase/jobdispatcher/GooglePlayReceiver:kI	()Lcom/firebase/jobdispatcher/c;
    //   173: aload_1
    //   174: invokeinterface 248 2 0
    //   179: pop
    //   180: getstatic 42	com/firebase/jobdispatcher/GooglePlayReceiver:axE	Landroid/support/v4/g/m;
    //   183: invokevirtual 211	android/support/v4/g/m:isEmpty	()Z
    //   186: ifeq +11 -> 197
    //   189: aload_0
    //   190: aload_0
    //   191: getfield 213	com/firebase/jobdispatcher/GooglePlayReceiver:axD	I
    //   194: invokevirtual 216	com/firebase/jobdispatcher/GooglePlayReceiver:stopSelf	(I)V
    //   197: aload 4
    //   199: monitorexit
    //   200: return
    //   201: iconst_0
    //   202: istore_3
    //   203: goto -61 -> 142
    //   206: ldc 64
    //   208: iconst_2
    //   209: invokestatic 252	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   212: ifeq +39 -> 251
    //   215: ldc 64
    //   217: new 254	java/lang/StringBuilder
    //   220: dup
    //   221: ldc_w 256
    //   224: invokespecial 257	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   227: aload_1
    //   228: getfield 119	com/firebase/jobdispatcher/q:tag	Ljava/lang/String;
    //   231: invokevirtual 261	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   234: ldc_w 263
    //   237: invokevirtual 261	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   240: iload_2
    //   241: invokevirtual 266	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   244: invokevirtual 270	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   247: invokestatic 273	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   250: pop
    //   251: aload 6
    //   253: iload_2
    //   254: invokestatic 69	com/firebase/jobdispatcher/GooglePlayReceiver:a	(Lcom/firebase/jobdispatcher/o;I)V
    //   257: goto -77 -> 180
    //   260: astore_1
    //   261: getstatic 42	com/firebase/jobdispatcher/GooglePlayReceiver:axE	Landroid/support/v4/g/m;
    //   264: invokevirtual 211	android/support/v4/g/m:isEmpty	()Z
    //   267: ifeq +11 -> 278
    //   270: aload_0
    //   271: aload_0
    //   272: getfield 213	com/firebase/jobdispatcher/GooglePlayReceiver:axD	I
    //   275: invokevirtual 216	com/firebase/jobdispatcher/GooglePlayReceiver:stopSelf	(I)V
    //   278: aload_1
    //   279: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	280	0	this	GooglePlayReceiver
    //   0	280	1	paramq	q
    //   0	280	2	paramInt	int
    //   141	62	3	i	int
    //   3	195	4	localm1	m
    //   21	75	5	localm2	m
    //   61	191	6	localo	o
    // Exception table:
    //   from	to	target	type
    //   28	45	89	finally
    //   45	48	89	finally
    //   68	85	89	finally
    //   85	88	89	finally
    //   90	93	89	finally
    //   180	197	89	finally
    //   197	200	89	finally
    //   261	278	89	finally
    //   278	280	89	finally
    //   8	23	260	finally
    //   49	63	260	finally
    //   95	114	260	finally
    //   114	135	260	finally
    //   146	180	260	finally
    //   206	251	260	finally
    //   251	257	260	finally
  }
  
  final d kH()
  {
    try
    {
      if (this.axC == null) {
        this.axC = new d(this, this);
      }
      d locald = this.axC;
      return locald;
    }
    finally {}
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    if ((paramIntent == null) || (Build.VERSION.SDK_INT < 21) || (!"com.google.android.gms.gcm.ACTION_TASK_READY".equals(paramIntent.getAction()))) {
      return null;
    }
    return kG().getBinder();
  }
  
  public final int onStartCommand(Intent arg1, int paramInt1, int paramInt2)
  {
    Object localObject1 = null;
    for (;;)
    {
      try
      {
        super.onStartCommand(???, paramInt1, paramInt2);
        if (??? == null)
        {
          Log.w("FJD.GooglePlayReceiver", "Null Intent passed, terminating");
          synchronized (axE)
          {
            this.axD = paramInt2;
            if (axE.isEmpty()) {
              stopSelf(this.axD);
            }
            return 2;
          }
        }
        localObject8 = ???.getAction();
        if (!"com.google.android.gms.gcm.ACTION_TASK_READY".equals(localObject8)) {
          continue;
        }
        localObject8 = kH();
        ??? = ???.getExtras();
        if (??? != null) {
          continue;
        }
        Log.e("FJD.GooglePlayReceiver", "No data provided, terminating");
        ??? = (Intent)localObject2;
      }
      finally
      {
        synchronized (axE)
        {
          Object localObject8;
          this.axD = paramInt2;
          if (!axE.isEmpty()) {
            continue;
          }
          stopSelf(this.axD);
          throw ((Throwable)localObject4);
          ??? = a((o)???.first, (Bundle)???.second);
          continue;
          boolean bool = "com.google.android.gms.gcm.SERVICE_ACTION_INITIALIZE".equals(localObject8);
          if (!bool) {
            continue;
          }
          synchronized (axE)
          {
            this.axD = paramInt2;
            if (axE.isEmpty()) {
              stopSelf(this.axD);
            }
            return 2;
          }
          Log.e("FJD.GooglePlayReceiver", "Unknown action received, terminating");
          synchronized (axE)
          {
            this.axD = paramInt2;
            if (!axE.isEmpty()) {
              continue;
            }
            stopSelf(this.axD);
            return 2;
          }
        }
      }
      ((d)localObject8).a(???);
      synchronized (axE)
      {
        this.axD = paramInt2;
        if (axE.isEmpty()) {
          stopSelf(this.axD);
        }
        return 2;
      }
      ??? = f.d(???);
      if (??? != null) {
        continue;
      }
      Log.i("FJD.GooglePlayReceiver", "no callback found");
      ??? = (Intent)localObject3;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/firebase/jobdispatcher/GooglePlayReceiver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */