package com.google.firebase.iid;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import android.util.SparseArray;
import com.google.android.gms.common.internal.ae;
import com.google.android.gms.common.stats.a;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

final class p
  implements ServiceConnection
{
  final Messenger bfv = new Messenger(new Handler(Looper.getMainLooper(), new q(this)));
  u bfw;
  final Queue<w<?>> bfx = new ArrayDeque();
  final SparseArray<w<?>> bfy = new SparseArray();
  int state = 0;
  
  private p(o paramo) {}
  
  private final void a(x paramx)
  {
    Iterator localIterator = this.bfx.iterator();
    while (localIterator.hasNext()) {
      ((w)localIterator.next()).b(paramx);
    }
    this.bfx.clear();
    int i = 0;
    while (i < this.bfy.size())
    {
      ((w)this.bfy.valueAt(i)).b(paramx);
      i += 1;
    }
    this.bfy.clear();
  }
  
  private final void uM()
  {
    this.bfz.bfs.execute(new s(this));
  }
  
  final boolean b(w paramw)
  {
    boolean bool1 = false;
    boolean bool2 = true;
    for (;;)
    {
      try
      {
        switch (this.state)
        {
        case 0: 
          int i = this.state;
          throw new IllegalStateException(26 + "Unknown state: " + i);
        }
      }
      finally {}
      this.bfx.add(paramw);
      if (this.state == 0) {
        bool1 = true;
      }
      ae.at(bool1);
      if (Log.isLoggable("MessengerIpcClient", 2)) {
        Log.v("MessengerIpcClient", "Starting bind to GmsCore");
      }
      this.state = 1;
      paramw = new Intent("com.google.android.c2dm.intent.REGISTER");
      paramw.setPackage("com.google.android.gms");
      a.oz();
      if (!a.b(this.bfz.aUM, paramw, this, 1))
      {
        f(0, "Unable to bind to service");
        bool1 = bool2;
      }
      for (;;)
      {
        return bool1;
        this.bfz.bfs.schedule(new r(this), 30L, TimeUnit.SECONDS);
        bool1 = bool2;
        continue;
        this.bfx.add(paramw);
        bool1 = bool2;
        continue;
        this.bfx.add(paramw);
        uM();
        bool1 = bool2;
        continue;
        bool1 = false;
      }
    }
  }
  
  final boolean c(Message paramMessage)
  {
    int i = paramMessage.arg1;
    if (Log.isLoggable("MessengerIpcClient", 3)) {
      Log.d("MessengerIpcClient", 41 + "Received response to request: " + i);
    }
    w localw;
    try
    {
      localw = (w)this.bfy.get(i);
      if (localw == null)
      {
        Log.w("MessengerIpcClient", 50 + "Received response for unknown request: " + i);
        return true;
      }
      this.bfy.remove(i);
      uN();
      paramMessage = paramMessage.getData();
      if (paramMessage.getBoolean("unsupported", false))
      {
        localw.b(new x(4, "Not supported by GmsCore"));
        return true;
      }
    }
    finally {}
    localw.l(paramMessage);
    return true;
  }
  
  final void dd(int paramInt)
  {
    try
    {
      w localw = (w)this.bfy.get(paramInt);
      if (localw != null)
      {
        Log.w("MessengerIpcClient", 31 + "Timing out request: " + paramInt);
        this.bfy.remove(paramInt);
        localw.b(new x(3, "Timed out waiting for response"));
        uN();
      }
      return;
    }
    finally {}
  }
  
  final void f(int paramInt, String paramString)
  {
    for (;;)
    {
      try
      {
        if (Log.isLoggable("MessengerIpcClient", 3))
        {
          str = String.valueOf(paramString);
          if (str.length() != 0)
          {
            str = "Disconnected: ".concat(str);
            Log.d("MessengerIpcClient", str);
          }
        }
        else
        {
          switch (this.state)
          {
          case 0: 
            paramInt = this.state;
            throw new IllegalStateException(26 + "Unknown state: " + paramInt);
          }
        }
      }
      finally {}
      String str = new String("Disconnected: ");
      continue;
      throw new IllegalStateException();
      if (Log.isLoggable("MessengerIpcClient", 2)) {
        Log.v("MessengerIpcClient", "Unbinding service");
      }
      this.state = 4;
      a.oz();
      this.bfz.aUM.unbindService(this);
      a(new x(paramInt, paramString));
      for (;;)
      {
        return;
        this.state = 4;
      }
    }
  }
  
  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    for (;;)
    {
      try
      {
        if (Log.isLoggable("MessengerIpcClient", 2)) {
          Log.v("MessengerIpcClient", "Service connected");
        }
        if (paramIBinder != null) {
          continue;
        }
        f(0, "Null service connection");
      }
      finally
      {
        try
        {
          this.bfw = new u(paramIBinder);
          this.state = 2;
          uM();
        }
        catch (RemoteException paramComponentName)
        {
          f(0, paramComponentName.getMessage());
        }
        paramComponentName = finally;
      }
      return;
    }
  }
  
  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    try
    {
      if (Log.isLoggable("MessengerIpcClient", 2)) {
        Log.v("MessengerIpcClient", "Service disconnected");
      }
      f(2, "Service disconnected");
      return;
    }
    finally {}
  }
  
  final void uN()
  {
    try
    {
      if ((this.state == 2) && (this.bfx.isEmpty()) && (this.bfy.size() == 0))
      {
        if (Log.isLoggable("MessengerIpcClient", 2)) {
          Log.v("MessengerIpcClient", "Finished handling requests, unbinding");
        }
        this.state = 3;
        a.oz();
        this.bfz.aUM.unbindService(this);
      }
      return;
    }
    finally {}
  }
  
  final void uO()
  {
    try
    {
      if (this.state == 1) {
        f(1, "Timed out while binding");
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/firebase/iid/p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */