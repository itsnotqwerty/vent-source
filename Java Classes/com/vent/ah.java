package com.vent;

import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.app.i;

public class ah
  extends i
{
  final Handler handler = new Handler(Looper.getMainLooper());
  
  void b(int paramInt1, int paramInt2, Intent paramIntent) {}
  
  public void startActivityForResult(Intent paramIntent, int paramInt)
  {
    getActivity();
    a.bTD += 1;
    super.startActivityForResult(paramIntent, paramInt);
    a.bTD -= 1;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/ah.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */