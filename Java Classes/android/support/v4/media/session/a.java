package android.support.v4.media.session;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.os.RemoteException;
import android.support.v4.media.MediaMetadataCompat;
import android.text.TextUtils;
import java.util.List;

public abstract interface a
  extends IInterface
{
  public abstract void a(MediaMetadataCompat paramMediaMetadataCompat)
    throws RemoteException;
  
  public abstract void a(ParcelableVolumeInfo paramParcelableVolumeInfo)
    throws RemoteException;
  
  public abstract void a(PlaybackStateCompat paramPlaybackStateCompat)
    throws RemoteException;
  
  public abstract void a(String paramString, Bundle paramBundle)
    throws RemoteException;
  
  public abstract void ah(int paramInt)
    throws RemoteException;
  
  public abstract void ai(int paramInt)
    throws RemoteException;
  
  public abstract void dj()
    throws RemoteException;
  
  public abstract void onExtrasChanged(Bundle paramBundle)
    throws RemoteException;
  
  public abstract void onQueueChanged(List<MediaSessionCompat.QueueItem> paramList)
    throws RemoteException;
  
  public abstract void onQueueTitleChanged(CharSequence paramCharSequence)
    throws RemoteException;
  
  public abstract void onSessionDestroyed()
    throws RemoteException;
  
  public abstract void p(boolean paramBoolean)
    throws RemoteException;
  
  public abstract void q(boolean paramBoolean)
    throws RemoteException;
  
  public static abstract class a
    extends Binder
    implements a
  {
    public a()
    {
      attachInterface(this, "android.support.v4.media.session.IMediaControllerCallback");
    }
    
    public static a a(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("android.support.v4.media.session.IMediaControllerCallback");
      if ((localIInterface != null) && ((localIInterface instanceof a))) {
        return (a)localIInterface;
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
      boolean bool = false;
      String str = null;
      Object localObject2 = null;
      Object localObject3 = null;
      Object localObject4 = null;
      Object localObject5 = null;
      Object localObject1 = null;
      switch (paramInt1)
      {
      default: 
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902: 
        paramParcel2.writeString("android.support.v4.media.session.IMediaControllerCallback");
        return true;
      case 1: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
        str = paramParcel1.readString();
        paramParcel2 = (Parcel)localObject1;
        if (paramParcel1.readInt() != 0) {
          paramParcel2 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
        }
        a(str, paramParcel2);
        return true;
      case 2: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
        onSessionDestroyed();
        return true;
      case 3: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
        paramParcel2 = str;
        if (paramParcel1.readInt() != 0) {
          paramParcel2 = (PlaybackStateCompat)PlaybackStateCompat.CREATOR.createFromParcel(paramParcel1);
        }
        a(paramParcel2);
        return true;
      case 4: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
        paramParcel2 = (Parcel)localObject2;
        if (paramParcel1.readInt() != 0) {
          paramParcel2 = (MediaMetadataCompat)MediaMetadataCompat.CREATOR.createFromParcel(paramParcel1);
        }
        a(paramParcel2);
        return true;
      case 5: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
        onQueueChanged(paramParcel1.createTypedArrayList(MediaSessionCompat.QueueItem.CREATOR));
        return true;
      case 6: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
        paramParcel2 = (Parcel)localObject3;
        if (paramParcel1.readInt() != 0) {
          paramParcel2 = (CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel1);
        }
        onQueueTitleChanged(paramParcel2);
        return true;
      case 7: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
        paramParcel2 = (Parcel)localObject4;
        if (paramParcel1.readInt() != 0) {
          paramParcel2 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
        }
        onExtrasChanged(paramParcel2);
        return true;
      case 8: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
        paramParcel2 = (Parcel)localObject5;
        if (paramParcel1.readInt() != 0) {
          paramParcel2 = (ParcelableVolumeInfo)ParcelableVolumeInfo.CREATOR.createFromParcel(paramParcel1);
        }
        a(paramParcel2);
        return true;
      case 9: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
        ah(paramParcel1.readInt());
        return true;
      case 10: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
        if (paramParcel1.readInt() != 0) {}
        for (bool = true;; bool = false)
        {
          p(bool);
          return true;
        }
      case 11: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
        if (paramParcel1.readInt() != 0) {
          bool = true;
        }
        q(bool);
        return true;
      case 12: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
        ai(paramParcel1.readInt());
        return true;
      }
      paramParcel1.enforceInterface("android.support.v4.media.session.IMediaControllerCallback");
      dj();
      return true;
    }
    
    private static final class a
      implements a
    {
      private IBinder Cw;
      
      a(IBinder paramIBinder)
      {
        this.Cw = paramIBinder;
      }
      
      /* Error */
      public final void a(MediaMetadataCompat paramMediaMetadataCompat)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 28	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_2
        //   4: aload_2
        //   5: ldc 30
        //   7: invokevirtual 34	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   10: aload_1
        //   11: ifnull +33 -> 44
        //   14: aload_2
        //   15: iconst_1
        //   16: invokevirtual 38	android/os/Parcel:writeInt	(I)V
        //   19: aload_1
        //   20: aload_2
        //   21: iconst_0
        //   22: invokevirtual 44	android/support/v4/media/MediaMetadataCompat:writeToParcel	(Landroid/os/Parcel;I)V
        //   25: aload_0
        //   26: getfield 18	android/support/v4/media/session/a$a$a:Cw	Landroid/os/IBinder;
        //   29: iconst_4
        //   30: aload_2
        //   31: aconst_null
        //   32: iconst_1
        //   33: invokeinterface 50 5 0
        //   38: pop
        //   39: aload_2
        //   40: invokevirtual 53	android/os/Parcel:recycle	()V
        //   43: return
        //   44: aload_2
        //   45: iconst_0
        //   46: invokevirtual 38	android/os/Parcel:writeInt	(I)V
        //   49: goto -24 -> 25
        //   52: astore_1
        //   53: aload_2
        //   54: invokevirtual 53	android/os/Parcel:recycle	()V
        //   57: aload_1
        //   58: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	59	0	this	a
        //   0	59	1	paramMediaMetadataCompat	MediaMetadataCompat
        //   3	51	2	localParcel	Parcel
        // Exception table:
        //   from	to	target	type
        //   4	10	52	finally
        //   14	25	52	finally
        //   25	39	52	finally
        //   44	49	52	finally
      }
      
      /* Error */
      public final void a(ParcelableVolumeInfo paramParcelableVolumeInfo)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 28	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_2
        //   4: aload_2
        //   5: ldc 30
        //   7: invokevirtual 34	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   10: aload_1
        //   11: ifnull +34 -> 45
        //   14: aload_2
        //   15: iconst_1
        //   16: invokevirtual 38	android/os/Parcel:writeInt	(I)V
        //   19: aload_1
        //   20: aload_2
        //   21: iconst_0
        //   22: invokevirtual 58	android/support/v4/media/session/ParcelableVolumeInfo:writeToParcel	(Landroid/os/Parcel;I)V
        //   25: aload_0
        //   26: getfield 18	android/support/v4/media/session/a$a$a:Cw	Landroid/os/IBinder;
        //   29: bipush 8
        //   31: aload_2
        //   32: aconst_null
        //   33: iconst_1
        //   34: invokeinterface 50 5 0
        //   39: pop
        //   40: aload_2
        //   41: invokevirtual 53	android/os/Parcel:recycle	()V
        //   44: return
        //   45: aload_2
        //   46: iconst_0
        //   47: invokevirtual 38	android/os/Parcel:writeInt	(I)V
        //   50: goto -25 -> 25
        //   53: astore_1
        //   54: aload_2
        //   55: invokevirtual 53	android/os/Parcel:recycle	()V
        //   58: aload_1
        //   59: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	60	0	this	a
        //   0	60	1	paramParcelableVolumeInfo	ParcelableVolumeInfo
        //   3	52	2	localParcel	Parcel
        // Exception table:
        //   from	to	target	type
        //   4	10	53	finally
        //   14	25	53	finally
        //   25	40	53	finally
        //   45	50	53	finally
      }
      
      /* Error */
      public final void a(PlaybackStateCompat paramPlaybackStateCompat)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 28	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_2
        //   4: aload_2
        //   5: ldc 30
        //   7: invokevirtual 34	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   10: aload_1
        //   11: ifnull +33 -> 44
        //   14: aload_2
        //   15: iconst_1
        //   16: invokevirtual 38	android/os/Parcel:writeInt	(I)V
        //   19: aload_1
        //   20: aload_2
        //   21: iconst_0
        //   22: invokevirtual 62	android/support/v4/media/session/PlaybackStateCompat:writeToParcel	(Landroid/os/Parcel;I)V
        //   25: aload_0
        //   26: getfield 18	android/support/v4/media/session/a$a$a:Cw	Landroid/os/IBinder;
        //   29: iconst_3
        //   30: aload_2
        //   31: aconst_null
        //   32: iconst_1
        //   33: invokeinterface 50 5 0
        //   38: pop
        //   39: aload_2
        //   40: invokevirtual 53	android/os/Parcel:recycle	()V
        //   43: return
        //   44: aload_2
        //   45: iconst_0
        //   46: invokevirtual 38	android/os/Parcel:writeInt	(I)V
        //   49: goto -24 -> 25
        //   52: astore_1
        //   53: aload_2
        //   54: invokevirtual 53	android/os/Parcel:recycle	()V
        //   57: aload_1
        //   58: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	59	0	this	a
        //   0	59	1	paramPlaybackStateCompat	PlaybackStateCompat
        //   3	51	2	localParcel	Parcel
        // Exception table:
        //   from	to	target	type
        //   4	10	52	finally
        //   14	25	52	finally
        //   25	39	52	finally
        //   44	49	52	finally
      }
      
      /* Error */
      public final void a(String paramString, Bundle paramBundle)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 28	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_3
        //   4: aload_3
        //   5: ldc 30
        //   7: invokevirtual 34	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   10: aload_3
        //   11: aload_1
        //   12: invokevirtual 66	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   15: aload_2
        //   16: ifnull +33 -> 49
        //   19: aload_3
        //   20: iconst_1
        //   21: invokevirtual 38	android/os/Parcel:writeInt	(I)V
        //   24: aload_2
        //   25: aload_3
        //   26: iconst_0
        //   27: invokevirtual 69	android/os/Bundle:writeToParcel	(Landroid/os/Parcel;I)V
        //   30: aload_0
        //   31: getfield 18	android/support/v4/media/session/a$a$a:Cw	Landroid/os/IBinder;
        //   34: iconst_1
        //   35: aload_3
        //   36: aconst_null
        //   37: iconst_1
        //   38: invokeinterface 50 5 0
        //   43: pop
        //   44: aload_3
        //   45: invokevirtual 53	android/os/Parcel:recycle	()V
        //   48: return
        //   49: aload_3
        //   50: iconst_0
        //   51: invokevirtual 38	android/os/Parcel:writeInt	(I)V
        //   54: goto -24 -> 30
        //   57: astore_1
        //   58: aload_3
        //   59: invokevirtual 53	android/os/Parcel:recycle	()V
        //   62: aload_1
        //   63: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	64	0	this	a
        //   0	64	1	paramString	String
        //   0	64	2	paramBundle	Bundle
        //   3	56	3	localParcel	Parcel
        // Exception table:
        //   from	to	target	type
        //   4	15	57	finally
        //   19	30	57	finally
        //   30	44	57	finally
        //   49	54	57	finally
      }
      
      public final void ah(int paramInt)
        throws RemoteException
      {
        Parcel localParcel = Parcel.obtain();
        try
        {
          localParcel.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
          localParcel.writeInt(paramInt);
          this.Cw.transact(9, localParcel, null, 1);
          return;
        }
        finally
        {
          localParcel.recycle();
        }
      }
      
      public final void ai(int paramInt)
        throws RemoteException
      {
        Parcel localParcel = Parcel.obtain();
        try
        {
          localParcel.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
          localParcel.writeInt(paramInt);
          this.Cw.transact(12, localParcel, null, 1);
          return;
        }
        finally
        {
          localParcel.recycle();
        }
      }
      
      public final IBinder asBinder()
      {
        return this.Cw;
      }
      
      public final void dj()
        throws RemoteException
      {
        Parcel localParcel = Parcel.obtain();
        try
        {
          localParcel.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
          this.Cw.transact(13, localParcel, null, 1);
          return;
        }
        finally
        {
          localParcel.recycle();
        }
      }
      
      /* Error */
      public final void onExtrasChanged(Bundle paramBundle)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 28	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_2
        //   4: aload_2
        //   5: ldc 30
        //   7: invokevirtual 34	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   10: aload_1
        //   11: ifnull +34 -> 45
        //   14: aload_2
        //   15: iconst_1
        //   16: invokevirtual 38	android/os/Parcel:writeInt	(I)V
        //   19: aload_1
        //   20: aload_2
        //   21: iconst_0
        //   22: invokevirtual 69	android/os/Bundle:writeToParcel	(Landroid/os/Parcel;I)V
        //   25: aload_0
        //   26: getfield 18	android/support/v4/media/session/a$a$a:Cw	Landroid/os/IBinder;
        //   29: bipush 7
        //   31: aload_2
        //   32: aconst_null
        //   33: iconst_1
        //   34: invokeinterface 50 5 0
        //   39: pop
        //   40: aload_2
        //   41: invokevirtual 53	android/os/Parcel:recycle	()V
        //   44: return
        //   45: aload_2
        //   46: iconst_0
        //   47: invokevirtual 38	android/os/Parcel:writeInt	(I)V
        //   50: goto -25 -> 25
        //   53: astore_1
        //   54: aload_2
        //   55: invokevirtual 53	android/os/Parcel:recycle	()V
        //   58: aload_1
        //   59: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	60	0	this	a
        //   0	60	1	paramBundle	Bundle
        //   3	52	2	localParcel	Parcel
        // Exception table:
        //   from	to	target	type
        //   4	10	53	finally
        //   14	25	53	finally
        //   25	40	53	finally
        //   45	50	53	finally
      }
      
      public final void onQueueChanged(List<MediaSessionCompat.QueueItem> paramList)
        throws RemoteException
      {
        Parcel localParcel = Parcel.obtain();
        try
        {
          localParcel.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
          localParcel.writeTypedList(paramList);
          this.Cw.transact(5, localParcel, null, 1);
          return;
        }
        finally
        {
          localParcel.recycle();
        }
      }
      
      /* Error */
      public final void onQueueTitleChanged(CharSequence paramCharSequence)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 28	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_2
        //   4: aload_2
        //   5: ldc 30
        //   7: invokevirtual 34	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   10: aload_1
        //   11: ifnull +34 -> 45
        //   14: aload_2
        //   15: iconst_1
        //   16: invokevirtual 38	android/os/Parcel:writeInt	(I)V
        //   19: aload_1
        //   20: aload_2
        //   21: iconst_0
        //   22: invokestatic 90	android/text/TextUtils:writeToParcel	(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V
        //   25: aload_0
        //   26: getfield 18	android/support/v4/media/session/a$a$a:Cw	Landroid/os/IBinder;
        //   29: bipush 6
        //   31: aload_2
        //   32: aconst_null
        //   33: iconst_1
        //   34: invokeinterface 50 5 0
        //   39: pop
        //   40: aload_2
        //   41: invokevirtual 53	android/os/Parcel:recycle	()V
        //   44: return
        //   45: aload_2
        //   46: iconst_0
        //   47: invokevirtual 38	android/os/Parcel:writeInt	(I)V
        //   50: goto -25 -> 25
        //   53: astore_1
        //   54: aload_2
        //   55: invokevirtual 53	android/os/Parcel:recycle	()V
        //   58: aload_1
        //   59: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	60	0	this	a
        //   0	60	1	paramCharSequence	CharSequence
        //   3	52	2	localParcel	Parcel
        // Exception table:
        //   from	to	target	type
        //   4	10	53	finally
        //   14	25	53	finally
        //   25	40	53	finally
        //   45	50	53	finally
      }
      
      public final void onSessionDestroyed()
        throws RemoteException
      {
        Parcel localParcel = Parcel.obtain();
        try
        {
          localParcel.writeInterfaceToken("android.support.v4.media.session.IMediaControllerCallback");
          this.Cw.transact(2, localParcel, null, 1);
          return;
        }
        finally
        {
          localParcel.recycle();
        }
      }
      
      /* Error */
      public final void p(boolean paramBoolean)
        throws RemoteException
      {
        // Byte code:
        //   0: iconst_1
        //   1: istore_2
        //   2: invokestatic 28	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   5: astore_3
        //   6: aload_3
        //   7: ldc 30
        //   9: invokevirtual 34	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   12: iload_1
        //   13: ifeq +28 -> 41
        //   16: aload_3
        //   17: iload_2
        //   18: invokevirtual 38	android/os/Parcel:writeInt	(I)V
        //   21: aload_0
        //   22: getfield 18	android/support/v4/media/session/a$a$a:Cw	Landroid/os/IBinder;
        //   25: bipush 10
        //   27: aload_3
        //   28: aconst_null
        //   29: iconst_1
        //   30: invokeinterface 50 5 0
        //   35: pop
        //   36: aload_3
        //   37: invokevirtual 53	android/os/Parcel:recycle	()V
        //   40: return
        //   41: iconst_0
        //   42: istore_2
        //   43: goto -27 -> 16
        //   46: astore 4
        //   48: aload_3
        //   49: invokevirtual 53	android/os/Parcel:recycle	()V
        //   52: aload 4
        //   54: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	55	0	this	a
        //   0	55	1	paramBoolean	boolean
        //   1	42	2	i	int
        //   5	44	3	localParcel	Parcel
        //   46	7	4	localObject	Object
        // Exception table:
        //   from	to	target	type
        //   6	12	46	finally
        //   16	36	46	finally
      }
      
      /* Error */
      public final void q(boolean paramBoolean)
        throws RemoteException
      {
        // Byte code:
        //   0: iconst_1
        //   1: istore_2
        //   2: invokestatic 28	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   5: astore_3
        //   6: aload_3
        //   7: ldc 30
        //   9: invokevirtual 34	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   12: iload_1
        //   13: ifeq +28 -> 41
        //   16: aload_3
        //   17: iload_2
        //   18: invokevirtual 38	android/os/Parcel:writeInt	(I)V
        //   21: aload_0
        //   22: getfield 18	android/support/v4/media/session/a$a$a:Cw	Landroid/os/IBinder;
        //   25: bipush 11
        //   27: aload_3
        //   28: aconst_null
        //   29: iconst_1
        //   30: invokeinterface 50 5 0
        //   35: pop
        //   36: aload_3
        //   37: invokevirtual 53	android/os/Parcel:recycle	()V
        //   40: return
        //   41: iconst_0
        //   42: istore_2
        //   43: goto -27 -> 16
        //   46: astore 4
        //   48: aload_3
        //   49: invokevirtual 53	android/os/Parcel:recycle	()V
        //   52: aload 4
        //   54: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	55	0	this	a
        //   0	55	1	paramBoolean	boolean
        //   1	42	2	i	int
        //   5	44	3	localParcel	Parcel
        //   46	7	4	localObject	Object
        // Exception table:
        //   from	to	target	type
        //   6	12	46	finally
        //   16	36	46	finally
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/media/session/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */