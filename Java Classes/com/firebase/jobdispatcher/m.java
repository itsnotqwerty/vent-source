package com.firebase.jobdispatcher;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.os.RemoteException;

public abstract interface m
  extends IInterface
{
  public abstract void a(Bundle paramBundle, l paraml)
    throws RemoteException;
  
  public abstract void a(Bundle paramBundle, boolean paramBoolean)
    throws RemoteException;
  
  public static abstract class a
    extends Binder
    implements m
  {
    public a()
    {
      attachInterface(this, "com.firebase.jobdispatcher.IRemoteJobService");
    }
    
    public static m e(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.firebase.jobdispatcher.IRemoteJobService");
      if ((localIInterface != null) && ((localIInterface instanceof m))) {
        return (m)localIInterface;
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
      IInterface localIInterface = null;
      switch (paramInt1)
      {
      default: 
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902: 
        paramParcel2.writeString("com.firebase.jobdispatcher.IRemoteJobService");
        return true;
      case 1: 
        paramParcel1.enforceInterface("com.firebase.jobdispatcher.IRemoteJobService");
        if (paramParcel1.readInt() != 0)
        {
          paramParcel2 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
          paramParcel1 = paramParcel1.readStrongBinder();
          if (paramParcel1 != null) {
            break label109;
          }
          paramParcel1 = localIInterface;
        }
        for (;;)
        {
          a(paramParcel2, paramParcel1);
          return true;
          paramParcel2 = null;
          break;
          label109:
          localIInterface = paramParcel1.queryLocalInterface("com.firebase.jobdispatcher.IJobCallback");
          if ((localIInterface != null) && ((localIInterface instanceof l))) {
            paramParcel1 = (l)localIInterface;
          } else {
            paramParcel1 = new l.a.a(paramParcel1);
          }
        }
      }
      paramParcel1.enforceInterface("com.firebase.jobdispatcher.IRemoteJobService");
      if (paramParcel1.readInt() != 0)
      {
        paramParcel2 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
        if (paramParcel1.readInt() == 0) {
          break label203;
        }
      }
      label203:
      for (boolean bool = true;; bool = false)
      {
        a(paramParcel2, bool);
        return true;
        paramParcel2 = null;
        break;
      }
    }
    
    private static final class a
      implements m
    {
      private IBinder Cw;
      
      a(IBinder paramIBinder)
      {
        this.Cw = paramIBinder;
      }
      
      /* Error */
      public final void a(Bundle paramBundle, l paraml)
        throws RemoteException
      {
        // Byte code:
        //   0: aconst_null
        //   1: astore_3
        //   2: invokestatic 28	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   5: astore 4
        //   7: aload 4
        //   9: ldc 30
        //   11: invokevirtual 34	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   14: aload_1
        //   15: ifnull +56 -> 71
        //   18: aload 4
        //   20: iconst_1
        //   21: invokevirtual 38	android/os/Parcel:writeInt	(I)V
        //   24: aload_1
        //   25: aload 4
        //   27: iconst_0
        //   28: invokevirtual 44	android/os/Bundle:writeToParcel	(Landroid/os/Parcel;I)V
        //   31: aload_3
        //   32: astore_1
        //   33: aload_2
        //   34: ifnull +10 -> 44
        //   37: aload_2
        //   38: invokeinterface 50 1 0
        //   43: astore_1
        //   44: aload 4
        //   46: aload_1
        //   47: invokevirtual 53	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
        //   50: aload_0
        //   51: getfield 18	com/firebase/jobdispatcher/m$a$a:Cw	Landroid/os/IBinder;
        //   54: iconst_1
        //   55: aload 4
        //   57: aconst_null
        //   58: iconst_1
        //   59: invokeinterface 59 5 0
        //   64: pop
        //   65: aload 4
        //   67: invokevirtual 62	android/os/Parcel:recycle	()V
        //   70: return
        //   71: aload 4
        //   73: iconst_0
        //   74: invokevirtual 38	android/os/Parcel:writeInt	(I)V
        //   77: goto -46 -> 31
        //   80: astore_1
        //   81: aload 4
        //   83: invokevirtual 62	android/os/Parcel:recycle	()V
        //   86: aload_1
        //   87: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	88	0	this	a
        //   0	88	1	paramBundle	Bundle
        //   0	88	2	paraml	l
        //   1	31	3	localObject	Object
        //   5	77	4	localParcel	Parcel
        // Exception table:
        //   from	to	target	type
        //   7	14	80	finally
        //   18	31	80	finally
        //   37	44	80	finally
        //   44	65	80	finally
        //   71	77	80	finally
      }
      
      public final void a(Bundle paramBundle, boolean paramBoolean)
        throws RemoteException
      {
        int i = 1;
        Parcel localParcel = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel.writeInterfaceToken("com.firebase.jobdispatcher.IRemoteJobService");
            if (paramBundle != null)
            {
              localParcel.writeInt(1);
              paramBundle.writeToParcel(localParcel, 0);
              break label83;
              localParcel.writeInt(i);
              this.Cw.transact(2, localParcel, null, 1);
            }
            else
            {
              localParcel.writeInt(0);
            }
          }
          finally
          {
            localParcel.recycle();
          }
          label83:
          do
          {
            i = 0;
            break;
          } while (!paramBoolean);
        }
      }
      
      public final IBinder asBinder()
      {
        return this.Cw;
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/firebase/jobdispatcher/m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */