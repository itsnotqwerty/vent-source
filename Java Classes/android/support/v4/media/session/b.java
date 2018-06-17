package android.support.v4.media.session;

import android.app.PendingIntent;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.os.RemoteException;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.RatingCompat;
import android.text.TextUtils;
import android.view.KeyEvent;
import java.util.ArrayList;
import java.util.List;

public abstract interface b
  extends IInterface
{
  public abstract void a(int paramInt1, int paramInt2, String paramString)
    throws RemoteException;
  
  public abstract void a(MediaDescriptionCompat paramMediaDescriptionCompat)
    throws RemoteException;
  
  public abstract void a(MediaDescriptionCompat paramMediaDescriptionCompat, int paramInt)
    throws RemoteException;
  
  public abstract void a(RatingCompat paramRatingCompat)
    throws RemoteException;
  
  public abstract void a(RatingCompat paramRatingCompat, Bundle paramBundle)
    throws RemoteException;
  
  public abstract void a(a parama)
    throws RemoteException;
  
  public abstract void a(String paramString, Bundle paramBundle, MediaSessionCompat.ResultReceiverWrapper paramResultReceiverWrapper)
    throws RemoteException;
  
  public abstract boolean a(KeyEvent paramKeyEvent)
    throws RemoteException;
  
  public abstract void aj(int paramInt)
    throws RemoteException;
  
  public abstract void ak(int paramInt)
    throws RemoteException;
  
  public abstract void b(int paramInt1, int paramInt2, String paramString)
    throws RemoteException;
  
  public abstract void b(MediaDescriptionCompat paramMediaDescriptionCompat)
    throws RemoteException;
  
  public abstract void b(a parama)
    throws RemoteException;
  
  public abstract boolean dk()
    throws RemoteException;
  
  public abstract PendingIntent dl()
    throws RemoteException;
  
  public abstract ParcelableVolumeInfo dm()
    throws RemoteException;
  
  public abstract MediaMetadataCompat dn()
    throws RemoteException;
  
  public abstract PlaybackStateCompat jdMethod_do()
    throws RemoteException;
  
  public abstract boolean dp()
    throws RemoteException;
  
  public abstract boolean dq()
    throws RemoteException;
  
  public abstract int dr()
    throws RemoteException;
  
  public abstract void ds()
    throws RemoteException;
  
  public abstract void dt()
    throws RemoteException;
  
  public abstract void fastForward()
    throws RemoteException;
  
  public abstract Bundle getExtras()
    throws RemoteException;
  
  public abstract long getFlags()
    throws RemoteException;
  
  public abstract String getPackageName()
    throws RemoteException;
  
  public abstract List<MediaSessionCompat.QueueItem> getQueue()
    throws RemoteException;
  
  public abstract CharSequence getQueueTitle()
    throws RemoteException;
  
  public abstract int getRatingType()
    throws RemoteException;
  
  public abstract int getRepeatMode()
    throws RemoteException;
  
  public abstract String getTag()
    throws RemoteException;
  
  public abstract void pause()
    throws RemoteException;
  
  public abstract void play()
    throws RemoteException;
  
  public abstract void playFromMediaId(String paramString, Bundle paramBundle)
    throws RemoteException;
  
  public abstract void playFromSearch(String paramString, Bundle paramBundle)
    throws RemoteException;
  
  public abstract void playFromUri(Uri paramUri, Bundle paramBundle)
    throws RemoteException;
  
  public abstract void prepare()
    throws RemoteException;
  
  public abstract void prepareFromMediaId(String paramString, Bundle paramBundle)
    throws RemoteException;
  
  public abstract void prepareFromSearch(String paramString, Bundle paramBundle)
    throws RemoteException;
  
  public abstract void prepareFromUri(Uri paramUri, Bundle paramBundle)
    throws RemoteException;
  
  public abstract void r(boolean paramBoolean)
    throws RemoteException;
  
  public abstract void rewind()
    throws RemoteException;
  
  public abstract void s(boolean paramBoolean)
    throws RemoteException;
  
  public abstract void seekTo(long paramLong)
    throws RemoteException;
  
  public abstract void sendCustomAction(String paramString, Bundle paramBundle)
    throws RemoteException;
  
  public abstract void setRepeatMode(int paramInt)
    throws RemoteException;
  
  public abstract void skipToQueueItem(long paramLong)
    throws RemoteException;
  
  public abstract void stop()
    throws RemoteException;
  
  public static abstract class a
    extends Binder
    implements b
  {
    public static b b(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("android.support.v4.media.session.IMediaSession");
      if ((localIInterface != null) && ((localIInterface instanceof b))) {
        return (b)localIInterface;
      }
      return new a(paramIBinder);
    }
    
    public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
      throws RemoteException
    {
      int j = 0;
      int k = 0;
      boolean bool1 = false;
      boolean bool2 = false;
      int i = 0;
      switch (paramInt1)
      {
      default: 
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902: 
        paramParcel2.writeString("android.support.v4.media.session.IMediaSession");
        return true;
      case 1: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
        String str = paramParcel1.readString();
        if (paramParcel1.readInt() != 0)
        {
          localObject = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
          if (paramParcel1.readInt() == 0) {
            break label520;
          }
        }
        for (paramParcel1 = (MediaSessionCompat.ResultReceiverWrapper)MediaSessionCompat.ResultReceiverWrapper.CREATOR.createFromParcel(paramParcel1);; paramParcel1 = null)
        {
          a(str, (Bundle)localObject, paramParcel1);
          paramParcel2.writeNoException();
          return true;
          localObject = null;
          break;
        }
      case 2: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
        if (paramParcel1.readInt() != 0)
        {
          paramParcel1 = (KeyEvent)KeyEvent.CREATOR.createFromParcel(paramParcel1);
          bool1 = a(paramParcel1);
          paramParcel2.writeNoException();
          if (!bool1) {
            break label581;
          }
        }
        for (paramInt1 = 1;; paramInt1 = 0)
        {
          paramParcel2.writeInt(paramInt1);
          return true;
          paramParcel1 = null;
          break;
        }
      case 3: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
        a(a.a.a(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 4: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
        b(a.a.a(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 5: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
        bool1 = dk();
        paramParcel2.writeNoException();
        paramInt1 = i;
        if (bool1) {
          paramInt1 = 1;
        }
        paramParcel2.writeInt(paramInt1);
        return true;
      case 6: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
        paramParcel1 = getPackageName();
        paramParcel2.writeNoException();
        paramParcel2.writeString(paramParcel1);
        return true;
      case 7: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
        paramParcel1 = getTag();
        paramParcel2.writeNoException();
        paramParcel2.writeString(paramParcel1);
        return true;
      case 8: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
        paramParcel1 = dl();
        paramParcel2.writeNoException();
        if (paramParcel1 != null)
        {
          paramParcel2.writeInt(1);
          paramParcel1.writeToParcel(paramParcel2, 1);
          return true;
        }
        paramParcel2.writeInt(0);
        return true;
      case 9: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
        long l = getFlags();
        paramParcel2.writeNoException();
        paramParcel2.writeLong(l);
        return true;
      case 10: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
        paramParcel1 = dm();
        paramParcel2.writeNoException();
        if (paramParcel1 != null)
        {
          paramParcel2.writeInt(1);
          paramParcel1.writeToParcel(paramParcel2, 1);
          return true;
        }
        paramParcel2.writeInt(0);
        return true;
      case 11: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
        a(paramParcel1.readInt(), paramParcel1.readInt(), paramParcel1.readString());
        paramParcel2.writeNoException();
        return true;
      case 12: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
        b(paramParcel1.readInt(), paramParcel1.readInt(), paramParcel1.readString());
        paramParcel2.writeNoException();
        return true;
      case 27: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
        paramParcel1 = dn();
        paramParcel2.writeNoException();
        if (paramParcel1 != null)
        {
          paramParcel2.writeInt(1);
          paramParcel1.writeToParcel(paramParcel2, 1);
          return true;
        }
        paramParcel2.writeInt(0);
        return true;
      case 28: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
        paramParcel1 = jdMethod_do();
        paramParcel2.writeNoException();
        if (paramParcel1 != null)
        {
          paramParcel2.writeInt(1);
          paramParcel1.writeToParcel(paramParcel2, 1);
          return true;
        }
        paramParcel2.writeInt(0);
        return true;
      case 29: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
        paramParcel1 = getQueue();
        paramParcel2.writeNoException();
        paramParcel2.writeTypedList(paramParcel1);
        return true;
      case 30: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
        paramParcel1 = getQueueTitle();
        paramParcel2.writeNoException();
        if (paramParcel1 != null)
        {
          paramParcel2.writeInt(1);
          TextUtils.writeToParcel(paramParcel1, paramParcel2, 1);
          return true;
        }
        paramParcel2.writeInt(0);
        return true;
      case 31: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
        paramParcel1 = getExtras();
        paramParcel2.writeNoException();
        if (paramParcel1 != null)
        {
          paramParcel2.writeInt(1);
          paramParcel1.writeToParcel(paramParcel2, 1);
          return true;
        }
        paramParcel2.writeInt(0);
        return true;
      case 32: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
        paramInt1 = getRatingType();
        paramParcel2.writeNoException();
        paramParcel2.writeInt(paramInt1);
        return true;
      case 45: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
        bool1 = dp();
        paramParcel2.writeNoException();
        paramInt1 = j;
        if (bool1) {
          paramInt1 = 1;
        }
        paramParcel2.writeInt(paramInt1);
        return true;
      case 37: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
        paramInt1 = getRepeatMode();
        paramParcel2.writeNoException();
        paramParcel2.writeInt(paramInt1);
        return true;
      case 38: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
        bool1 = dq();
        paramParcel2.writeNoException();
        paramInt1 = k;
        if (bool1) {
          paramInt1 = 1;
        }
        paramParcel2.writeInt(paramInt1);
        return true;
      case 47: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
        paramInt1 = dr();
        paramParcel2.writeNoException();
        paramParcel2.writeInt(paramInt1);
        return true;
      case 41: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
        if (paramParcel1.readInt() != 0) {}
        for (paramParcel1 = (MediaDescriptionCompat)MediaDescriptionCompat.CREATOR.createFromParcel(paramParcel1);; paramParcel1 = null)
        {
          a(paramParcel1);
          paramParcel2.writeNoException();
          return true;
        }
      case 42: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
        if (paramParcel1.readInt() != 0) {}
        for (localObject = (MediaDescriptionCompat)MediaDescriptionCompat.CREATOR.createFromParcel(paramParcel1);; localObject = null)
        {
          a((MediaDescriptionCompat)localObject, paramParcel1.readInt());
          paramParcel2.writeNoException();
          return true;
        }
      case 43: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
        if (paramParcel1.readInt() != 0) {}
        for (paramParcel1 = (MediaDescriptionCompat)MediaDescriptionCompat.CREATOR.createFromParcel(paramParcel1);; paramParcel1 = null)
        {
          b(paramParcel1);
          paramParcel2.writeNoException();
          return true;
        }
      case 44: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
        aj(paramParcel1.readInt());
        paramParcel2.writeNoException();
        return true;
      case 33: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
        prepare();
        paramParcel2.writeNoException();
        return true;
      case 34: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
        localObject = paramParcel1.readString();
        if (paramParcel1.readInt() != 0) {}
        for (paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);; paramParcel1 = null)
        {
          prepareFromMediaId((String)localObject, paramParcel1);
          paramParcel2.writeNoException();
          return true;
        }
      case 35: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
        localObject = paramParcel1.readString();
        if (paramParcel1.readInt() != 0) {}
        for (paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);; paramParcel1 = null)
        {
          prepareFromSearch((String)localObject, paramParcel1);
          paramParcel2.writeNoException();
          return true;
        }
      case 36: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
        if (paramParcel1.readInt() != 0)
        {
          localObject = (Uri)Uri.CREATOR.createFromParcel(paramParcel1);
          if (paramParcel1.readInt() == 0) {
            break label1512;
          }
        }
        for (paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);; paramParcel1 = null)
        {
          prepareFromUri((Uri)localObject, paramParcel1);
          paramParcel2.writeNoException();
          return true;
          localObject = null;
          break;
        }
      case 13: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
        play();
        paramParcel2.writeNoException();
        return true;
      case 14: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
        localObject = paramParcel1.readString();
        if (paramParcel1.readInt() != 0) {}
        for (paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);; paramParcel1 = null)
        {
          playFromMediaId((String)localObject, paramParcel1);
          paramParcel2.writeNoException();
          return true;
        }
      case 15: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
        localObject = paramParcel1.readString();
        if (paramParcel1.readInt() != 0) {}
        for (paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);; paramParcel1 = null)
        {
          playFromSearch((String)localObject, paramParcel1);
          paramParcel2.writeNoException();
          return true;
        }
      case 16: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
        if (paramParcel1.readInt() != 0)
        {
          localObject = (Uri)Uri.CREATOR.createFromParcel(paramParcel1);
          if (paramParcel1.readInt() == 0) {
            break label1699;
          }
        }
        for (paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);; paramParcel1 = null)
        {
          playFromUri((Uri)localObject, paramParcel1);
          paramParcel2.writeNoException();
          return true;
          localObject = null;
          break;
        }
      case 17: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
        skipToQueueItem(paramParcel1.readLong());
        paramParcel2.writeNoException();
        return true;
      case 18: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
        pause();
        paramParcel2.writeNoException();
        return true;
      case 19: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
        stop();
        paramParcel2.writeNoException();
        return true;
      case 20: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
        ds();
        paramParcel2.writeNoException();
        return true;
      case 21: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
        dt();
        paramParcel2.writeNoException();
        return true;
      case 22: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
        fastForward();
        paramParcel2.writeNoException();
        return true;
      case 23: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
        rewind();
        paramParcel2.writeNoException();
        return true;
      case 24: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
        seekTo(paramParcel1.readLong());
        paramParcel2.writeNoException();
        return true;
      case 25: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
        if (paramParcel1.readInt() != 0) {}
        for (paramParcel1 = (RatingCompat)RatingCompat.CREATOR.createFromParcel(paramParcel1);; paramParcel1 = null)
        {
          a(paramParcel1);
          paramParcel2.writeNoException();
          return true;
        }
      case 51: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
        if (paramParcel1.readInt() != 0)
        {
          localObject = (RatingCompat)RatingCompat.CREATOR.createFromParcel(paramParcel1);
          if (paramParcel1.readInt() == 0) {
            break label1948;
          }
        }
        for (paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);; paramParcel1 = null)
        {
          a((RatingCompat)localObject, paramParcel1);
          paramParcel2.writeNoException();
          return true;
          localObject = null;
          break;
        }
      case 46: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
        if (paramParcel1.readInt() != 0) {
          bool1 = true;
        }
        r(bool1);
        paramParcel2.writeNoException();
        return true;
      case 39: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
        setRepeatMode(paramParcel1.readInt());
        paramParcel2.writeNoException();
        return true;
      case 40: 
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
        bool1 = bool2;
        if (paramParcel1.readInt() != 0) {
          bool1 = true;
        }
        s(bool1);
        paramParcel2.writeNoException();
        return true;
      case 48: 
        label520:
        label581:
        label1512:
        label1699:
        label1948:
        paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
        ak(paramParcel1.readInt());
        paramParcel2.writeNoException();
        return true;
      }
      paramParcel1.enforceInterface("android.support.v4.media.session.IMediaSession");
      Object localObject = paramParcel1.readString();
      if (paramParcel1.readInt() != 0) {}
      for (paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);; paramParcel1 = null)
      {
        sendCustomAction((String)localObject, paramParcel1);
        paramParcel2.writeNoException();
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
      
      public final void a(int paramInt1, int paramInt2, String paramString)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
          localParcel1.writeInt(paramInt1);
          localParcel1.writeInt(paramInt2);
          localParcel1.writeString(paramString);
          this.Cw.transact(11, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      /* Error */
      public final void a(MediaDescriptionCompat paramMediaDescriptionCompat)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 28	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_2
        //   4: invokestatic 28	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore_3
        //   8: aload_2
        //   9: ldc 30
        //   11: invokevirtual 34	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   14: aload_1
        //   15: ifnull +42 -> 57
        //   18: aload_2
        //   19: iconst_1
        //   20: invokevirtual 38	android/os/Parcel:writeInt	(I)V
        //   23: aload_1
        //   24: aload_2
        //   25: iconst_0
        //   26: invokevirtual 61	android/support/v4/media/MediaDescriptionCompat:writeToParcel	(Landroid/os/Parcel;I)V
        //   29: aload_0
        //   30: getfield 18	android/support/v4/media/session/b$a$a:Cw	Landroid/os/IBinder;
        //   33: bipush 41
        //   35: aload_2
        //   36: aload_3
        //   37: iconst_0
        //   38: invokeinterface 47 5 0
        //   43: pop
        //   44: aload_3
        //   45: invokevirtual 50	android/os/Parcel:readException	()V
        //   48: aload_3
        //   49: invokevirtual 53	android/os/Parcel:recycle	()V
        //   52: aload_2
        //   53: invokevirtual 53	android/os/Parcel:recycle	()V
        //   56: return
        //   57: aload_2
        //   58: iconst_0
        //   59: invokevirtual 38	android/os/Parcel:writeInt	(I)V
        //   62: goto -33 -> 29
        //   65: astore_1
        //   66: aload_3
        //   67: invokevirtual 53	android/os/Parcel:recycle	()V
        //   70: aload_2
        //   71: invokevirtual 53	android/os/Parcel:recycle	()V
        //   74: aload_1
        //   75: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	76	0	this	a
        //   0	76	1	paramMediaDescriptionCompat	MediaDescriptionCompat
        //   3	68	2	localParcel1	Parcel
        //   7	60	3	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   8	14	65	finally
        //   18	29	65	finally
        //   29	48	65	finally
        //   57	62	65	finally
      }
      
      /* Error */
      public final void a(MediaDescriptionCompat paramMediaDescriptionCompat, int paramInt)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 28	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_3
        //   4: invokestatic 28	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore 4
        //   9: aload_3
        //   10: ldc 30
        //   12: invokevirtual 34	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   15: aload_1
        //   16: ifnull +50 -> 66
        //   19: aload_3
        //   20: iconst_1
        //   21: invokevirtual 38	android/os/Parcel:writeInt	(I)V
        //   24: aload_1
        //   25: aload_3
        //   26: iconst_0
        //   27: invokevirtual 61	android/support/v4/media/MediaDescriptionCompat:writeToParcel	(Landroid/os/Parcel;I)V
        //   30: aload_3
        //   31: iload_2
        //   32: invokevirtual 38	android/os/Parcel:writeInt	(I)V
        //   35: aload_0
        //   36: getfield 18	android/support/v4/media/session/b$a$a:Cw	Landroid/os/IBinder;
        //   39: bipush 42
        //   41: aload_3
        //   42: aload 4
        //   44: iconst_0
        //   45: invokeinterface 47 5 0
        //   50: pop
        //   51: aload 4
        //   53: invokevirtual 50	android/os/Parcel:readException	()V
        //   56: aload 4
        //   58: invokevirtual 53	android/os/Parcel:recycle	()V
        //   61: aload_3
        //   62: invokevirtual 53	android/os/Parcel:recycle	()V
        //   65: return
        //   66: aload_3
        //   67: iconst_0
        //   68: invokevirtual 38	android/os/Parcel:writeInt	(I)V
        //   71: goto -41 -> 30
        //   74: astore_1
        //   75: aload 4
        //   77: invokevirtual 53	android/os/Parcel:recycle	()V
        //   80: aload_3
        //   81: invokevirtual 53	android/os/Parcel:recycle	()V
        //   84: aload_1
        //   85: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	86	0	this	a
        //   0	86	1	paramMediaDescriptionCompat	MediaDescriptionCompat
        //   0	86	2	paramInt	int
        //   3	78	3	localParcel1	Parcel
        //   7	69	4	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   9	15	74	finally
        //   19	30	74	finally
        //   30	56	74	finally
        //   66	71	74	finally
      }
      
      /* Error */
      public final void a(RatingCompat paramRatingCompat)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 28	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_2
        //   4: invokestatic 28	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore_3
        //   8: aload_2
        //   9: ldc 30
        //   11: invokevirtual 34	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   14: aload_1
        //   15: ifnull +42 -> 57
        //   18: aload_2
        //   19: iconst_1
        //   20: invokevirtual 38	android/os/Parcel:writeInt	(I)V
        //   23: aload_1
        //   24: aload_2
        //   25: iconst_0
        //   26: invokevirtual 66	android/support/v4/media/RatingCompat:writeToParcel	(Landroid/os/Parcel;I)V
        //   29: aload_0
        //   30: getfield 18	android/support/v4/media/session/b$a$a:Cw	Landroid/os/IBinder;
        //   33: bipush 25
        //   35: aload_2
        //   36: aload_3
        //   37: iconst_0
        //   38: invokeinterface 47 5 0
        //   43: pop
        //   44: aload_3
        //   45: invokevirtual 50	android/os/Parcel:readException	()V
        //   48: aload_3
        //   49: invokevirtual 53	android/os/Parcel:recycle	()V
        //   52: aload_2
        //   53: invokevirtual 53	android/os/Parcel:recycle	()V
        //   56: return
        //   57: aload_2
        //   58: iconst_0
        //   59: invokevirtual 38	android/os/Parcel:writeInt	(I)V
        //   62: goto -33 -> 29
        //   65: astore_1
        //   66: aload_3
        //   67: invokevirtual 53	android/os/Parcel:recycle	()V
        //   70: aload_2
        //   71: invokevirtual 53	android/os/Parcel:recycle	()V
        //   74: aload_1
        //   75: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	76	0	this	a
        //   0	76	1	paramRatingCompat	RatingCompat
        //   3	68	2	localParcel1	Parcel
        //   7	60	3	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   8	14	65	finally
        //   18	29	65	finally
        //   29	48	65	finally
        //   57	62	65	finally
      }
      
      public final void a(RatingCompat paramRatingCompat, Bundle paramBundle)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            if (paramRatingCompat != null)
            {
              localParcel1.writeInt(1);
              paramRatingCompat.writeToParcel(localParcel1, 0);
              if (paramBundle != null)
              {
                localParcel1.writeInt(1);
                paramBundle.writeToParcel(localParcel1, 0);
                this.Cw.transact(51, localParcel1, localParcel2, 0);
                localParcel2.readException();
              }
            }
            else
            {
              localParcel1.writeInt(0);
              continue;
            }
            localParcel1.writeInt(0);
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
        }
      }
      
      /* Error */
      public final void a(a parama)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 28	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_2
        //   4: invokestatic 28	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore_3
        //   8: aload_2
        //   9: ldc 30
        //   11: invokevirtual 34	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   14: aload_1
        //   15: ifnull +42 -> 57
        //   18: aload_1
        //   19: invokeinterface 77 1 0
        //   24: astore_1
        //   25: aload_2
        //   26: aload_1
        //   27: invokevirtual 80	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
        //   30: aload_0
        //   31: getfield 18	android/support/v4/media/session/b$a$a:Cw	Landroid/os/IBinder;
        //   34: iconst_3
        //   35: aload_2
        //   36: aload_3
        //   37: iconst_0
        //   38: invokeinterface 47 5 0
        //   43: pop
        //   44: aload_3
        //   45: invokevirtual 50	android/os/Parcel:readException	()V
        //   48: aload_3
        //   49: invokevirtual 53	android/os/Parcel:recycle	()V
        //   52: aload_2
        //   53: invokevirtual 53	android/os/Parcel:recycle	()V
        //   56: return
        //   57: aconst_null
        //   58: astore_1
        //   59: goto -34 -> 25
        //   62: astore_1
        //   63: aload_3
        //   64: invokevirtual 53	android/os/Parcel:recycle	()V
        //   67: aload_2
        //   68: invokevirtual 53	android/os/Parcel:recycle	()V
        //   71: aload_1
        //   72: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	73	0	this	a
        //   0	73	1	parama	a
        //   3	65	2	localParcel1	Parcel
        //   7	57	3	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   8	14	62	finally
        //   18	25	62	finally
        //   25	48	62	finally
      }
      
      public final void a(String paramString, Bundle paramBundle, MediaSessionCompat.ResultReceiverWrapper paramResultReceiverWrapper)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            localParcel1.writeString(paramString);
            if (paramBundle != null)
            {
              localParcel1.writeInt(1);
              paramBundle.writeToParcel(localParcel1, 0);
              if (paramResultReceiverWrapper != null)
              {
                localParcel1.writeInt(1);
                paramResultReceiverWrapper.writeToParcel(localParcel1, 0);
                this.Cw.transact(1, localParcel1, localParcel2, 0);
                localParcel2.readException();
              }
            }
            else
            {
              localParcel1.writeInt(0);
              continue;
            }
            localParcel1.writeInt(0);
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
        }
      }
      
      public final boolean a(KeyEvent paramKeyEvent)
        throws RemoteException
      {
        boolean bool = true;
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            if (paramKeyEvent != null)
            {
              localParcel1.writeInt(1);
              paramKeyEvent.writeToParcel(localParcel1, 0);
              this.Cw.transact(2, localParcel1, localParcel2, 0);
              localParcel2.readException();
              int i = localParcel2.readInt();
              if (i != 0) {
                return bool;
              }
            }
            else
            {
              localParcel1.writeInt(0);
              continue;
            }
            bool = false;
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
        }
      }
      
      public final void aj(int paramInt)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
          localParcel1.writeInt(paramInt);
          this.Cw.transact(44, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public final void ak(int paramInt)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
          localParcel1.writeInt(paramInt);
          this.Cw.transact(48, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public final IBinder asBinder()
      {
        return this.Cw;
      }
      
      public final void b(int paramInt1, int paramInt2, String paramString)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
          localParcel1.writeInt(paramInt1);
          localParcel1.writeInt(paramInt2);
          localParcel1.writeString(paramString);
          this.Cw.transact(12, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      /* Error */
      public final void b(MediaDescriptionCompat paramMediaDescriptionCompat)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 28	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_2
        //   4: invokestatic 28	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore_3
        //   8: aload_2
        //   9: ldc 30
        //   11: invokevirtual 34	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   14: aload_1
        //   15: ifnull +42 -> 57
        //   18: aload_2
        //   19: iconst_1
        //   20: invokevirtual 38	android/os/Parcel:writeInt	(I)V
        //   23: aload_1
        //   24: aload_2
        //   25: iconst_0
        //   26: invokevirtual 61	android/support/v4/media/MediaDescriptionCompat:writeToParcel	(Landroid/os/Parcel;I)V
        //   29: aload_0
        //   30: getfield 18	android/support/v4/media/session/b$a$a:Cw	Landroid/os/IBinder;
        //   33: bipush 43
        //   35: aload_2
        //   36: aload_3
        //   37: iconst_0
        //   38: invokeinterface 47 5 0
        //   43: pop
        //   44: aload_3
        //   45: invokevirtual 50	android/os/Parcel:readException	()V
        //   48: aload_3
        //   49: invokevirtual 53	android/os/Parcel:recycle	()V
        //   52: aload_2
        //   53: invokevirtual 53	android/os/Parcel:recycle	()V
        //   56: return
        //   57: aload_2
        //   58: iconst_0
        //   59: invokevirtual 38	android/os/Parcel:writeInt	(I)V
        //   62: goto -33 -> 29
        //   65: astore_1
        //   66: aload_3
        //   67: invokevirtual 53	android/os/Parcel:recycle	()V
        //   70: aload_2
        //   71: invokevirtual 53	android/os/Parcel:recycle	()V
        //   74: aload_1
        //   75: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	76	0	this	a
        //   0	76	1	paramMediaDescriptionCompat	MediaDescriptionCompat
        //   3	68	2	localParcel1	Parcel
        //   7	60	3	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   8	14	65	finally
        //   18	29	65	finally
        //   29	48	65	finally
        //   57	62	65	finally
      }
      
      /* Error */
      public final void b(a parama)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 28	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_2
        //   4: invokestatic 28	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore_3
        //   8: aload_2
        //   9: ldc 30
        //   11: invokevirtual 34	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   14: aload_1
        //   15: ifnull +42 -> 57
        //   18: aload_1
        //   19: invokeinterface 77 1 0
        //   24: astore_1
        //   25: aload_2
        //   26: aload_1
        //   27: invokevirtual 80	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
        //   30: aload_0
        //   31: getfield 18	android/support/v4/media/session/b$a$a:Cw	Landroid/os/IBinder;
        //   34: iconst_4
        //   35: aload_2
        //   36: aload_3
        //   37: iconst_0
        //   38: invokeinterface 47 5 0
        //   43: pop
        //   44: aload_3
        //   45: invokevirtual 50	android/os/Parcel:readException	()V
        //   48: aload_3
        //   49: invokevirtual 53	android/os/Parcel:recycle	()V
        //   52: aload_2
        //   53: invokevirtual 53	android/os/Parcel:recycle	()V
        //   56: return
        //   57: aconst_null
        //   58: astore_1
        //   59: goto -34 -> 25
        //   62: astore_1
        //   63: aload_3
        //   64: invokevirtual 53	android/os/Parcel:recycle	()V
        //   67: aload_2
        //   68: invokevirtual 53	android/os/Parcel:recycle	()V
        //   71: aload_1
        //   72: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	73	0	this	a
        //   0	73	1	parama	a
        //   3	65	2	localParcel1	Parcel
        //   7	57	3	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   8	14	62	finally
        //   18	25	62	finally
        //   25	48	62	finally
      }
      
      public final boolean dk()
        throws RemoteException
      {
        boolean bool = false;
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
          this.Cw.transact(5, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          if (i != 0) {
            bool = true;
          }
          return bool;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      /* Error */
      public final PendingIntent dl()
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 28	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_2
        //   4: invokestatic 28	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore_3
        //   8: aload_2
        //   9: ldc 30
        //   11: invokevirtual 34	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   14: aload_0
        //   15: getfield 18	android/support/v4/media/session/b$a$a:Cw	Landroid/os/IBinder;
        //   18: bipush 8
        //   20: aload_2
        //   21: aload_3
        //   22: iconst_0
        //   23: invokeinterface 47 5 0
        //   28: pop
        //   29: aload_3
        //   30: invokevirtual 50	android/os/Parcel:readException	()V
        //   33: aload_3
        //   34: invokevirtual 92	android/os/Parcel:readInt	()I
        //   37: ifeq +26 -> 63
        //   40: getstatic 105	android/app/PendingIntent:CREATOR	Landroid/os/Parcelable$Creator;
        //   43: aload_3
        //   44: invokeinterface 111 2 0
        //   49: checkcast 101	android/app/PendingIntent
        //   52: astore_1
        //   53: aload_3
        //   54: invokevirtual 53	android/os/Parcel:recycle	()V
        //   57: aload_2
        //   58: invokevirtual 53	android/os/Parcel:recycle	()V
        //   61: aload_1
        //   62: areturn
        //   63: aconst_null
        //   64: astore_1
        //   65: goto -12 -> 53
        //   68: astore_1
        //   69: aload_3
        //   70: invokevirtual 53	android/os/Parcel:recycle	()V
        //   73: aload_2
        //   74: invokevirtual 53	android/os/Parcel:recycle	()V
        //   77: aload_1
        //   78: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	79	0	this	a
        //   52	13	1	localPendingIntent	PendingIntent
        //   68	10	1	localObject	Object
        //   3	71	2	localParcel1	Parcel
        //   7	63	3	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   8	53	68	finally
      }
      
      /* Error */
      public final ParcelableVolumeInfo dm()
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 28	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_2
        //   4: invokestatic 28	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore_3
        //   8: aload_2
        //   9: ldc 30
        //   11: invokevirtual 34	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   14: aload_0
        //   15: getfield 18	android/support/v4/media/session/b$a$a:Cw	Landroid/os/IBinder;
        //   18: bipush 10
        //   20: aload_2
        //   21: aload_3
        //   22: iconst_0
        //   23: invokeinterface 47 5 0
        //   28: pop
        //   29: aload_3
        //   30: invokevirtual 50	android/os/Parcel:readException	()V
        //   33: aload_3
        //   34: invokevirtual 92	android/os/Parcel:readInt	()I
        //   37: ifeq +26 -> 63
        //   40: getstatic 116	android/support/v4/media/session/ParcelableVolumeInfo:CREATOR	Landroid/os/Parcelable$Creator;
        //   43: aload_3
        //   44: invokeinterface 111 2 0
        //   49: checkcast 115	android/support/v4/media/session/ParcelableVolumeInfo
        //   52: astore_1
        //   53: aload_3
        //   54: invokevirtual 53	android/os/Parcel:recycle	()V
        //   57: aload_2
        //   58: invokevirtual 53	android/os/Parcel:recycle	()V
        //   61: aload_1
        //   62: areturn
        //   63: aconst_null
        //   64: astore_1
        //   65: goto -12 -> 53
        //   68: astore_1
        //   69: aload_3
        //   70: invokevirtual 53	android/os/Parcel:recycle	()V
        //   73: aload_2
        //   74: invokevirtual 53	android/os/Parcel:recycle	()V
        //   77: aload_1
        //   78: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	79	0	this	a
        //   52	13	1	localParcelableVolumeInfo	ParcelableVolumeInfo
        //   68	10	1	localObject	Object
        //   3	71	2	localParcel1	Parcel
        //   7	63	3	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   8	53	68	finally
      }
      
      /* Error */
      public final MediaMetadataCompat dn()
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 28	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_2
        //   4: invokestatic 28	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore_3
        //   8: aload_2
        //   9: ldc 30
        //   11: invokevirtual 34	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   14: aload_0
        //   15: getfield 18	android/support/v4/media/session/b$a$a:Cw	Landroid/os/IBinder;
        //   18: bipush 27
        //   20: aload_2
        //   21: aload_3
        //   22: iconst_0
        //   23: invokeinterface 47 5 0
        //   28: pop
        //   29: aload_3
        //   30: invokevirtual 50	android/os/Parcel:readException	()V
        //   33: aload_3
        //   34: invokevirtual 92	android/os/Parcel:readInt	()I
        //   37: ifeq +26 -> 63
        //   40: getstatic 121	android/support/v4/media/MediaMetadataCompat:CREATOR	Landroid/os/Parcelable$Creator;
        //   43: aload_3
        //   44: invokeinterface 111 2 0
        //   49: checkcast 120	android/support/v4/media/MediaMetadataCompat
        //   52: astore_1
        //   53: aload_3
        //   54: invokevirtual 53	android/os/Parcel:recycle	()V
        //   57: aload_2
        //   58: invokevirtual 53	android/os/Parcel:recycle	()V
        //   61: aload_1
        //   62: areturn
        //   63: aconst_null
        //   64: astore_1
        //   65: goto -12 -> 53
        //   68: astore_1
        //   69: aload_3
        //   70: invokevirtual 53	android/os/Parcel:recycle	()V
        //   73: aload_2
        //   74: invokevirtual 53	android/os/Parcel:recycle	()V
        //   77: aload_1
        //   78: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	79	0	this	a
        //   52	13	1	localMediaMetadataCompat	MediaMetadataCompat
        //   68	10	1	localObject	Object
        //   3	71	2	localParcel1	Parcel
        //   7	63	3	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   8	53	68	finally
      }
      
      /* Error */
      public final PlaybackStateCompat jdMethod_do()
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 28	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_2
        //   4: invokestatic 28	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore_3
        //   8: aload_2
        //   9: ldc 30
        //   11: invokevirtual 34	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   14: aload_0
        //   15: getfield 18	android/support/v4/media/session/b$a$a:Cw	Landroid/os/IBinder;
        //   18: bipush 28
        //   20: aload_2
        //   21: aload_3
        //   22: iconst_0
        //   23: invokeinterface 47 5 0
        //   28: pop
        //   29: aload_3
        //   30: invokevirtual 50	android/os/Parcel:readException	()V
        //   33: aload_3
        //   34: invokevirtual 92	android/os/Parcel:readInt	()I
        //   37: ifeq +26 -> 63
        //   40: getstatic 126	android/support/v4/media/session/PlaybackStateCompat:CREATOR	Landroid/os/Parcelable$Creator;
        //   43: aload_3
        //   44: invokeinterface 111 2 0
        //   49: checkcast 125	android/support/v4/media/session/PlaybackStateCompat
        //   52: astore_1
        //   53: aload_3
        //   54: invokevirtual 53	android/os/Parcel:recycle	()V
        //   57: aload_2
        //   58: invokevirtual 53	android/os/Parcel:recycle	()V
        //   61: aload_1
        //   62: areturn
        //   63: aconst_null
        //   64: astore_1
        //   65: goto -12 -> 53
        //   68: astore_1
        //   69: aload_3
        //   70: invokevirtual 53	android/os/Parcel:recycle	()V
        //   73: aload_2
        //   74: invokevirtual 53	android/os/Parcel:recycle	()V
        //   77: aload_1
        //   78: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	79	0	this	a
        //   52	13	1	localPlaybackStateCompat	PlaybackStateCompat
        //   68	10	1	localObject	Object
        //   3	71	2	localParcel1	Parcel
        //   7	63	3	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   8	53	68	finally
      }
      
      public final boolean dp()
        throws RemoteException
      {
        boolean bool = false;
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
          this.Cw.transact(45, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          if (i != 0) {
            bool = true;
          }
          return bool;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public final boolean dq()
        throws RemoteException
      {
        boolean bool = false;
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
          this.Cw.transact(38, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          if (i != 0) {
            bool = true;
          }
          return bool;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public final int dr()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
          this.Cw.transact(47, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          return i;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public final void ds()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
          this.Cw.transact(20, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public final void dt()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
          this.Cw.transact(21, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public final void fastForward()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
          this.Cw.transact(22, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      /* Error */
      public final Bundle getExtras()
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 28	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_2
        //   4: invokestatic 28	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore_3
        //   8: aload_2
        //   9: ldc 30
        //   11: invokevirtual 34	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   14: aload_0
        //   15: getfield 18	android/support/v4/media/session/b$a$a:Cw	Landroid/os/IBinder;
        //   18: bipush 31
        //   20: aload_2
        //   21: aload_3
        //   22: iconst_0
        //   23: invokeinterface 47 5 0
        //   28: pop
        //   29: aload_3
        //   30: invokevirtual 50	android/os/Parcel:readException	()V
        //   33: aload_3
        //   34: invokevirtual 92	android/os/Parcel:readInt	()I
        //   37: ifeq +26 -> 63
        //   40: getstatic 135	android/os/Bundle:CREATOR	Landroid/os/Parcelable$Creator;
        //   43: aload_3
        //   44: invokeinterface 111 2 0
        //   49: checkcast 69	android/os/Bundle
        //   52: astore_1
        //   53: aload_3
        //   54: invokevirtual 53	android/os/Parcel:recycle	()V
        //   57: aload_2
        //   58: invokevirtual 53	android/os/Parcel:recycle	()V
        //   61: aload_1
        //   62: areturn
        //   63: aconst_null
        //   64: astore_1
        //   65: goto -12 -> 53
        //   68: astore_1
        //   69: aload_3
        //   70: invokevirtual 53	android/os/Parcel:recycle	()V
        //   73: aload_2
        //   74: invokevirtual 53	android/os/Parcel:recycle	()V
        //   77: aload_1
        //   78: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	79	0	this	a
        //   52	13	1	localBundle	Bundle
        //   68	10	1	localObject	Object
        //   3	71	2	localParcel1	Parcel
        //   7	63	3	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   8	53	68	finally
      }
      
      public final long getFlags()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
          this.Cw.transact(9, localParcel1, localParcel2, 0);
          localParcel2.readException();
          long l = localParcel2.readLong();
          return l;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public final String getPackageName()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
          this.Cw.transact(6, localParcel1, localParcel2, 0);
          localParcel2.readException();
          String str = localParcel2.readString();
          return str;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public final List<MediaSessionCompat.QueueItem> getQueue()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
          this.Cw.transact(29, localParcel1, localParcel2, 0);
          localParcel2.readException();
          ArrayList localArrayList = localParcel2.createTypedArrayList(MediaSessionCompat.QueueItem.CREATOR);
          return localArrayList;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      /* Error */
      public final CharSequence getQueueTitle()
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 28	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_2
        //   4: invokestatic 28	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore_3
        //   8: aload_2
        //   9: ldc 30
        //   11: invokevirtual 34	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   14: aload_0
        //   15: getfield 18	android/support/v4/media/session/b$a$a:Cw	Landroid/os/IBinder;
        //   18: bipush 30
        //   20: aload_2
        //   21: aload_3
        //   22: iconst_0
        //   23: invokeinterface 47 5 0
        //   28: pop
        //   29: aload_3
        //   30: invokevirtual 50	android/os/Parcel:readException	()V
        //   33: aload_3
        //   34: invokevirtual 92	android/os/Parcel:readInt	()I
        //   37: ifeq +26 -> 63
        //   40: getstatic 163	android/text/TextUtils:CHAR_SEQUENCE_CREATOR	Landroid/os/Parcelable$Creator;
        //   43: aload_3
        //   44: invokeinterface 111 2 0
        //   49: checkcast 165	java/lang/CharSequence
        //   52: astore_1
        //   53: aload_3
        //   54: invokevirtual 53	android/os/Parcel:recycle	()V
        //   57: aload_2
        //   58: invokevirtual 53	android/os/Parcel:recycle	()V
        //   61: aload_1
        //   62: areturn
        //   63: aconst_null
        //   64: astore_1
        //   65: goto -12 -> 53
        //   68: astore_1
        //   69: aload_3
        //   70: invokevirtual 53	android/os/Parcel:recycle	()V
        //   73: aload_2
        //   74: invokevirtual 53	android/os/Parcel:recycle	()V
        //   77: aload_1
        //   78: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	79	0	this	a
        //   52	13	1	localCharSequence	CharSequence
        //   68	10	1	localObject	Object
        //   3	71	2	localParcel1	Parcel
        //   7	63	3	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   8	53	68	finally
      }
      
      public final int getRatingType()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
          this.Cw.transact(32, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          return i;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public final int getRepeatMode()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
          this.Cw.transact(37, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          return i;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public final String getTag()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
          this.Cw.transact(7, localParcel1, localParcel2, 0);
          localParcel2.readException();
          String str = localParcel2.readString();
          return str;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public final void pause()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
          this.Cw.transact(18, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public final void play()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
          this.Cw.transact(13, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      /* Error */
      public final void playFromMediaId(String paramString, Bundle paramBundle)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 28	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_3
        //   4: invokestatic 28	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore 4
        //   9: aload_3
        //   10: ldc 30
        //   12: invokevirtual 34	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   15: aload_3
        //   16: aload_1
        //   17: invokevirtual 41	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   20: aload_2
        //   21: ifnull +45 -> 66
        //   24: aload_3
        //   25: iconst_1
        //   26: invokevirtual 38	android/os/Parcel:writeInt	(I)V
        //   29: aload_2
        //   30: aload_3
        //   31: iconst_0
        //   32: invokevirtual 70	android/os/Bundle:writeToParcel	(Landroid/os/Parcel;I)V
        //   35: aload_0
        //   36: getfield 18	android/support/v4/media/session/b$a$a:Cw	Landroid/os/IBinder;
        //   39: bipush 14
        //   41: aload_3
        //   42: aload 4
        //   44: iconst_0
        //   45: invokeinterface 47 5 0
        //   50: pop
        //   51: aload 4
        //   53: invokevirtual 50	android/os/Parcel:readException	()V
        //   56: aload 4
        //   58: invokevirtual 53	android/os/Parcel:recycle	()V
        //   61: aload_3
        //   62: invokevirtual 53	android/os/Parcel:recycle	()V
        //   65: return
        //   66: aload_3
        //   67: iconst_0
        //   68: invokevirtual 38	android/os/Parcel:writeInt	(I)V
        //   71: goto -36 -> 35
        //   74: astore_1
        //   75: aload 4
        //   77: invokevirtual 53	android/os/Parcel:recycle	()V
        //   80: aload_3
        //   81: invokevirtual 53	android/os/Parcel:recycle	()V
        //   84: aload_1
        //   85: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	86	0	this	a
        //   0	86	1	paramString	String
        //   0	86	2	paramBundle	Bundle
        //   3	78	3	localParcel1	Parcel
        //   7	69	4	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   9	20	74	finally
        //   24	35	74	finally
        //   35	56	74	finally
        //   66	71	74	finally
      }
      
      /* Error */
      public final void playFromSearch(String paramString, Bundle paramBundle)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 28	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_3
        //   4: invokestatic 28	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore 4
        //   9: aload_3
        //   10: ldc 30
        //   12: invokevirtual 34	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   15: aload_3
        //   16: aload_1
        //   17: invokevirtual 41	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   20: aload_2
        //   21: ifnull +45 -> 66
        //   24: aload_3
        //   25: iconst_1
        //   26: invokevirtual 38	android/os/Parcel:writeInt	(I)V
        //   29: aload_2
        //   30: aload_3
        //   31: iconst_0
        //   32: invokevirtual 70	android/os/Bundle:writeToParcel	(Landroid/os/Parcel;I)V
        //   35: aload_0
        //   36: getfield 18	android/support/v4/media/session/b$a$a:Cw	Landroid/os/IBinder;
        //   39: bipush 15
        //   41: aload_3
        //   42: aload 4
        //   44: iconst_0
        //   45: invokeinterface 47 5 0
        //   50: pop
        //   51: aload 4
        //   53: invokevirtual 50	android/os/Parcel:readException	()V
        //   56: aload 4
        //   58: invokevirtual 53	android/os/Parcel:recycle	()V
        //   61: aload_3
        //   62: invokevirtual 53	android/os/Parcel:recycle	()V
        //   65: return
        //   66: aload_3
        //   67: iconst_0
        //   68: invokevirtual 38	android/os/Parcel:writeInt	(I)V
        //   71: goto -36 -> 35
        //   74: astore_1
        //   75: aload 4
        //   77: invokevirtual 53	android/os/Parcel:recycle	()V
        //   80: aload_3
        //   81: invokevirtual 53	android/os/Parcel:recycle	()V
        //   84: aload_1
        //   85: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	86	0	this	a
        //   0	86	1	paramString	String
        //   0	86	2	paramBundle	Bundle
        //   3	78	3	localParcel1	Parcel
        //   7	69	4	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   9	20	74	finally
        //   24	35	74	finally
        //   35	56	74	finally
        //   66	71	74	finally
      }
      
      public final void playFromUri(Uri paramUri, Bundle paramBundle)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            if (paramUri != null)
            {
              localParcel1.writeInt(1);
              paramUri.writeToParcel(localParcel1, 0);
              if (paramBundle != null)
              {
                localParcel1.writeInt(1);
                paramBundle.writeToParcel(localParcel1, 0);
                this.Cw.transact(16, localParcel1, localParcel2, 0);
                localParcel2.readException();
              }
            }
            else
            {
              localParcel1.writeInt(0);
              continue;
            }
            localParcel1.writeInt(0);
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
        }
      }
      
      public final void prepare()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
          this.Cw.transact(33, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      /* Error */
      public final void prepareFromMediaId(String paramString, Bundle paramBundle)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 28	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_3
        //   4: invokestatic 28	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore 4
        //   9: aload_3
        //   10: ldc 30
        //   12: invokevirtual 34	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   15: aload_3
        //   16: aload_1
        //   17: invokevirtual 41	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   20: aload_2
        //   21: ifnull +45 -> 66
        //   24: aload_3
        //   25: iconst_1
        //   26: invokevirtual 38	android/os/Parcel:writeInt	(I)V
        //   29: aload_2
        //   30: aload_3
        //   31: iconst_0
        //   32: invokevirtual 70	android/os/Bundle:writeToParcel	(Landroid/os/Parcel;I)V
        //   35: aload_0
        //   36: getfield 18	android/support/v4/media/session/b$a$a:Cw	Landroid/os/IBinder;
        //   39: bipush 34
        //   41: aload_3
        //   42: aload 4
        //   44: iconst_0
        //   45: invokeinterface 47 5 0
        //   50: pop
        //   51: aload 4
        //   53: invokevirtual 50	android/os/Parcel:readException	()V
        //   56: aload 4
        //   58: invokevirtual 53	android/os/Parcel:recycle	()V
        //   61: aload_3
        //   62: invokevirtual 53	android/os/Parcel:recycle	()V
        //   65: return
        //   66: aload_3
        //   67: iconst_0
        //   68: invokevirtual 38	android/os/Parcel:writeInt	(I)V
        //   71: goto -36 -> 35
        //   74: astore_1
        //   75: aload 4
        //   77: invokevirtual 53	android/os/Parcel:recycle	()V
        //   80: aload_3
        //   81: invokevirtual 53	android/os/Parcel:recycle	()V
        //   84: aload_1
        //   85: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	86	0	this	a
        //   0	86	1	paramString	String
        //   0	86	2	paramBundle	Bundle
        //   3	78	3	localParcel1	Parcel
        //   7	69	4	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   9	20	74	finally
        //   24	35	74	finally
        //   35	56	74	finally
        //   66	71	74	finally
      }
      
      /* Error */
      public final void prepareFromSearch(String paramString, Bundle paramBundle)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 28	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_3
        //   4: invokestatic 28	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore 4
        //   9: aload_3
        //   10: ldc 30
        //   12: invokevirtual 34	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   15: aload_3
        //   16: aload_1
        //   17: invokevirtual 41	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   20: aload_2
        //   21: ifnull +45 -> 66
        //   24: aload_3
        //   25: iconst_1
        //   26: invokevirtual 38	android/os/Parcel:writeInt	(I)V
        //   29: aload_2
        //   30: aload_3
        //   31: iconst_0
        //   32: invokevirtual 70	android/os/Bundle:writeToParcel	(Landroid/os/Parcel;I)V
        //   35: aload_0
        //   36: getfield 18	android/support/v4/media/session/b$a$a:Cw	Landroid/os/IBinder;
        //   39: bipush 35
        //   41: aload_3
        //   42: aload 4
        //   44: iconst_0
        //   45: invokeinterface 47 5 0
        //   50: pop
        //   51: aload 4
        //   53: invokevirtual 50	android/os/Parcel:readException	()V
        //   56: aload 4
        //   58: invokevirtual 53	android/os/Parcel:recycle	()V
        //   61: aload_3
        //   62: invokevirtual 53	android/os/Parcel:recycle	()V
        //   65: return
        //   66: aload_3
        //   67: iconst_0
        //   68: invokevirtual 38	android/os/Parcel:writeInt	(I)V
        //   71: goto -36 -> 35
        //   74: astore_1
        //   75: aload 4
        //   77: invokevirtual 53	android/os/Parcel:recycle	()V
        //   80: aload_3
        //   81: invokevirtual 53	android/os/Parcel:recycle	()V
        //   84: aload_1
        //   85: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	86	0	this	a
        //   0	86	1	paramString	String
        //   0	86	2	paramBundle	Bundle
        //   3	78	3	localParcel1	Parcel
        //   7	69	4	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   9	20	74	finally
        //   24	35	74	finally
        //   35	56	74	finally
        //   66	71	74	finally
      }
      
      public final void prepareFromUri(Uri paramUri, Bundle paramBundle)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        for (;;)
        {
          try
          {
            localParcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            if (paramUri != null)
            {
              localParcel1.writeInt(1);
              paramUri.writeToParcel(localParcel1, 0);
              if (paramBundle != null)
              {
                localParcel1.writeInt(1);
                paramBundle.writeToParcel(localParcel1, 0);
                this.Cw.transact(36, localParcel1, localParcel2, 0);
                localParcel2.readException();
              }
            }
            else
            {
              localParcel1.writeInt(0);
              continue;
            }
            localParcel1.writeInt(0);
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
        }
      }
      
      public final void r(boolean paramBoolean)
        throws RemoteException
      {
        int i = 0;
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
          if (paramBoolean) {
            i = 1;
          }
          localParcel1.writeInt(i);
          this.Cw.transact(46, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public final void rewind()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
          this.Cw.transact(23, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public final void s(boolean paramBoolean)
        throws RemoteException
      {
        int i = 0;
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
          if (paramBoolean) {
            i = 1;
          }
          localParcel1.writeInt(i);
          this.Cw.transact(40, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public final void seekTo(long paramLong)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
          localParcel1.writeLong(paramLong);
          this.Cw.transact(24, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      /* Error */
      public final void sendCustomAction(String paramString, Bundle paramBundle)
        throws RemoteException
      {
        // Byte code:
        //   0: invokestatic 28	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   3: astore_3
        //   4: invokestatic 28	android/os/Parcel:obtain	()Landroid/os/Parcel;
        //   7: astore 4
        //   9: aload_3
        //   10: ldc 30
        //   12: invokevirtual 34	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
        //   15: aload_3
        //   16: aload_1
        //   17: invokevirtual 41	android/os/Parcel:writeString	(Ljava/lang/String;)V
        //   20: aload_2
        //   21: ifnull +45 -> 66
        //   24: aload_3
        //   25: iconst_1
        //   26: invokevirtual 38	android/os/Parcel:writeInt	(I)V
        //   29: aload_2
        //   30: aload_3
        //   31: iconst_0
        //   32: invokevirtual 70	android/os/Bundle:writeToParcel	(Landroid/os/Parcel;I)V
        //   35: aload_0
        //   36: getfield 18	android/support/v4/media/session/b$a$a:Cw	Landroid/os/IBinder;
        //   39: bipush 26
        //   41: aload_3
        //   42: aload 4
        //   44: iconst_0
        //   45: invokeinterface 47 5 0
        //   50: pop
        //   51: aload 4
        //   53: invokevirtual 50	android/os/Parcel:readException	()V
        //   56: aload 4
        //   58: invokevirtual 53	android/os/Parcel:recycle	()V
        //   61: aload_3
        //   62: invokevirtual 53	android/os/Parcel:recycle	()V
        //   65: return
        //   66: aload_3
        //   67: iconst_0
        //   68: invokevirtual 38	android/os/Parcel:writeInt	(I)V
        //   71: goto -36 -> 35
        //   74: astore_1
        //   75: aload 4
        //   77: invokevirtual 53	android/os/Parcel:recycle	()V
        //   80: aload_3
        //   81: invokevirtual 53	android/os/Parcel:recycle	()V
        //   84: aload_1
        //   85: athrow
        // Local variable table:
        //   start	length	slot	name	signature
        //   0	86	0	this	a
        //   0	86	1	paramString	String
        //   0	86	2	paramBundle	Bundle
        //   3	78	3	localParcel1	Parcel
        //   7	69	4	localParcel2	Parcel
        // Exception table:
        //   from	to	target	type
        //   9	20	74	finally
        //   24	35	74	finally
        //   35	56	74	finally
        //   66	71	74	finally
      }
      
      public final void setRepeatMode(int paramInt)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
          localParcel1.writeInt(paramInt);
          this.Cw.transact(39, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public final void skipToQueueItem(long paramLong)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
          localParcel1.writeLong(paramLong);
          this.Cw.transact(17, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      
      public final void stop()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
          this.Cw.transact(19, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/media/session/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */