package io.intercom.android.sdk.conversation;

import android.content.Context;
import android.content.res.Resources.NotFoundException;
import android.media.SoundPool;
import android.media.SoundPool.OnLoadCompleteListener;
import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.R.raw;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.logger.LumberMill;
import io.intercom.android.sdk.twig.Twig;

public class SoundPlayer
{
  static final int NOT_FOUND_ID = -1;
  private static final Twig TWIG = ;
  private final Provider<AppConfig> appConfigProvider;
  final int messageReceivedId;
  boolean messageReceivedLoaded;
  final int replyDeliveredId;
  boolean replyDeliveredLoaded;
  final int replyFailedId;
  boolean replyFailedLoaded;
  final int replySentId;
  boolean replySentLoaded;
  private final SoundPool soundPool;
  
  public SoundPlayer(Context paramContext, Provider<AppConfig> paramProvider)
  {
    this(paramContext, paramProvider, new SoundPool(1, 5, 0));
  }
  
  SoundPlayer(Context paramContext, Provider<AppConfig> paramProvider, SoundPool paramSoundPool)
  {
    this.appConfigProvider = paramProvider;
    this.soundPool = paramSoundPool;
    this.soundPool.setOnLoadCompleteListener(new SoundPool.OnLoadCompleteListener()
    {
      public void onLoadComplete(SoundPool paramAnonymousSoundPool, int paramAnonymousInt1, int paramAnonymousInt2)
      {
        if (paramAnonymousInt2 == 0)
        {
          if (paramAnonymousInt1 != SoundPlayer.this.messageReceivedId) {
            break label24;
          }
          SoundPlayer.this.messageReceivedLoaded = true;
        }
        label24:
        do
        {
          return;
          if (paramAnonymousInt1 == SoundPlayer.this.replyFailedId)
          {
            SoundPlayer.this.replyFailedLoaded = true;
            return;
          }
          if (paramAnonymousInt1 == SoundPlayer.this.replySentId)
          {
            SoundPlayer.this.replySentLoaded = true;
            return;
          }
        } while (paramAnonymousInt1 != SoundPlayer.this.replyDeliveredId);
        SoundPlayer.this.replyDeliveredLoaded = true;
      }
    });
    this.messageReceivedId = loadSound(paramContext, R.raw.intercom_birdy_done_1);
    this.replyFailedId = loadSound(paramContext, R.raw.intercom_wood_done_1);
    this.replySentId = loadSound(paramContext, R.raw.intercom_wood_done_2);
    this.replyDeliveredId = loadSound(paramContext, R.raw.intercom_wood_done_3);
  }
  
  private int loadSound(Context paramContext, int paramInt)
  {
    try
    {
      paramInt = this.soundPool.load(paramContext, paramInt, 1);
      return paramInt;
    }
    catch (Resources.NotFoundException paramContext)
    {
      TWIG.e(paramContext, "Could not play sound", new Object[0]);
    }
    return -1;
  }
  
  void playIfLoaded(boolean paramBoolean, int paramInt)
  {
    if ((paramBoolean) && (paramInt != -1) && (((AppConfig)this.appConfigProvider.get()).isAudioEnabled())) {
      this.soundPool.play(paramInt, 1.0F, 1.0F, 1, 0, 1.0F);
    }
  }
  
  public void playMessageReceivedSound()
  {
    playIfLoaded(this.messageReceivedLoaded, this.messageReceivedId);
  }
  
  public void playReplyDeliveredSound()
  {
    playIfLoaded(this.replyDeliveredLoaded, this.replyDeliveredId);
  }
  
  public void playReplyFailedSound()
  {
    playIfLoaded(this.replyFailedLoaded, this.replyFailedId);
  }
  
  public void playReplySentSound()
  {
    playIfLoaded(this.replySentLoaded, this.replySentId);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/conversation/SoundPlayer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */