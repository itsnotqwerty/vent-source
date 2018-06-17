package io.intercom.android.sdk.views;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import io.intercom.android.sdk.conversation.UploadProgressListener;
import io.intercom.android.sdk.logger.LumberMill;
import io.intercom.android.sdk.twig.Twig;

public class ProgressFrameLayout
  extends FrameLayout
  implements UploadProgressListener
{
  private final Twig twig = LumberMill.getLogger();
  final UploadProgressBar uploadProgressBar;
  
  public ProgressFrameLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ProgressFrameLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.uploadProgressBar = new UploadProgressBar(paramContext, paramAttributeSet);
    addView(this.uploadProgressBar);
  }
  
  public void uploadNotice(final byte paramByte)
  {
    this.twig.internal("progress", String.valueOf(paramByte));
    post(new Runnable()
    {
      public void run()
      {
        ProgressFrameLayout.this.uploadProgressBar.setProgress(paramByte);
        if (paramByte == 90) {
          ProgressFrameLayout.this.uploadProgressBar.smoothEndAnimation();
        }
      }
    });
  }
  
  public void uploadStarted()
  {
    this.uploadProgressBar.smoothStartAnimation();
  }
  
  public void uploadStopped()
  {
    this.uploadProgressBar.hideBar();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/views/ProgressFrameLayout.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */