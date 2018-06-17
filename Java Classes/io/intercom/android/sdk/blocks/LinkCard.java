package io.intercom.android.sdk.blocks;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.support.v4.app.b;
import android.support.v4.content.a;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.StyleSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import io.intercom.a.a.a.j;
import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.R.dimen;
import io.intercom.android.sdk.R.drawable;
import io.intercom.android.sdk.R.id;
import io.intercom.android.sdk.R.layout;
import io.intercom.android.sdk.activities.IntercomArticleActivity;
import io.intercom.android.sdk.blocks.blockInterfaces.LinkBlock;
import io.intercom.android.sdk.blocks.models.Author;
import io.intercom.android.sdk.blocks.models.Link;
import io.intercom.android.sdk.blocks.views.ParagraphView;
import io.intercom.android.sdk.commons.utilities.HtmlCompat;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.models.Avatar;
import io.intercom.android.sdk.utilities.AvatarUtils;
import io.intercom.android.sdk.utilities.BackgroundUtils;
import io.intercom.android.sdk.utilities.BlockUtils;

class LinkCard
  implements LinkBlock
{
  private final Provider<AppConfig> appConfigProvider;
  private final String conversationId;
  private final j requestManager;
  private final StyleType style;
  
  LinkCard(StyleType paramStyleType, Provider<AppConfig> paramProvider, String paramString, j paramj)
  {
    this.style = paramStyleType;
    this.appConfigProvider = paramProvider;
    this.conversationId = paramString;
    this.requestManager = paramj;
  }
  
  @SuppressLint({"SetTextI18n"})
  private void addAuthorDetails(Link paramLink, ImageView paramImageView, TextView paramTextView, String paramString)
  {
    paramImageView.setVisibility(0);
    paramTextView.setVisibility(0);
    SpannableString localSpannableString = new SpannableString(paramString);
    localSpannableString.setSpan(new StyleSpan(1), 0, paramString.length(), 33);
    paramTextView.setText("Written by " + localSpannableString);
    int i = paramImageView.getResources().getDimensionPixelSize(R.dimen.intercom_avatar_size);
    AvatarUtils.createAvatar(Avatar.create(paramLink.getAuthor().getAvatar(), ""), paramImageView, i, (AppConfig)this.appConfigProvider.get(), this.requestManager);
  }
  
  private View createLinkBlock(final Link paramLink, final ViewGroup paramViewGroup, boolean paramBoolean1, boolean paramBoolean2)
  {
    int i = ((AppConfig)this.appConfigProvider.get()).getBaseColor();
    final Context localContext = paramViewGroup.getContext();
    paramViewGroup = (LinearLayout)LayoutInflater.from(localContext).inflate(R.layout.intercom_link_block, paramViewGroup, false);
    Object localObject = (TextView)paramViewGroup.findViewById(R.id.title);
    ((TextView)localObject).setTextColor(i);
    ((TextView)localObject).setText(paramLink.getTitle());
    setUpDescription(paramLink, (TextView)paramViewGroup.findViewById(R.id.description));
    localObject = (ImageView)paramViewGroup.findViewById(R.id.avatar);
    TextView localTextView = (TextView)paramViewGroup.findViewById(R.id.author);
    String str = paramLink.getAuthor().getFirstName();
    if (TextUtils.isEmpty(str))
    {
      ((ImageView)localObject).setVisibility(8);
      localTextView.setVisibility(8);
    }
    for (;;)
    {
      if (!paramBoolean1)
      {
        if ("educate.article".equals(paramLink.getLinkType())) {
          paramViewGroup.setOnClickListener(new View.OnClickListener()
          {
            public void onClick(View paramAnonymousView)
            {
              Intent localIntent;
              if ((localContext instanceof Activity))
              {
                paramAnonymousView = (Activity)localContext;
                localIntent = IntercomArticleActivity.buildIntent(paramAnonymousView, paramLink.getArticleId(), LinkCard.this.conversationId);
                if (Build.VERSION.SDK_INT >= 16) {
                  paramAnonymousView.startActivity(localIntent, b.a(paramAnonymousView, paramViewGroup, "link_background").toBundle());
                }
              }
              else
              {
                return;
              }
              paramAnonymousView.startActivity(localIntent);
            }
          });
        }
        BackgroundUtils.setBackground(paramViewGroup, a.a(localContext, R.drawable.intercom_conversation_card_background));
        BlockUtils.setMarginBottom(paramViewGroup, 8);
        i = localContext.getResources().getDimensionPixelSize(R.dimen.intercom_link_padding);
        paramViewGroup.setPadding(i, i, i, i);
        BlockUtils.setLayoutMarginsAndGravity(paramViewGroup, 3, paramBoolean2);
      }
      return paramViewGroup;
      addAuthorDetails(paramLink, (ImageView)localObject, localTextView, str);
    }
  }
  
  private boolean isOnlyBlock(boolean paramBoolean1, boolean paramBoolean2)
  {
    return (paramBoolean1) && (paramBoolean2);
  }
  
  private void setUpDescription(Link paramLink, TextView paramTextView)
  {
    paramLink = paramLink.getDescription();
    if (TextUtils.isEmpty(paramLink))
    {
      paramTextView.setVisibility(8);
      return;
    }
    paramTextView.setVisibility(0);
    paramTextView.setText(paramLink);
  }
  
  private boolean shouldDisplayLink()
  {
    return (StyleType.ADMIN.equals(this.style)) || (StyleType.CHAT_FULL.equals(this.style));
  }
  
  public View addLinkBlock(Link paramLink, boolean paramBoolean1, boolean paramBoolean2, ViewGroup paramViewGroup)
  {
    paramBoolean1 = isOnlyBlock(paramBoolean1, paramBoolean2);
    if (shouldDisplayLink()) {
      return createLinkBlock(paramLink, paramViewGroup, paramBoolean1, paramBoolean2);
    }
    int i = ((AppConfig)this.appConfigProvider.get()).getBaseColor();
    paramViewGroup = new ParagraphView(paramViewGroup.getContext(), StyleType.ADMIN, BlockAlignment.LEFT, i);
    paramViewGroup.setText(HtmlCompat.fromHtml(paramLink.getText()));
    return paramViewGroup;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/blocks/LinkCard.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */