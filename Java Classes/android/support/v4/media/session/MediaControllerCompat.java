package android.support.v4.media.session;

import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder.DeathRecipient;
import android.os.Message;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.support.v4.app.g.a;
import android.support.v4.media.MediaMetadataCompat;
import android.util.Log;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public final class MediaControllerCompat
{
  static final class MediaControllerImplApi21
  {
    final List<MediaControllerCompat.a> CC;
    b CD;
    HashMap<MediaControllerCompat.a, a> CE;
    
    private static class ExtraBinderRequestResultReceiver
      extends ResultReceiver
    {
      private WeakReference<MediaControllerCompat.MediaControllerImplApi21> CF;
      
      protected void onReceiveResult(int paramInt, Bundle arg2)
      {
        MediaControllerCompat.MediaControllerImplApi21 localMediaControllerImplApi21 = (MediaControllerCompat.MediaControllerImplApi21)this.CF.get();
        if ((localMediaControllerImplApi21 == null) || (??? == null)) {
          return;
        }
        if (Build.VERSION.SDK_INT >= 18) {}
        for (??? = ???.getBinder("android.support.v4.media.session.EXTRA_BINDER");; ??? = g.a.a(???, "android.support.v4.media.session.EXTRA_BINDER"))
        {
          localMediaControllerImplApi21.CD = b.a.b(???);
          if (localMediaControllerImplApi21.CD == null) {
            break;
          }
          synchronized (localMediaControllerImplApi21.CC)
          {
            Iterator localIterator = localMediaControllerImplApi21.CC.iterator();
            while (localIterator.hasNext())
            {
              MediaControllerCompat.a locala = (MediaControllerCompat.a)localIterator.next();
              MediaControllerCompat.MediaControllerImplApi21.a locala1 = new MediaControllerCompat.MediaControllerImplApi21.a(locala);
              localMediaControllerImplApi21.CE.put(locala, locala1);
              locala.Cz = true;
              try
              {
                localMediaControllerImplApi21.CD.a(locala1);
              }
              catch (RemoteException localRemoteException)
              {
                Log.e("MediaControllerCompat", "Dead object in registerCallback.", localRemoteException);
              }
            }
            localMediaControllerImplApi21.CC.clear();
            return;
          }
        }
      }
    }
    
    private static final class a
      extends MediaControllerCompat.a.c
    {
      a(MediaControllerCompat.a parama)
      {
        super();
      }
      
      public final void a(MediaMetadataCompat paramMediaMetadataCompat)
        throws RemoteException
      {
        throw new AssertionError();
      }
      
      public final void a(ParcelableVolumeInfo paramParcelableVolumeInfo)
        throws RemoteException
      {
        throw new AssertionError();
      }
      
      public final void onExtrasChanged(Bundle paramBundle)
        throws RemoteException
      {
        throw new AssertionError();
      }
      
      public final void onQueueChanged(List<MediaSessionCompat.QueueItem> paramList)
        throws RemoteException
      {
        throw new AssertionError();
      }
      
      public final void onQueueTitleChanged(CharSequence paramCharSequence)
        throws RemoteException
      {
        throw new AssertionError();
      }
      
      public final void onSessionDestroyed()
        throws RemoteException
      {
        throw new AssertionError();
      }
    }
  }
  
  public static abstract class a
    implements IBinder.DeathRecipient
  {
    private final Object Cx;
    a Cy;
    boolean Cz;
    
    public a()
    {
      if (Build.VERSION.SDK_INT >= 21)
      {
        this.Cx = new c.b(new b(this));
        return;
      }
      this.Cx = new c(this);
    }
    
    final void a(int paramInt, Object paramObject, Bundle paramBundle)
    {
      if (this.Cy != null)
      {
        paramObject = this.Cy.obtainMessage(paramInt, paramObject);
        ((Message)paramObject).setData(paramBundle);
        ((Message)paramObject).sendToTarget();
      }
    }
    
    private final class a
      extends Handler
    {
      boolean CA;
      
      public final void handleMessage(Message paramMessage)
      {
        if (!this.CA) {
          return;
        }
        switch (paramMessage.what)
        {
        case 8: 
        case 10: 
        default: 
          return;
        case 1: 
          Object localObject = paramMessage.obj;
          paramMessage.getData();
          return;
        case 2: 
          paramMessage = paramMessage.obj;
          return;
        case 3: 
          paramMessage = paramMessage.obj;
          return;
        case 5: 
          paramMessage = paramMessage.obj;
          return;
        case 6: 
          paramMessage = paramMessage.obj;
          return;
        case 11: 
          ((Boolean)paramMessage.obj).booleanValue();
          return;
        case 9: 
          ((Integer)paramMessage.obj).intValue();
          return;
        case 12: 
          ((Integer)paramMessage.obj).intValue();
          return;
        case 7: 
          paramMessage = paramMessage.obj;
          return;
        }
        paramMessage = paramMessage.obj;
      }
    }
    
    private static final class b
      implements c.a
    {
      private final WeakReference<MediaControllerCompat.a> CB;
      
      b(MediaControllerCompat.a parama)
      {
        this.CB = new WeakReference(parama);
      }
      
      public final void b(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
      {
        if ((MediaControllerCompat.a)this.CB.get() != null) {
          new MediaControllerCompat.b(paramInt1, paramInt2, paramInt3, paramInt4, paramInt5);
        }
      }
      
      public final void du()
      {
        MediaControllerCompat.a locala = (MediaControllerCompat.a)this.CB.get();
        if ((locala != null) && (locala.Cz)) {
          int i = Build.VERSION.SDK_INT;
        }
      }
      
      public final void dv()
      {
        this.CB.get();
      }
      
      public final void dw()
      {
        this.CB.get();
      }
      
      public final void onQueueChanged(List<?> paramList)
      {
        if ((MediaControllerCompat.a)this.CB.get() != null) {
          MediaSessionCompat.QueueItem.i(paramList);
        }
      }
      
      public final void onSessionDestroyed()
      {
        this.CB.get();
      }
      
      public final void x(Object paramObject)
      {
        MediaControllerCompat.a locala = (MediaControllerCompat.a)this.CB.get();
        if ((locala != null) && (!locala.Cz)) {
          PlaybackStateCompat.z(paramObject);
        }
      }
      
      public final void y(Object paramObject)
      {
        if ((MediaControllerCompat.a)this.CB.get() != null) {
          MediaMetadataCompat.w(paramObject);
        }
      }
    }
    
    private static class c
      extends a.a
    {
      private final WeakReference<MediaControllerCompat.a> CB;
      
      c(MediaControllerCompat.a parama)
      {
        this.CB = new WeakReference(parama);
      }
      
      public void a(MediaMetadataCompat paramMediaMetadataCompat)
        throws RemoteException
      {
        MediaControllerCompat.a locala = (MediaControllerCompat.a)this.CB.get();
        if (locala != null) {
          locala.a(3, paramMediaMetadataCompat, null);
        }
      }
      
      public void a(ParcelableVolumeInfo paramParcelableVolumeInfo)
        throws RemoteException
      {
        MediaControllerCompat.a locala = (MediaControllerCompat.a)this.CB.get();
        if (locala != null) {
          if (paramParcelableVolumeInfo == null) {
            break label55;
          }
        }
        label55:
        for (paramParcelableVolumeInfo = new MediaControllerCompat.b(paramParcelableVolumeInfo.CQ, paramParcelableVolumeInfo.CR, paramParcelableVolumeInfo.CS, paramParcelableVolumeInfo.CT, paramParcelableVolumeInfo.CU);; paramParcelableVolumeInfo = null)
        {
          locala.a(4, paramParcelableVolumeInfo, null);
          return;
        }
      }
      
      public final void a(PlaybackStateCompat paramPlaybackStateCompat)
        throws RemoteException
      {
        MediaControllerCompat.a locala = (MediaControllerCompat.a)this.CB.get();
        if (locala != null) {
          locala.a(2, paramPlaybackStateCompat, null);
        }
      }
      
      public final void a(String paramString, Bundle paramBundle)
        throws RemoteException
      {
        MediaControllerCompat.a locala = (MediaControllerCompat.a)this.CB.get();
        if (locala != null) {
          locala.a(1, paramString, paramBundle);
        }
      }
      
      public final void ah(int paramInt)
        throws RemoteException
      {
        MediaControllerCompat.a locala = (MediaControllerCompat.a)this.CB.get();
        if (locala != null) {
          locala.a(9, Integer.valueOf(paramInt), null);
        }
      }
      
      public final void ai(int paramInt)
        throws RemoteException
      {
        MediaControllerCompat.a locala = (MediaControllerCompat.a)this.CB.get();
        if (locala != null) {
          locala.a(12, Integer.valueOf(paramInt), null);
        }
      }
      
      public final void dj()
        throws RemoteException
      {
        MediaControllerCompat.a locala = (MediaControllerCompat.a)this.CB.get();
        if (locala != null) {
          locala.a(13, null, null);
        }
      }
      
      public void onExtrasChanged(Bundle paramBundle)
        throws RemoteException
      {
        MediaControllerCompat.a locala = (MediaControllerCompat.a)this.CB.get();
        if (locala != null) {
          locala.a(7, paramBundle, null);
        }
      }
      
      public void onQueueChanged(List<MediaSessionCompat.QueueItem> paramList)
        throws RemoteException
      {
        MediaControllerCompat.a locala = (MediaControllerCompat.a)this.CB.get();
        if (locala != null) {
          locala.a(5, paramList, null);
        }
      }
      
      public void onQueueTitleChanged(CharSequence paramCharSequence)
        throws RemoteException
      {
        MediaControllerCompat.a locala = (MediaControllerCompat.a)this.CB.get();
        if (locala != null) {
          locala.a(6, paramCharSequence, null);
        }
      }
      
      public void onSessionDestroyed()
        throws RemoteException
      {
        MediaControllerCompat.a locala = (MediaControllerCompat.a)this.CB.get();
        if (locala != null) {
          locala.a(8, null, null);
        }
      }
      
      public final void p(boolean paramBoolean)
        throws RemoteException
      {}
      
      public final void q(boolean paramBoolean)
        throws RemoteException
      {
        MediaControllerCompat.a locala = (MediaControllerCompat.a)this.CB.get();
        if (locala != null) {
          locala.a(11, Boolean.valueOf(paramBoolean), null);
        }
      }
    }
  }
  
  public static final class b
  {
    private final int CG;
    private final int CH;
    private final int CI;
    private final int CJ;
    private final int CK;
    
    b(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
    {
      this.CG = paramInt1;
      this.CH = paramInt2;
      this.CI = paramInt3;
      this.CJ = paramInt4;
      this.CK = paramInt5;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/media/session/MediaControllerCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */