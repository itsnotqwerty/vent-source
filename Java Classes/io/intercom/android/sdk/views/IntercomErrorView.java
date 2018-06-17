package io.intercom.android.sdk.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import io.intercom.android.sdk.R.id;
import io.intercom.android.sdk.utilities.FontUtils;

public class IntercomErrorView
  extends RelativeLayout
{
  private Button actionButton;
  private TextView subtitle;
  private TextView titleView;
  
  public IntercomErrorView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public IntercomErrorView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  protected void onFinishInflate()
  {
    super.onFinishInflate();
    this.titleView = ((TextView)findViewById(R.id.empty_text_title));
    FontUtils.setRobotoMediumTypeface(this.titleView);
    this.subtitle = ((TextView)findViewById(R.id.empty_text_subtitle));
    this.actionButton = ((Button)findViewById(R.id.action_button));
  }
  
  public void setActionButtonClickListener(View.OnClickListener paramOnClickListener)
  {
    this.actionButton.setOnClickListener(paramOnClickListener);
  }
  
  public void setActionButtonText(int paramInt)
  {
    this.actionButton.setText(paramInt);
  }
  
  public void setActionButtonTextColor(int paramInt)
  {
    this.actionButton.setTextColor(paramInt);
  }
  
  public void setActionButtonVisibility(int paramInt)
  {
    this.actionButton.setVisibility(paramInt);
  }
  
  public void setSubtitle(int paramInt)
  {
    this.subtitle.setText(paramInt);
  }
  
  public void setSubtitle(CharSequence paramCharSequence)
  {
    this.subtitle.setText(paramCharSequence);
  }
  
  public void setTitle(int paramInt)
  {
    this.titleView.setText(paramInt);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/views/IntercomErrorView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */