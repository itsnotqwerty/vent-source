package android.support.v4.media.session;

import android.media.AudioAttributes;
import android.media.MediaMetadata;
import android.media.session.MediaController.Callback;
import android.media.session.MediaController.PlaybackInfo;
import android.media.session.MediaSession.QueueItem;
import android.media.session.PlaybackState;
import android.os.Bundle;
import java.util.List;

final class c
{
  public static abstract interface a
  {
    public abstract void b(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5);
    
    public abstract void du();
    
    public abstract void dv();
    
    public abstract void dw();
    
    public abstract void onQueueChanged(List<?> paramList);
    
    public abstract void onSessionDestroyed();
    
    public abstract void x(Object paramObject);
    
    public abstract void y(Object paramObject);
  }
  
  static final class b<T extends c.a>
    extends MediaController.Callback
  {
    protected final T CL;
    
    public b(T paramT)
    {
      this.CL = paramT;
    }
    
    public final void onAudioInfoChanged(MediaController.PlaybackInfo paramPlaybackInfo)
    {
      c.a locala = this.CL;
      int j = paramPlaybackInfo.getPlaybackType();
      AudioAttributes localAudioAttributes = ((MediaController.PlaybackInfo)paramPlaybackInfo).getAudioAttributes();
      int i;
      if ((localAudioAttributes.getFlags() & 0x1) == 1) {
        i = 7;
      }
      for (;;)
      {
        locala.b(j, i, paramPlaybackInfo.getVolumeControl(), paramPlaybackInfo.getMaxVolume(), paramPlaybackInfo.getCurrentVolume());
        return;
        if ((localAudioAttributes.getFlags() & 0x4) == 4) {
          i = 6;
        } else {
          switch (localAudioAttributes.getUsage())
          {
          default: 
            i = 3;
            break;
          case 1: 
          case 11: 
          case 12: 
          case 14: 
            i = 3;
            break;
          case 13: 
            i = 1;
            break;
          case 2: 
            i = 0;
            break;
          case 3: 
            i = 8;
            break;
          case 4: 
            i = 4;
            break;
          case 6: 
            i = 2;
            break;
          case 5: 
          case 7: 
          case 8: 
          case 9: 
          case 10: 
            i = 5;
          }
        }
      }
    }
    
    public final void onExtrasChanged(Bundle paramBundle)
    {
      this.CL.dw();
    }
    
    public final void onMetadataChanged(MediaMetadata paramMediaMetadata)
    {
      this.CL.y(paramMediaMetadata);
    }
    
    public final void onPlaybackStateChanged(PlaybackState paramPlaybackState)
    {
      this.CL.x(paramPlaybackState);
    }
    
    public final void onQueueChanged(List<MediaSession.QueueItem> paramList)
    {
      this.CL.onQueueChanged(paramList);
    }
    
    public final void onQueueTitleChanged(CharSequence paramCharSequence)
    {
      this.CL.dv();
    }
    
    public final void onSessionDestroyed()
    {
      this.CL.onSessionDestroyed();
    }
    
    public final void onSessionEvent(String paramString, Bundle paramBundle)
    {
      this.CL.du();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/media/session/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */