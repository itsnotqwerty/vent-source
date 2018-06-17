package com.firebase.jobdispatcher;

import android.os.Bundle;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;

final class k
  implements o
{
  private final Messenger axx;
  private final String tag;
  
  k(Messenger paramMessenger, String paramString)
  {
    this.axx = paramMessenger;
    this.tag = paramString;
  }
  
  public final void ct(int paramInt)
  {
    try
    {
      Messenger localMessenger = this.axx;
      Message localMessage = Message.obtain();
      localMessage.what = 3;
      localMessage.arg1 = paramInt;
      Bundle localBundle = new Bundle();
      localBundle.putString("tag", this.tag);
      localMessage.setData(localBundle);
      localMessenger.send(localMessage);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeException(localRemoteException);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/firebase/jobdispatcher/k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */