package com.firebase.jobdispatcher;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class t
  implements ServiceConnection
{
  private final Map<q, Boolean> axU = new HashMap();
  private final l axV;
  private boolean axW = false;
  private m axX;
  private final Context context;
  
  t(l paraml, Context paramContext)
  {
    this.axV = paraml;
    this.context = paramContext;
  }
  
  private void a(boolean paramBoolean, q paramq)
  {
    try
    {
      this.axX.a(b(paramq), paramBoolean);
      return;
    }
    catch (RemoteException paramq)
    {
      for (;;)
      {
        Log.e("FJD.ExternalReceiver", "Failed to stop a job", paramq);
        kV();
      }
    }
    finally {}
  }
  
  private static Bundle b(r paramr)
  {
    return GooglePlayReceiver.kK().a(paramr, new Bundle());
  }
  
  final void b(q paramq)
  {
    try
    {
      this.axU.remove(paramq);
      if (this.axU.isEmpty()) {
        kV();
      }
      return;
    }
    finally
    {
      paramq = finally;
      throw paramq;
    }
  }
  
  /* Error */
  final void b(q paramq, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokevirtual 91	com/firebase/jobdispatcher/t:kU	()Z
    //   6: ifne +58 -> 64
    //   9: getstatic 97	java/lang/Boolean:TRUE	Ljava/lang/Boolean;
    //   12: aload_0
    //   13: getfield 27	com/firebase/jobdispatcher/t:axU	Ljava/util/Map;
    //   16: aload_1
    //   17: invokeinterface 83 2 0
    //   22: invokevirtual 101	java/lang/Boolean:equals	(Ljava/lang/Object;)Z
    //   25: ifeq +16 -> 41
    //   28: aload_0
    //   29: invokevirtual 104	com/firebase/jobdispatcher/t:isConnected	()Z
    //   32: ifeq +9 -> 41
    //   35: aload_0
    //   36: iload_2
    //   37: aload_1
    //   38: invokespecial 106	com/firebase/jobdispatcher/t:a	(ZLcom/firebase/jobdispatcher/q;)V
    //   41: iload_2
    //   42: ifne +19 -> 61
    //   45: aload_0
    //   46: getfield 27	com/firebase/jobdispatcher/t:axU	Ljava/util/Map;
    //   49: invokeinterface 87 1 0
    //   54: ifeq +7 -> 61
    //   57: aload_0
    //   58: invokevirtual 62	com/firebase/jobdispatcher/t:kV	()V
    //   61: aload_0
    //   62: monitorexit
    //   63: return
    //   64: ldc 51
    //   66: ldc 108
    //   68: invokestatic 112	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   71: pop
    //   72: goto -11 -> 61
    //   75: astore_1
    //   76: aload_0
    //   77: monitorexit
    //   78: aload_1
    //   79: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	80	0	this	t
    //   0	80	1	paramq	q
    //   0	80	2	paramBoolean	boolean
    // Exception table:
    //   from	to	target	type
    //   2	41	75	finally
    //   45	61	75	finally
    //   64	72	75	finally
  }
  
  final boolean c(q paramq)
  {
    boolean bool;
    try
    {
      bool = isConnected();
      if (bool)
      {
        Boolean localBoolean = (Boolean)this.axU.get(paramq);
        if (Boolean.TRUE.equals(localBoolean))
        {
          Log.w("FJD.ExternalReceiver", "Received an execution request for already running job " + paramq);
          a(false, paramq);
        }
      }
      try
      {
        this.axX.a(b(paramq), this.axV);
        this.axU.put(paramq, Boolean.valueOf(bool));
      }
      catch (RemoteException localRemoteException)
      {
        for (;;)
        {
          Log.e("FJD.ExternalReceiver", "Failed to start the job " + paramq, localRemoteException);
          kV();
          bool = false;
        }
      }
      return bool;
    }
    finally {}
  }
  
  final boolean d(q paramq)
  {
    try
    {
      boolean bool = this.axU.containsKey(paramq);
      return bool;
    }
    finally
    {
      paramq = finally;
      throw paramq;
    }
  }
  
  /* Error */
  final boolean isConnected()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 40	com/firebase/jobdispatcher/t:axX	Lcom/firebase/jobdispatcher/m;
    //   6: astore_2
    //   7: aload_2
    //   8: ifnull +9 -> 17
    //   11: iconst_1
    //   12: istore_1
    //   13: aload_0
    //   14: monitorexit
    //   15: iload_1
    //   16: ireturn
    //   17: iconst_0
    //   18: istore_1
    //   19: goto -6 -> 13
    //   22: astore_2
    //   23: aload_0
    //   24: monitorexit
    //   25: aload_2
    //   26: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	27	0	this	t
    //   12	7	1	bool	boolean
    //   6	2	2	localm	m
    //   22	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	22	finally
  }
  
  final boolean kU()
  {
    try
    {
      boolean bool = this.axW;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  final void kV()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokevirtual 91	com/firebase/jobdispatcher/t:kU	()Z
    //   6: ifne +21 -> 27
    //   9: aload_0
    //   10: aconst_null
    //   11: putfield 40	com/firebase/jobdispatcher/t:axX	Lcom/firebase/jobdispatcher/m;
    //   14: aload_0
    //   15: iconst_1
    //   16: putfield 29	com/firebase/jobdispatcher/t:axW	Z
    //   19: aload_0
    //   20: getfield 33	com/firebase/jobdispatcher/t:context	Landroid/content/Context;
    //   23: aload_0
    //   24: invokevirtual 157	android/content/Context:unbindService	(Landroid/content/ServiceConnection;)V
    //   27: aload_0
    //   28: monitorexit
    //   29: return
    //   30: astore_1
    //   31: ldc 51
    //   33: new 119	java/lang/StringBuilder
    //   36: dup
    //   37: ldc -97
    //   39: invokespecial 124	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   42: aload_1
    //   43: invokevirtual 162	java/lang/IllegalArgumentException:getMessage	()Ljava/lang/String;
    //   46: invokevirtual 165	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   49: invokevirtual 132	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   52: invokestatic 112	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   55: pop
    //   56: goto -29 -> 27
    //   59: astore_1
    //   60: aload_0
    //   61: monitorexit
    //   62: aload_1
    //   63: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	64	0	this	t
    //   30	13	1	localIllegalArgumentException	IllegalArgumentException
    //   59	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   19	27	30	java/lang/IllegalArgumentException
    //   2	19	59	finally
    //   19	27	59	finally
    //   31	56	59	finally
  }
  
  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    for (;;)
    {
      try
      {
        if (kU())
        {
          Log.w("FJD.ExternalReceiver", "Connection have been used already.");
          return;
        }
        this.axX = m.a.e(paramIBinder);
        paramIBinder = new HashSet();
        Iterator localIterator = this.axU.entrySet().iterator();
        if (localIterator.hasNext())
        {
          paramComponentName = (Map.Entry)localIterator.next();
          boolean bool = Boolean.FALSE.equals(paramComponentName.getValue());
          if (!bool) {
            continue;
          }
          try
          {
            this.axX.a(b((r)paramComponentName.getKey()), this.axV);
            paramIBinder.add(paramComponentName.getKey());
          }
          catch (RemoteException paramIBinder)
          {
            Log.e("FJD.ExternalReceiver", "Failed to start job " + paramComponentName.getKey(), paramIBinder);
            kV();
          }
          continue;
        }
        paramComponentName = paramIBinder.iterator();
      }
      finally {}
      while (paramComponentName.hasNext())
      {
        paramIBinder = (q)paramComponentName.next();
        this.axU.put(paramIBinder, Boolean.valueOf(true));
      }
    }
  }
  
  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    try
    {
      kV();
      return;
    }
    finally
    {
      paramComponentName = finally;
      throw paramComponentName;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/firebase/jobdispatcher/t.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */