package com.google.firebase.iid;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.c.e;
import com.google.android.gms.c.f;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

public final class o
{
  private static o bfr;
  final Context aUM;
  final ScheduledExecutorService bfs;
  private p bft = new p(this, (byte)0);
  private int bfu = 1;
  
  private o(Context paramContext, ScheduledExecutorService paramScheduledExecutorService)
  {
    this.bfs = paramScheduledExecutorService;
    this.aUM = paramContext.getApplicationContext();
  }
  
  public static o ao(Context paramContext)
  {
    try
    {
      if (bfr == null) {
        bfr = new o(paramContext, Executors.newSingleThreadScheduledExecutor());
      }
      paramContext = bfr;
      return paramContext;
    }
    finally {}
  }
  
  public final <T> e<T> a(w<T> paramw)
  {
    try
    {
      if (Log.isLoggable("MessengerIpcClient", 3))
      {
        String str = String.valueOf(paramw);
        Log.d("MessengerIpcClient", String.valueOf(str).length() + 9 + "Queueing " + str);
      }
      if (!this.bft.b(paramw))
      {
        this.bft = new p(this, (byte)0);
        this.bft.b(paramw);
      }
      paramw = paramw.bfE.bdU;
      return paramw;
    }
    finally {}
  }
  
  public final int uL()
  {
    try
    {
      int i = this.bfu;
      this.bfu = (i + 1);
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/firebase/iid/o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */