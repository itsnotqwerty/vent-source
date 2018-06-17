package android.support.v4.d;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.os.RemoteException;

public abstract interface b
  extends IInterface
{
  public abstract void send(int paramInt, Bundle paramBundle)
    throws RemoteException;
  
  public static abstract class a
    extends Binder
    implements b
  {
    public a()
    {
      attachInterface(this, "android.support.v4.os.IResultReceiver");
    }
    
    public static b c(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("android.support.v4.os.IResultReceiver");
      if ((localIInterface != null) && ((localIInterface instanceof b))) {
        return (b)localIInterface;
      }
      return new a(paramIBinder);
    }
    
    public IBinder asBinder()
    {
      return this;
    }
    
    public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
      throws RemoteException
    {
      switch (paramInt1)
      {
      default: 
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902: 
        paramParcel2.writeString("android.support.v4.os.IResultReceiver");
        return true;
      }
      paramParcel1.enforceInterface("android.support.v4.os.IResultReceiver");
      paramInt1 = paramParcel1.readInt();
      if (paramParcel1.readInt() != 0) {}
      for (paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);; paramParcel1 = null)
      {
        send(paramInt1, paramParcel1);
        return true;
      }
    }
    
    private static final class a
      implements b
    {
      private IBinder Cw;
      
      a(IBinder paramIBinder)
      {
        this.Cw = paramIBinder;
      }
      
      public final IBinder asBinder()
      {
        return this.Cw;
      }
      
      /* Error */
      public final void send(int paramInt, Bundle paramBundle)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 31	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_3
        //   4: aload_3
        //   5: ldc 33
        //   7: invokevirtual 37	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   10: aload_3
        //   11: iload_1
        //   12: invokevirtual 41	android/os/Parcel:writeInt	(I)V
        //   15: aload_2
        //   16: ifnull +33 -> 49
        //   19: aload_3
        //   20: iconst_1
        //   21: invokevirtual 41	android/os/Parcel:writeInt	(I)V
        //   24: aload_2
        //   25: aload_3
        //   26: iconst_0
        //   27: invokevirtual 47	android/os/Bundle:writeToParcel	(Landroid/os/Parcel;I)V
        //   30: aload_0
        //   31: getfield 18	android/support/v4/d/b$a$a:Cw	Landroid/os/IBinder;
        //   34: iconst_1
        //   35: aload_3
        //   36: aconst_null
        //   37: iconst_1
        //   38: invokeinterface 53 5 0
        //   43: pop
        //   44: aload_3
        //   45: invokevirtual 56	android/os/Parcel:recycle	()V
        //   48: return
        //   49: aload_3
        //   50: iconst_0
        //   51: invokevirtual 41	android/os/Parcel:writeInt	(I)V
        //   54: goto -24 -> 30
        //   57: astore_2
        //   58: aload_3
        //   59: invokevirtual 56	android/os/Parcel:recycle	()V
        //   62: aload_2
        //   63: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	64	0	this	a
        //   0	64	1	paramInt	int
        //   0	64	2	paramBundle	Bundle
        //   3	56	3	localParcel	Parcel
        // Exception table:
        //   from	to	target	type
        //   4	15	57	finally
        //   19	30	57	finally
        //   30	44	57	finally
        //   49	54	57	finally
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/d/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */