package io.intercom.android.sdk.views;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import io.intercom.android.sdk.conversation.UploadProgressListener;
import io.intercom.android.sdk.logger.LumberMill;
import io.intercom.android.sdk.twig.Twig;

public class ProgressLinearLayout
  extends LinearLayout
  implements UploadProgressListener
{
  ImageView attachmentIcon;
  private final Twig twig = LumberMill.getLogger();
  UploadProgressBar uploadProgressBar;
  
  public ProgressLinearLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ProgressLinearLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public void setAttachmentIcon(ImageView paramImageView)
  {
    this.attachmentIcon = paramImageView;
  }
  
  public void setUploadProgressBar(UploadProgressBar paramUploadProgressBar)
  {
    this.uploadProgressBar = paramUploadProgressBar;
  }
  
  public void uploadNotice(final byte paramByte)
  {
    this.twig.internal("progress", String.valueOf(paramByte));
    post(new Runnable()
    {
      public void run()
      {
        if (ProgressLinearLayout.this.uploadProgressBar != null)
        {
          ProgressLinearLayout.this.uploadProgressBar.setProgress(paramByte);
          if (paramByte == 90) {
            ProgressLinearLayout.this.uploadProgressBar.smoothEndAnimation(new Animator.AnimatorListener()
            {
              public void onAnimationCancel(Animator paramAnonymous2Animator) {}
              
              public void onAnimationEnd(Animator paramAnonymous2Animator)
              {
                ProgressLinearLayout.this.uploadProgressBar.hideBar();
                if (ProgressLinearLayout.this.attachmentIcon != null)
                {
                  ProgressLinearLayout.this.attachmentIcon.setVisibility(0);
                  paramAnonymous2Animator = ObjectAnimator.ofFloat(ProgressLinearLayout.this.attachmentIcon, "alpha", new float[] { 0.0F, 1.0F });
                  paramAnonymous2Animator.setDuration(300L);
                  paramAnonymous2Animator.setInterpolator(new DecelerateInterpolator());
                  paramAnonymous2Animator.start();
                }
              }
              
              public void onAnimationRepeat(Animator paramAnonymous2Animator) {}
              
              public void onAnimationStart(Animator paramAnonymous2Animator) {}
            });
          }
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


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/views/ProgressLinearLayout.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */