package io.intercom.android.sdk.conversation.composer.galleryinput;

import android.os.Handler;
import android.os.Looper;

class Debouncer
{
  private final Handler handler = new Handler(Looper.getMainLooper());
  
  void call(Runnable paramRunnable, long paramLong)
  {
    this.handler.removeCallbacksAndMessages(null);
    this.handler.postDelayed(paramRunnable, paramLong);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/conversation/composer/galleryinput/Debouncer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */