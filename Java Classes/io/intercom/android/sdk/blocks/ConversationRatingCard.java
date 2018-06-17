package io.intercom.android.sdk.blocks;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.support.v7.app.c;
import android.support.v7.app.c.a;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.view.animation.OvershootInterpolator;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import io.intercom.a.a.a.j;
import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.R.dimen;
import io.intercom.android.sdk.R.drawable;
import io.intercom.android.sdk.R.id;
import io.intercom.android.sdk.R.layout;
import io.intercom.android.sdk.R.string;
import io.intercom.android.sdk.api.Api;
import io.intercom.android.sdk.blocks.blockInterfaces.ConversationRatingBlock;
import io.intercom.android.sdk.blocks.models.ConversationRating;
import io.intercom.android.sdk.blocks.models.ConversationRatingOption;
import io.intercom.android.sdk.commons.utilities.ScreenUtils;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.imageloader.LongTermImageLoader;
import io.intercom.android.sdk.imageloader.LongTermImageLoader.OnImageReadyListener;
import io.intercom.android.sdk.utilities.BackgroundUtils;
import io.intercom.android.sdk.utilities.ColorUtils;
import io.intercom.android.sdk.utilities.FontUtils;
import io.intercom.android.sdk.views.ButtonSelector;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ConversationRatingCard
  implements ConversationRatingBlock
{
  private static final long ANIMATION_DURATION_MS = 200L;
  private static final float DESELECTED_RATING_SCALE = 1.0F;
  private static final float DIALOG_HORIZONTAL_MARGIN = 16.0F;
  private static final float RATING_HORIZONTAL_PADDING = 17.0F;
  private static final float RATING_VERTICAL_PADDING = 14.0F;
  private static final float SELECTED_RATING_SCALE = 1.2F;
  private final Api api;
  private final Provider<AppConfig> appConfigProvider;
  private final String conversationId;
  private ConversationRating conversationRating;
  private final ColorFilter deselectedFilter;
  private LongTermImageLoader longTermImageLoader;
  private final View.OnClickListener ratingClickListener = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      int i = ConversationRatingCard.this.ratingViews.indexOf(paramAnonymousView);
      if ((i == -1) || (ConversationRatingCard.this.ratingViews.size() != ConversationRatingCard.this.conversationRating.getOptions().size())) {
        return;
      }
      ConversationRatingCard.this.rateConversation(ConversationRatingCard.this.conversationRating, (ConversationRatingOption)ConversationRatingCard.this.conversationRating.getOptions().get(i));
      ConversationRatingCard.this.updateSelectedRating();
    }
  };
  private final List<ImageView> ratingViews;
  private final j requestManager;
  private LinearLayout rootLayout;
  
  ConversationRatingCard(Api paramApi, String paramString, Provider<AppConfig> paramProvider, j paramj)
  {
    this.api = paramApi;
    this.conversationId = paramString;
    this.appConfigProvider = paramProvider;
    this.requestManager = paramj;
    this.ratingViews = new ArrayList();
    this.deselectedFilter = ColorUtils.newGreyscaleFilter();
  }
  
  private View createConversationRatingBlock(ConversationRating paramConversationRating, ViewGroup paramViewGroup)
  {
    Context localContext = paramViewGroup.getContext();
    this.ratingViews.clear();
    this.conversationRating = paramConversationRating;
    this.longTermImageLoader = LongTermImageLoader.newInstance(localContext);
    this.rootLayout = ((LinearLayout)LayoutInflater.from(localContext).inflate(R.layout.intercom_conversation_rating_block, paramViewGroup, false));
    updateViewVisibility();
    paramConversationRating = (Button)this.rootLayout.findViewById(R.id.intercom_rating_tell_us_more_button);
    int i = ((AppConfig)this.appConfigProvider.get()).getBaseColor();
    BackgroundUtils.setBackground(paramConversationRating, new ButtonSelector(localContext, R.drawable.intercom_border, i));
    FontUtils.setRobotoMediumTypeface(paramConversationRating);
    paramConversationRating.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        ConversationRatingCard.this.showRemarkDialog(paramAnonymousView.getContext());
      }
    });
    setupRatingsLayout();
    updateSelectedRating();
    return this.rootLayout;
  }
  
  private void deselectView(ImageView paramImageView)
  {
    paramImageView.animate().setInterpolator(new OvershootInterpolator(0.6F)).scaleX(1.0F).scaleY(1.0F).setDuration(200L).start();
    paramImageView.setColorFilter(this.deselectedFilter);
  }
  
  private ConversationRatingOption findSelectedOption()
  {
    Iterator localIterator = this.conversationRating.getOptions().iterator();
    while (localIterator.hasNext())
    {
      ConversationRatingOption localConversationRatingOption = (ConversationRatingOption)localIterator.next();
      if (localConversationRatingOption.getIndex().equals(this.conversationRating.getRatingIndex())) {
        return localConversationRatingOption;
      }
    }
    return null;
  }
  
  private static String imageUrlForUnicode(String paramString)
  {
    return "https://js.intercomcdn.com/images/stickers/" + paramString + ".png";
  }
  
  private void selectView(float paramFloat, ImageView paramImageView)
  {
    paramImageView.animate().setInterpolator(new OvershootInterpolator(2.0F)).scaleX(paramFloat).scaleY(paramFloat).setDuration(200L).start();
    paramImageView.clearColorFilter();
  }
  
  private void setupRatingsLayout()
  {
    LinearLayout localLinearLayout = (LinearLayout)this.rootLayout.findViewById(R.id.intercom_rating_options_layout);
    Context localContext = this.rootLayout.getContext();
    int j = ScreenUtils.dpToPx(14.0F, localContext);
    int k = ScreenUtils.dpToPx(17.0F, localContext);
    int i = 0;
    while (i < this.conversationRating.getOptions().size())
    {
      Object localObject = (ConversationRatingOption)this.conversationRating.getOptions().get(i);
      FrameLayout localFrameLayout = new FrameLayout(localContext);
      localFrameLayout.setClipChildren(false);
      localFrameLayout.setClipToPadding(false);
      localFrameLayout.setLayoutParams(new LinearLayout.LayoutParams(0, -1, 1.0F));
      final ImageView localImageView = new ImageView(localContext);
      int m = localContext.getResources().getDimensionPixelSize(R.dimen.intercom_conversation_rating_size);
      FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(m, m, 17);
      localLayoutParams.setMargins(k, j, k, j);
      localImageView.setLayoutParams(localLayoutParams);
      localImageView.setLongClickable(false);
      localObject = imageUrlForUnicode(((ConversationRatingOption)localObject).getUnicode());
      this.longTermImageLoader.loadImage((String)localObject, new LongTermImageLoader.OnImageReadyListener()
      {
        public void onImageReady(Bitmap paramAnonymousBitmap)
        {
          localImageView.setImageBitmap(paramAnonymousBitmap);
        }
      }, this.requestManager);
      localImageView.setOnClickListener(this.ratingClickListener);
      localFrameLayout.addView(localImageView);
      localLinearLayout.addView(localFrameLayout);
      this.ratingViews.add(localImageView);
      i += 1;
    }
  }
  
  private void showRemarkDialog(final Context paramContext)
  {
    final Object localObject = new c.a(paramContext);
    ((c.a)localObject).setTitle(R.string.intercom_tell_us_more);
    LinearLayout localLinearLayout = new LinearLayout(paramContext);
    localLinearLayout.setOrientation(1);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -2);
    int i = ScreenUtils.dpToPx(16.0F, paramContext);
    localLayoutParams.setMargins(i, 0, i, 0);
    paramContext = new EditText(paramContext);
    paramContext.getBackground().mutate().setColorFilter(((AppConfig)this.appConfigProvider.get()).getBaseColor(), PorterDuff.Mode.SRC_ATOP);
    paramContext.setLayoutParams(localLayoutParams);
    localLinearLayout.addView(paramContext);
    ((c.a)localObject).setView(localLinearLayout);
    ((c.a)localObject).setPositiveButton(17039370, new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramAnonymousDialogInterface = paramContext.getText().toString();
        ConversationRatingCard.this.addRemarkToConversation(ConversationRatingCard.this.conversationRating, paramAnonymousDialogInterface);
      }
    });
    ((c.a)localObject).setNegativeButton(17039360, new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramAnonymousDialogInterface.cancel();
      }
    });
    localObject = ((c.a)localObject).create();
    ((c)localObject).show();
    paramContext.setOnFocusChangeListener(new View.OnFocusChangeListener()
    {
      public void onFocusChange(View paramAnonymousView, boolean paramAnonymousBoolean)
      {
        if ((paramAnonymousBoolean) && (localObject.getWindow() != null)) {
          localObject.getWindow().setSoftInputMode(5);
        }
      }
    });
    ((c)localObject).getButton(-1).setTextColor(((AppConfig)this.appConfigProvider.get()).getBaseColor());
    ((c)localObject).getButton(-2).setTextColor(((AppConfig)this.appConfigProvider.get()).getBaseColor());
  }
  
  private void updateSelectedRating()
  {
    if (this.conversationRating.getOptions().size() != this.ratingViews.size()) {
      return;
    }
    int i = 0;
    label27:
    ConversationRatingOption localConversationRatingOption;
    ImageView localImageView;
    if (i < this.conversationRating.getOptions().size())
    {
      localConversationRatingOption = (ConversationRatingOption)this.conversationRating.getOptions().get(i);
      localImageView = (ImageView)this.ratingViews.get(i);
      if (this.conversationRating.getRatingIndex().intValue() != -1) {
        break label101;
      }
      selectView(1.0F, localImageView);
    }
    for (;;)
    {
      i += 1;
      break label27;
      break;
      label101:
      if (this.conversationRating.getRatingIndex().equals(localConversationRatingOption.getIndex())) {
        selectView(1.2F, localImageView);
      } else {
        deselectView(localImageView);
      }
    }
  }
  
  private void updateViewVisibility()
  {
    int m = 0;
    if (this.rootLayout == null) {
      return;
    }
    int j;
    label27:
    label42:
    final Object localObject1;
    int k;
    if (this.conversationRating.getRatingIndex().intValue() != -1)
    {
      j = 1;
      if (TextUtils.isEmpty(this.conversationRating.getRemark())) {
        break label223;
      }
      i = 1;
      localObject1 = (TextView)this.rootLayout.findViewById(R.id.rate_your_conversation_text_view);
      if (i == 0) {
        break label228;
      }
      k = 8;
      label64:
      ((TextView)localObject1).setVisibility(k);
      localObject1 = (LinearLayout)this.rootLayout.findViewById(R.id.intercom_rating_options_layout);
      if (i == 0) {
        break label233;
      }
      k = 8;
      label92:
      ((LinearLayout)localObject1).setVisibility(k);
      localObject1 = (Button)this.rootLayout.findViewById(R.id.intercom_rating_tell_us_more_button);
      if ((j != 0) && (i == 0)) {
        break label238;
      }
      j = 8;
      label124:
      ((Button)localObject1).setVisibility(j);
      localObject1 = (LinearLayout)this.rootLayout.findViewById(R.id.intercom_you_rated_layout);
      if (i == 0) {
        break label243;
      }
    }
    label223:
    label228:
    label233:
    label238:
    label243:
    for (int i = m;; i = 8)
    {
      ((LinearLayout)localObject1).setVisibility(i);
      Object localObject2 = findSelectedOption();
      if (localObject2 == null) {
        break;
      }
      localObject1 = (ImageView)this.rootLayout.findViewById(R.id.intercom_you_rated_image_view);
      localObject2 = imageUrlForUnicode(((ConversationRatingOption)localObject2).getUnicode());
      this.longTermImageLoader.loadImage((String)localObject2, new LongTermImageLoader.OnImageReadyListener()
      {
        public void onImageReady(Bitmap paramAnonymousBitmap)
        {
          localObject1.setImageBitmap(paramAnonymousBitmap);
        }
      }, this.requestManager);
      return;
      j = 0;
      break label27;
      i = 0;
      break label42;
      k = 0;
      break label64;
      k = 0;
      break label92;
      j = 0;
      break label124;
    }
  }
  
  public View addConversationRatingBlock(ConversationRating paramConversationRating, boolean paramBoolean1, boolean paramBoolean2, ViewGroup paramViewGroup)
  {
    return createConversationRatingBlock(paramConversationRating, paramViewGroup);
  }
  
  void addRemarkToConversation(ConversationRating paramConversationRating, String paramString)
  {
    if (!TextUtils.isEmpty(paramConversationRating.getRemark())) {
      return;
    }
    paramConversationRating.setRemark(paramString);
    this.api.addConversationRatingRemark(this.conversationId, paramString);
    updateViewVisibility();
  }
  
  void rateConversation(ConversationRating paramConversationRating, ConversationRatingOption paramConversationRatingOption)
  {
    if (paramConversationRating.getRatingIndex().intValue() != -1) {
      return;
    }
    paramConversationRating.setRatingIndex(paramConversationRatingOption.getIndex().intValue());
    this.api.rateConversation(this.conversationId, paramConversationRatingOption.getIndex().intValue());
    updateViewVisibility();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/blocks/ConversationRatingCard.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */