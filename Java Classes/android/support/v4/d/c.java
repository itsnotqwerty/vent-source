package android.support.v4.d;

import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class c
  implements Parcelable
{
  public static final Parcelable.Creator<c> CREATOR = new Parcelable.Creator() {};
  final boolean Dj = false;
  b Dk;
  final Handler mHandler = null;
  
  c(Parcel paramParcel)
  {
    this.Dk = b.a.c(paramParcel.readStrongBinder());
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void onReceiveResult(int paramInt, Bundle paramBundle) {}
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    try
    {
      if (this.Dk == null) {
        this.Dk = new a();
      }
      paramParcel.writeStrongBinder(this.Dk.asBinder());
      return;
    }
    finally {}
  }
  
  final class a
    extends b.a
  {
    a() {}
    
    public final void send(int paramInt, Bundle paramBundle)
    {
      if (c.this.mHandler != null)
      {
        c.this.mHandler.post(new c.b(c.this, paramInt, paramBundle));
        return;
      }
      c.this.onReceiveResult(paramInt, paramBundle);
    }
  }
  
  final class b
    implements Runnable
  {
    final int Dm;
    final Bundle Dn;
    
    b(int paramInt, Bundle paramBundle)
    {
      this.Dm = paramInt;
      this.Dn = paramBundle;
    }
    
    public final void run()
    {
      c.this.onReceiveResult(this.Dm, this.Dn);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/d/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */