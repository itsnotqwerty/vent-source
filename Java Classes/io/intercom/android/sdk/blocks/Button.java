package io.intercom.android.sdk.blocks;

import android.content.Context;
import android.support.v4.content.a;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.R.color;
import io.intercom.android.sdk.R.drawable;
import io.intercom.android.sdk.R.string;
import io.intercom.android.sdk.blocks.blockInterfaces.ButtonBlock;
import io.intercom.android.sdk.blocks.blockInterfaces.FacebookBlock;
import io.intercom.android.sdk.blocks.blockInterfaces.TwitterBlock;
import io.intercom.android.sdk.blocks.views.ParagraphView;
import io.intercom.android.sdk.commons.utilities.ScreenUtils;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.utilities.BackgroundUtils;
import io.intercom.android.sdk.utilities.BlockUtils;
import io.intercom.android.sdk.utilities.FontUtils;
import io.intercom.android.sdk.views.ButtonSelector;

class Button
  implements ButtonBlock, FacebookBlock, TwitterBlock
{
  private static final int FACEBOOK_LOGO_PADDING_LEFT_DP = 20;
  private static final int TWITTER_LOGO_PADDING_LEFT_DP = 16;
  private final Provider<AppConfig> appConfigProvider;
  private final ButtonClickListener buttonClickListener;
  private final StyleType style;
  
  public Button(StyleType paramStyleType, Provider<AppConfig> paramProvider, ButtonClickListener paramButtonClickListener)
  {
    this.style = paramStyleType;
    this.appConfigProvider = paramProvider;
    this.buttonClickListener = paramButtonClickListener;
  }
  
  private View createButtonWithLogo(Context paramContext, String paramString, int paramInt1, int paramInt2)
  {
    FrameLayout localFrameLayout = new FrameLayout(paramContext);
    BlockUtils.createLayoutParams(localFrameLayout, -1, ScreenUtils.dpToPx(44.0F, paramContext));
    BlockUtils.setDefaultMarginBottom(localFrameLayout);
    int i = ((AppConfig)this.appConfigProvider.get()).getBaseColor();
    BackgroundUtils.setBackground(localFrameLayout, new ButtonSelector(paramContext, R.drawable.intercom_border, i));
    ((LinearLayout.LayoutParams)localFrameLayout.getLayoutParams()).gravity = 17;
    ImageView localImageView = new ImageView(paramContext);
    BlockUtils.createLayoutParams(localImageView, -2, -1);
    localImageView.setImageResource(paramInt2);
    localImageView.setBackgroundResource(R.color.intercom_full_transparent_full_black);
    localImageView.setPadding(paramInt1, 0, 0, 0);
    ((LinearLayout.LayoutParams)localImageView.getLayoutParams()).gravity = 19;
    TextView localTextView = new TextView(paramContext);
    BlockUtils.createLayoutParams(localTextView, -1, -1);
    localTextView.setText(paramString);
    localTextView.setTextSize(16.0F);
    localTextView.setTextColor(a.c(paramContext, R.color.intercom_white));
    localTextView.setBackgroundResource(R.color.intercom_full_transparent_full_black);
    localTextView.setGravity(17);
    FontUtils.setRobotoMediumTypeface(localTextView);
    localFrameLayout.addView(localImageView);
    localFrameLayout.addView(localTextView);
    return localFrameLayout;
  }
  
  private TextView createDefaultTextView(Context paramContext, String paramString, BlockAlignment paramBlockAlignment)
  {
    int i = ((AppConfig)this.appConfigProvider.get()).getBaseColor();
    paramContext = new ParagraphView(paramContext, this.style, paramBlockAlignment, i);
    paramContext.setTextColor(i);
    paramContext.setPaintFlags(paramContext.getPaintFlags() | 0x8);
    paramContext.setGravity(paramBlockAlignment.getGravity());
    paramContext.setText(paramString);
    return paramContext;
  }
  
  private android.widget.Button createFullWidthButton(Context paramContext, String paramString)
  {
    android.widget.Button localButton = new android.widget.Button(paramContext);
    localButton.setTextSize(16.0F);
    localButton.setTextColor(a.c(paramContext, R.color.intercom_white));
    localButton.setAllCaps(false);
    localButton.setGravity(17);
    localButton.setText(paramString);
    BlockUtils.createLayoutParams(localButton, -1, -2);
    BlockUtils.setDefaultMarginBottom(localButton);
    int i = ((AppConfig)this.appConfigProvider.get()).getBaseColor();
    BackgroundUtils.setBackground(localButton, new ButtonSelector(paramContext, R.drawable.intercom_border, i));
    FontUtils.setRobotoMediumTypeface(localButton);
    return localButton;
  }
  
  private View setButtonDefaults(View paramView, final String paramString, BlockAlignment paramBlockAlignment, boolean paramBoolean)
  {
    if (this.buttonClickListener.shouldHandleClicks()) {
      paramView.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          Button.this.buttonClickListener.onButtonClicked(paramAnonymousView, paramString);
        }
      });
    }
    BlockUtils.setLayoutMarginsAndGravity(paramView, paramBlockAlignment.getGravity(), paramBoolean);
    return paramView;
  }
  
  public View addButton(String paramString1, String paramString2, BlockAlignment paramBlockAlignment, boolean paramBoolean1, boolean paramBoolean2, ViewGroup paramViewGroup)
  {
    paramViewGroup = paramViewGroup.getContext();
    if ((this.style == StyleType.NOTE) || (this.style == StyleType.POST) || (this.style == StyleType.CONTAINER_CARD)) {}
    for (paramString1 = createFullWidthButton(paramViewGroup, paramString1);; paramString1 = createDefaultTextView(paramViewGroup, paramString1, paramBlockAlignment)) {
      return setButtonDefaults(paramString1, paramString2, paramBlockAlignment, paramBoolean2);
    }
  }
  
  public View addFacebookButton(String paramString, BlockAlignment paramBlockAlignment, boolean paramBoolean1, boolean paramBoolean2, ViewGroup paramViewGroup)
  {
    paramViewGroup = paramViewGroup.getContext();
    String str = paramViewGroup.getString(R.string.intercom_facebook_like);
    if ((this.style == StyleType.NOTE) || (this.style == StyleType.POST) || (this.style == StyleType.CONTAINER_CARD)) {}
    for (paramViewGroup = createButtonWithLogo(paramViewGroup, str, ScreenUtils.dpToPx(20.0F, paramViewGroup), R.drawable.intercom_icn_fb);; paramViewGroup = createDefaultTextView(paramViewGroup, str, paramBlockAlignment)) {
      return setButtonDefaults(paramViewGroup, paramString, paramBlockAlignment, paramBoolean2);
    }
  }
  
  public View addTwitterButton(String paramString, BlockAlignment paramBlockAlignment, boolean paramBoolean1, boolean paramBoolean2, ViewGroup paramViewGroup)
  {
    paramViewGroup = paramViewGroup.getContext();
    String str = paramViewGroup.getString(R.string.intercom_twitter_follow);
    if ((this.style == StyleType.NOTE) || (this.style == StyleType.POST) || (this.style == StyleType.CONTAINER_CARD)) {}
    for (paramViewGroup = createButtonWithLogo(paramViewGroup, str, ScreenUtils.dpToPx(16.0F, paramViewGroup), R.drawable.intercom_icn_twitter);; paramViewGroup = createDefaultTextView(paramViewGroup, str, paramBlockAlignment)) {
      return setButtonDefaults(paramViewGroup, paramString, paramBlockAlignment, paramBoolean2);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/blocks/Button.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */