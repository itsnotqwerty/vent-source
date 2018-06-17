package io.intercom.android.sdk.blocks;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources.Theme;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build.VERSION;
import android.support.v4.app.b;
import android.support.v4.content.a;
import android.text.TextUtils.TruncateAt;
import android.util.TypedValue;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.TextView;
import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.R.drawable;
import io.intercom.android.sdk.activities.IntercomArticleActivity;
import io.intercom.android.sdk.activities.IntercomHelpCenterActivity;
import io.intercom.android.sdk.api.Api;
import io.intercom.android.sdk.blocks.blockInterfaces.LinkListBlock;
import io.intercom.android.sdk.blocks.models.Link;
import io.intercom.android.sdk.blocks.models.LinkList;
import io.intercom.android.sdk.commons.utilities.ScreenUtils;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.utilities.BackgroundUtils;
import io.intercom.android.sdk.utilities.LinkOpener;
import java.util.Iterator;
import java.util.List;

class LinkListRenderer
  implements LinkListBlock
{
  private final Api api;
  private final Provider<AppConfig> appConfigProvider;
  private final String conversationId;
  
  LinkListRenderer(Api paramApi, Provider<AppConfig> paramProvider, String paramString)
  {
    this.api = paramApi;
    this.appConfigProvider = paramProvider;
    this.conversationId = paramString;
  }
  
  private void addLinkToLayout(final LinearLayout paramLinearLayout, final Link paramLink, int paramInt, final Context paramContext, boolean paramBoolean)
  {
    FrameLayout localFrameLayout = new FrameLayout(paramContext);
    localFrameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -2));
    TextView localTextView = new TextView(paramContext);
    Object localObject = new FrameLayout.LayoutParams(-2, -1);
    if (paramBoolean) {
      ((FrameLayout.LayoutParams)localObject).gravity = 17;
    }
    localTextView.setLayoutParams((ViewGroup.LayoutParams)localObject);
    localTextView.setTextColor(paramInt);
    localTextView.setTextSize(16.0F);
    localTextView.setText(paramLink.getTitle());
    localTextView.setMaxLines(2);
    localTextView.setEllipsize(TextUtils.TruncateAt.END);
    localTextView.setPadding(ScreenUtils.dpToPx(24.0F, paramContext), ScreenUtils.dpToPx(16.0F, paramContext), ScreenUtils.dpToPx(16.0F, paramContext), ScreenUtils.dpToPx(16.0F, paramContext));
    if ("educate.help_center".equals(paramLink.getLinkType()))
    {
      localObject = a.a(paramContext, R.drawable.intercom_open_help_center);
      ((Drawable)localObject).setColorFilter(paramInt, PorterDuff.Mode.SRC_IN);
      localTextView.setCompoundDrawablesWithIntrinsicBounds((Drawable)localObject, null, null, null);
      localTextView.setCompoundDrawablePadding(ScreenUtils.dpToPx(8.0F, paramContext));
    }
    localFrameLayout.addView(localTextView);
    localFrameLayout.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        Intent localIntent;
        if ((("educate.article".equals(paramLink.getLinkType())) || ("educate.suggestion".equals(paramLink.getLinkType()))) && ((paramContext instanceof Activity)))
        {
          paramAnonymousView = (Activity)paramContext;
          localIntent = IntercomArticleActivity.buildIntent(paramAnonymousView, paramLink.getArticleId(), LinkListRenderer.this.conversationId);
          if (Build.VERSION.SDK_INT >= 16)
          {
            paramAnonymousView.startActivity(localIntent, b.a(paramAnonymousView, paramLinearLayout, "link_background").toBundle());
            return;
          }
          paramAnonymousView.startActivity(localIntent);
          return;
        }
        if (("educate.help_center".equals(paramLink.getLinkType())) && ((paramContext instanceof Activity)))
        {
          paramAnonymousView = (Activity)paramContext;
          localIntent = IntercomHelpCenterActivity.buildIntent(paramAnonymousView, paramLink.getUrl(), 0, LinkListRenderer.this.conversationId);
          if (Build.VERSION.SDK_INT >= 16)
          {
            paramAnonymousView.startActivity(localIntent, b.a(paramAnonymousView, paramLinearLayout, "link_background").toBundle());
            return;
          }
          paramAnonymousView.startActivity(localIntent);
          return;
        }
        LinkOpener.handleUrl(paramLink.getUrl(), paramContext, LinkListRenderer.this.api);
      }
    });
    paramLink = new TypedValue();
    paramContext.getTheme().resolveAttribute(16843534, paramLink, true);
    localFrameLayout.setBackgroundResource(paramLink.resourceId);
    paramLinearLayout.addView(localFrameLayout);
  }
  
  public View addLinkListBlock(LinkList paramLinkList, boolean paramBoolean1, boolean paramBoolean2, ViewGroup paramViewGroup)
  {
    paramViewGroup = paramViewGroup.getContext();
    LinearLayout localLinearLayout = new LinearLayout(paramViewGroup);
    Object localObject = new GradientDrawable();
    ((GradientDrawable)localObject).setColor(-1);
    ((GradientDrawable)localObject).setStroke(1, ((AppConfig)this.appConfigProvider.get()).getBaseColor());
    ((GradientDrawable)localObject).setCornerRadius(ScreenUtils.dpToPx(8.0F, paramViewGroup));
    BackgroundUtils.setBackground(localLinearLayout, (Drawable)localObject);
    int i = ((AppConfig)this.appConfigProvider.get()).getBaseColor();
    localLinearLayout.setShowDividers(2);
    localLinearLayout.setDividerDrawable(new ColorDrawable(i));
    localLinearLayout.setOrientation(1);
    localObject = paramLinkList.getLinks().iterator();
    while (((Iterator)localObject).hasNext()) {
      addLinkToLayout(localLinearLayout, (Link)((Iterator)localObject).next(), i, paramViewGroup, false);
    }
    paramLinkList = paramLinkList.getFooterLink();
    if (!paramLinkList.getText().isEmpty()) {
      addLinkToLayout(localLinearLayout, paramLinkList, i, paramViewGroup, true);
    }
    return localLinearLayout;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/blocks/LinkListRenderer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */