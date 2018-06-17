package io.intercom.android.sdk.blocks;

import android.content.Context;
import android.content.res.Resources;
import android.support.v4.content.a;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.R.color;
import io.intercom.android.sdk.R.dimen;
import io.intercom.android.sdk.blocks.blockInterfaces.OrderedListBlock;
import io.intercom.android.sdk.blocks.blockInterfaces.UnorderedListBlock;
import io.intercom.android.sdk.commons.utilities.HtmlCompat;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.spans.OrderedListSpan;
import io.intercom.android.sdk.spans.UnorderedListSpan;
import io.intercom.android.sdk.utilities.BlockUtils;
import io.intercom.android.sdk.utilities.TrackingLinkMovementMethod;
import java.util.List;

class ListBlock
  implements OrderedListBlock, UnorderedListBlock
{
  private static final int LARGE_TEXT_SIZE_SP = 16;
  private static final int SMALL_TEXT_SIZE_SP = 14;
  private final Provider<AppConfig> appConfigProvider;
  private final StyleType style;
  
  ListBlock(StyleType paramStyleType, Provider<AppConfig> paramProvider)
  {
    this.style = paramStyleType;
    this.appConfigProvider = paramProvider;
  }
  
  private TextView getListStyledTextView(Context paramContext)
  {
    TextView localTextView = new TextView(paramContext);
    localTextView.setLinkTextColor(((AppConfig)this.appConfigProvider.get()).getBaseColor());
    BlockUtils.createLayoutParams(localTextView, -2, -2);
    BlockUtils.setMarginLeft(localTextView, 4);
    switch (this.style)
    {
    default: 
      styleAsChatList(localTextView, a.c(paramContext, R.color.intercom_white));
      localTextView.setMovementMethod(new TrackingLinkMovementMethod());
      return localTextView;
    case ???: 
      styleAsChatList(localTextView, a.c(paramContext, R.color.intercom_grey_800));
      localTextView.setMovementMethod(new TrackingLinkMovementMethod());
      return localTextView;
    case ???: 
    case ???: 
      styleAsAnnouncementList(localTextView, a.c(paramContext, R.color.intercom_grey_700));
      localTextView.setMovementMethod(new TrackingLinkMovementMethod());
      return localTextView;
    case ???: 
      styleAsAnnouncementList(localTextView, a.c(paramContext, R.color.intercom_white));
      localTextView.setMovementMethod(new TrackingLinkMovementMethod());
      return localTextView;
    }
    styleAsChatList(localTextView, a.c(paramContext, R.color.intercom_grey_800));
    return localTextView;
  }
  
  private void styleAsAnnouncementList(TextView paramTextView, int paramInt)
  {
    paramTextView.setTextSize(16.0F);
    paramTextView.setTextColor(paramInt);
    BlockUtils.setMarginBottom(paramTextView, 16);
    BlockUtils.setLargeLineSpacing(paramTextView);
  }
  
  private void styleAsChatList(TextView paramTextView, int paramInt)
  {
    paramTextView.setTextSize(14.0F);
    paramTextView.setTextColor(paramInt);
    BlockUtils.setDefaultMarginBottom(paramTextView);
    BlockUtils.setSmallLineSpacing(paramTextView);
  }
  
  public View addOrderedList(List<String> paramList, boolean paramBoolean1, boolean paramBoolean2, ViewGroup paramViewGroup)
  {
    TextView localTextView = getListStyledTextView(paramViewGroup.getContext());
    int j = (int)paramViewGroup.getResources().getDimension(R.dimen.intercom_list_indentation);
    paramViewGroup = "";
    int k = paramList.size();
    int i = 0;
    Object localObject1;
    if (i < k)
    {
      Object localObject2 = (String)paramList.get(i);
      if (((String)localObject2).isEmpty()) {
        break label214;
      }
      if (i < k - 1)
      {
        localObject1 = "<br />";
        label81:
        localObject1 = HtmlCompat.fromHtml((String)localObject2 + (String)localObject1);
        localObject2 = new SpannableString((CharSequence)localObject1);
        ((SpannableString)localObject2).setSpan(new OrderedListSpan(j, i + 1 + "."), 0, ((Spanned)localObject1).length(), 0);
        paramViewGroup = TextUtils.concat(new CharSequence[] { paramViewGroup, localObject2 });
      }
    }
    label214:
    for (;;)
    {
      i += 1;
      break;
      localObject1 = "";
      break label81;
      localTextView.setText(paramViewGroup);
      BlockUtils.setLayoutMarginsAndGravity(localTextView, 3, paramBoolean2);
      return localTextView;
    }
  }
  
  public View addUnorderedList(List<String> paramList, boolean paramBoolean1, boolean paramBoolean2, ViewGroup paramViewGroup)
  {
    Context localContext = paramViewGroup.getContext();
    TextView localTextView = getListStyledTextView(localContext);
    int j = (int)paramViewGroup.getResources().getDimension(R.dimen.intercom_list_indentation);
    paramViewGroup = "";
    int k = paramList.size();
    int i = 0;
    Object localObject1;
    if (i < k)
    {
      Object localObject2 = (String)paramList.get(i);
      if (((String)localObject2).isEmpty()) {
        break label198;
      }
      if (i < k - 1)
      {
        localObject1 = "<br />";
        label85:
        localObject1 = HtmlCompat.fromHtml((String)localObject2 + (String)localObject1);
        localObject2 = new SpannableString((CharSequence)localObject1);
        ((SpannableString)localObject2).setSpan(new UnorderedListSpan(j, localContext), 0, ((Spanned)localObject1).length(), 0);
        paramViewGroup = TextUtils.concat(new CharSequence[] { paramViewGroup, localObject2 });
      }
    }
    label198:
    for (;;)
    {
      i += 1;
      break;
      localObject1 = "";
      break label85;
      localTextView.setText(paramViewGroup);
      BlockUtils.setLayoutMarginsAndGravity(localTextView, 3, paramBoolean2);
      return localTextView;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/blocks/ListBlock.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */