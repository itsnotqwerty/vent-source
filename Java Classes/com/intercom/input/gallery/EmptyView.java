package com.intercom.input.gallery;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;

public class EmptyView
  extends LinearLayout
{
  private Button actionButton;
  private String blW;
  private String blX;
  private String blY;
  private int blZ;
  private int bma;
  private int bmb;
  private int bmc;
  private TextView subtitle;
  private TextView title;
  
  public EmptyView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public EmptyView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    LayoutInflater.from(paramContext).inflate(m.f.intercom_composer_empty_view, this, true);
    setBackgroundResource(m.b.intercom_composer_white);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, m.h.intercom_composer_empty_view, 0, 0);
    try
    {
      this.blW = paramContext.getString(m.h.intercom_composer_empty_view_intercom_composer_titleText);
      this.blX = paramContext.getString(m.h.intercom_composer_empty_view_intercom_composer_subtitleText);
      this.blY = paramContext.getString(m.h.intercom_composer_empty_view_intercom_composer_actionButtonText);
      this.blZ = paramContext.getDimensionPixelSize(m.h.intercom_composer_empty_view_intercom_composer_internalPaddingTop, 0);
      this.bma = paramContext.getDimensionPixelSize(m.h.intercom_composer_empty_view_intercom_composer_internalPaddingBottom, 0);
      this.bmb = paramContext.getDimensionPixelSize(m.h.intercom_composer_empty_view_intercom_composer_internalPaddingLeft, 0);
      this.bmc = paramContext.getDimensionPixelSize(m.h.intercom_composer_empty_view_intercom_composer_internalPaddingRight, 0);
      return;
    }
    catch (RuntimeException paramAttributeSet)
    {
      this.blW = "";
      this.blX = "";
      this.blY = "";
      this.blZ = 0;
      this.bma = 0;
      this.bmb = 0;
      this.bmc = 0;
      return;
    }
    finally
    {
      paramContext.recycle();
    }
  }
  
  protected void onFinishInflate()
  {
    super.onFinishInflate();
    this.title = ((TextView)findViewById(m.d.empty_text_title));
    this.subtitle = ((TextView)findViewById(m.d.empty_text_subtitle));
    this.actionButton = ((Button)findViewById(m.d.empty_action_button));
    this.title.setText(this.blW);
    this.subtitle.setText(this.blX);
    if (!TextUtils.isEmpty(this.blY)) {
      this.actionButton.setText(this.blY);
    }
    for (;;)
    {
      ((LinearLayout)findViewById(m.d.empty_view_layout)).setPadding(this.bmb, this.blZ, this.bmc, this.bma);
      return;
      this.actionButton.setVisibility(8);
    }
  }
  
  public void setActionButtonClickListener(View.OnClickListener paramOnClickListener)
  {
    this.actionButton.setOnClickListener(paramOnClickListener);
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
  
  public void setThemeColor(int paramInt)
  {
    this.actionButton.setBackgroundColor(paramInt);
  }
  
  public void setTitle(int paramInt)
  {
    this.title.setText(paramInt);
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    this.title.setText(paramCharSequence);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/intercom/input/gallery/EmptyView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */