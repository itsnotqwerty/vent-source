package com.google.firebase.iid;

import android.os.Build.VERSION;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.b.a;
import com.google.android.gms.b.b;

public class m
  implements Parcelable
{
  public static final Parcelable.Creator<m> CREATOR = new n();
  private Messenger bfp;
  private a bfq;
  
  public m(IBinder paramIBinder)
  {
    if (Build.VERSION.SDK_INT >= 21)
    {
      this.bfp = new Messenger(paramIBinder);
      return;
    }
    this.bfq = b.l(paramIBinder);
  }
  
  private final IBinder getBinder()
  {
    if (this.bfp != null) {
      return this.bfp.getBinder();
    }
    return this.bfq.asBinder();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == null) {
      return false;
    }
    try
    {
      boolean bool = getBinder().equals(((m)paramObject).getBinder());
      return bool;
    }
    catch (ClassCastException paramObject) {}
    return false;
  }
  
  public int hashCode()
  {
    return getBinder().hashCode();
  }
  
  public final void send(Message paramMessage)
    throws RemoteException
  {
    if (this.bfp != null)
    {
      this.bfp.send(paramMessage);
      return;
    }
    this.bfq.send(paramMessage);
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (this.bfp != null)
    {
      paramParcel.writeStrongBinder(this.bfp.getBinder());
      return;
    }
    paramParcel.writeStrongBinder(this.bfq.asBinder());
  }
  
  public static final class a
    extends ClassLoader
  {
    protected final Class<?> loadClass(String paramString, boolean paramBoolean)
      throws ClassNotFoundException
    {
      if ("com.google.android.gms.iid.MessengerCompat".equals(paramString))
      {
        if (FirebaseInstanceId.uy()) {
          Log.d("FirebaseInstanceId", "Using renamed FirebaseIidMessengerCompat class");
        }
        return m.class;
      }
      return super.loadClass(paramString, paramBoolean);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/firebase/iid/m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */