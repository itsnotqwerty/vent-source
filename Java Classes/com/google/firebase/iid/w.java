package com.google.firebase.iid;

import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.c.f;

abstract class w<T>
{
  final int bfD;
  final f<T> bfE = new f();
  final Bundle bfF;
  final int what;
  
  w(int paramInt1, int paramInt2, Bundle paramBundle)
  {
    this.bfD = paramInt1;
    this.what = paramInt2;
    this.bfF = paramBundle;
  }
  
  final void Y(T paramT)
  {
    if (Log.isLoggable("MessengerIpcClient", 3))
    {
      String str1 = String.valueOf(this);
      String str2 = String.valueOf(paramT);
      Log.d("MessengerIpcClient", String.valueOf(str1).length() + 16 + String.valueOf(str2).length() + "Finishing " + str1 + " with " + str2);
    }
    this.bfE.N(paramT);
  }
  
  final void b(x paramx)
  {
    if (Log.isLoggable("MessengerIpcClient", 3))
    {
      String str1 = String.valueOf(this);
      String str2 = String.valueOf(paramx);
      Log.d("MessengerIpcClient", String.valueOf(str1).length() + 14 + String.valueOf(str2).length() + "Failing " + str1 + " with " + str2);
    }
    this.bfE.e(paramx);
  }
  
  abstract void l(Bundle paramBundle);
  
  public String toString()
  {
    int i = this.what;
    int j = this.bfD;
    boolean bool = uP();
    return 55 + "Request { what=" + i + " id=" + j + " oneWay=" + bool + "}";
  }
  
  abstract boolean uP();
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/firebase/iid/w.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */