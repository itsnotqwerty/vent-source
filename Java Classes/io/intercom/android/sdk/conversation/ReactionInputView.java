package io.intercom.android.sdk.conversation;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.os.Vibrator;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewPropertyAnimator;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import io.intercom.a.a.a.j;
import io.intercom.android.sdk.R.dimen;
import io.intercom.android.sdk.commons.utilities.DeviceUtils;
import io.intercom.android.sdk.commons.utilities.ScreenUtils;
import io.intercom.android.sdk.imageloader.LongTermImageLoader;
import io.intercom.android.sdk.imageloader.LongTermImageLoader.OnImageReadyListener;
import io.intercom.android.sdk.logger.LumberMill;
import io.intercom.android.sdk.models.Reaction;
import io.intercom.android.sdk.models.ReactionReply;
import io.intercom.android.sdk.twig.Twig;
import io.intercom.android.sdk.utilities.ColorUtils;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ReactionInputView
  extends LinearLayout
{
  private static final float REACTION_SCALE = 2.5F;
  private static final int VIBRATION_DURATION_MS = 10;
  private final ColorFilter deselectedFilter;
  Integer highlightedViewIndex = null;
  private ReactionListener listener;
  private final LongTermImageLoader longTermImageLoader;
  private ReactionReply reactionReply;
  private final List<ImageView> reactionViews = new ArrayList();
  int reactionsLoaded = 0;
  private final View.OnTouchListener touchListener = new View.OnTouchListener()
  {
    private final Rect touchRect = new Rect();
    
    private void handleTouchMove(MotionEvent paramAnonymousMotionEvent)
    {
      ReactionInputView.this.getHitRect(this.touchRect);
      if (this.touchRect.contains((int)paramAnonymousMotionEvent.getX(), (int)paramAnonymousMotionEvent.getY()))
      {
        int i = 0;
        if (i < ReactionInputView.this.getChildCount())
        {
          ReactionInputView.this.getChildAt(i).getHitRect(this.touchRect);
          if (this.touchRect.contains((int)paramAnonymousMotionEvent.getX(), (int)paramAnonymousMotionEvent.getY()))
          {
            if ((ReactionInputView.this.highlightedViewIndex == null) || (ReactionInputView.this.highlightedViewIndex.intValue() != i))
            {
              ReactionInputView.this.vibrateForSelection();
              ReactionInputView.this.selectViewAtIndex(2.5F, i);
            }
            if (ReactionInputView.this.highlightedViewIndex != null) {
              break label179;
            }
            Integer localInteger = ReactionInputView.this.getCurrentSelectedIndex();
            if ((localInteger != null) && (localInteger.intValue() != i)) {
              ReactionInputView.this.deselectViewAtIndex(localInteger.intValue());
            }
          }
          for (;;)
          {
            ReactionInputView.this.highlightedViewIndex = Integer.valueOf(i);
            i += 1;
            break;
            label179:
            if (ReactionInputView.this.highlightedViewIndex.intValue() != i) {
              ReactionInputView.this.deselectViewAtIndex(ReactionInputView.this.highlightedViewIndex.intValue());
            }
          }
        }
      }
      else
      {
        if (ReactionInputView.this.highlightedViewIndex != null) {
          ReactionInputView.this.highlightSelectedReaction();
        }
        ReactionInputView.this.highlightedViewIndex = null;
      }
    }
    
    public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
    {
      switch (paramAnonymousMotionEvent.getActionMasked())
      {
      }
      for (;;)
      {
        return true;
        handleTouchMove(paramAnonymousMotionEvent);
        continue;
        ReactionInputView.this.handleTouchUp();
      }
    }
  };
  private final Twig twig = LumberMill.getLogger();
  private final Vibrator vibrator;
  
  public ReactionInputView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public ReactionInputView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setVisibility(8);
    if (isInEditMode()) {
      this.longTermImageLoader = null;
    }
    for (this.vibrator = null;; this.vibrator = ((Vibrator)paramContext.getSystemService("vibrator")))
    {
      this.deselectedFilter = ColorUtils.newGreyscaleFilter();
      return;
      this.longTermImageLoader = LongTermImageLoader.newInstance(paramContext);
    }
  }
  
  void deselectViewAtIndex(int paramInt)
  {
    ImageView localImageView = (ImageView)this.reactionViews.get(paramInt);
    localImageView.animate().setInterpolator(new OvershootInterpolator(0.6F)).scaleX(1.0F).scaleY(1.0F).setDuration(200L).start();
    localImageView.setColorFilter(this.deselectedFilter);
  }
  
  Integer getCurrentSelectedIndex()
  {
    int i = 0;
    while (i < getChildCount())
    {
      Integer localInteger = this.reactionReply.getReactionIndex();
      Reaction localReaction = (Reaction)this.reactionReply.getReactionSet().get(i);
      if ((localInteger == null) || (localInteger.equals(Integer.valueOf(localReaction.getIndex())))) {
        return Integer.valueOf(i);
      }
      i += 1;
    }
    return null;
  }
  
  void handleTouchUp()
  {
    if ((this.highlightedViewIndex != null) && (this.highlightedViewIndex.intValue() >= 0) && (this.highlightedViewIndex.intValue() < this.reactionReply.getReactionSet().size()))
    {
      Reaction localReaction = (Reaction)this.reactionReply.getReactionSet().get(this.highlightedViewIndex.intValue());
      if ((localReaction != null) && ((this.reactionReply.getReactionIndex() == null) || (localReaction.getIndex() != this.reactionReply.getReactionIndex().intValue())))
      {
        this.reactionReply.setReactionIndex(localReaction.getIndex());
        if (this.listener != null) {
          this.listener.onReactionSelected(localReaction);
        }
      }
    }
    highlightSelectedReaction();
    this.highlightedViewIndex = null;
  }
  
  void highlightSelectedReaction()
  {
    int i = 0;
    if (i < getChildCount())
    {
      Integer localInteger = this.reactionReply.getReactionIndex();
      Reaction localReaction = (Reaction)this.reactionReply.getReactionSet().get(i);
      if ((localInteger == null) || (localInteger.equals(Integer.valueOf(localReaction.getIndex())))) {
        selectViewAtIndex(1.0F, i);
      }
      for (;;)
      {
        i += 1;
        break;
        deselectViewAtIndex(i);
      }
    }
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    setOnTouchListener(this.touchListener);
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    setOnTouchListener(null);
    if (!isInEditMode()) {}
    try
    {
      this.longTermImageLoader.close();
      return;
    }
    catch (IOException localIOException)
    {
      this.twig.d("Couldn't close LongTermImageLoader: " + localIOException.getMessage(), new Object[0]);
    }
  }
  
  public void preloadReactionImages(ReactionReply paramReactionReply, j paramj)
  {
    paramReactionReply = paramReactionReply.getReactionSet().iterator();
    while (paramReactionReply.hasNext())
    {
      Reaction localReaction = (Reaction)paramReactionReply.next();
      this.longTermImageLoader.loadImage(localReaction.getImageUrl(), null, paramj);
    }
  }
  
  void selectViewAtIndex(float paramFloat, int paramInt)
  {
    ImageView localImageView = (ImageView)this.reactionViews.get(paramInt);
    localImageView.animate().setInterpolator(new OvershootInterpolator(2.0F)).scaleX(paramFloat).scaleY(paramFloat).setDuration(200L).start();
    localImageView.clearColorFilter();
  }
  
  public void setUpReactions(ReactionReply paramReactionReply, final boolean paramBoolean, ReactionListener paramReactionListener, j paramj)
  {
    final Context localContext = getContext();
    this.reactionReply = paramReactionReply;
    this.listener = paramReactionListener;
    paramReactionListener = paramReactionReply.getReactionSet();
    final int j = paramReactionListener.size();
    int i = 0;
    while (i < paramReactionListener.size())
    {
      FrameLayout localFrameLayout = new FrameLayout(localContext);
      localFrameLayout.setClipChildren(false);
      localFrameLayout.setClipToPadding(false);
      localFrameLayout.setLayoutParams(new LinearLayout.LayoutParams(0, -1, 1.0F));
      final Object localObject = new ImageView(localContext);
      int k = getResources().getDimensionPixelSize(R.dimen.intercom_reaction_size);
      ((ImageView)localObject).setLayoutParams(new FrameLayout.LayoutParams(k, k, 17));
      ((ImageView)localObject).setPivotY(getResources().getDimensionPixelSize(R.dimen.intercom_reaction_offset));
      ((ImageView)localObject).setPivotX(k / 2);
      this.reactionViews.add(localObject);
      localFrameLayout.addView((View)localObject);
      Reaction localReaction = (Reaction)paramReactionListener.get(i);
      this.longTermImageLoader.loadImage(localReaction.getImageUrl(), new LongTermImageLoader.OnImageReadyListener()
      {
        public void onImageReady(Bitmap paramAnonymousBitmap)
        {
          localObject.setImageBitmap(paramAnonymousBitmap);
          paramAnonymousBitmap = ReactionInputView.this;
          paramAnonymousBitmap.reactionsLoaded += 1;
          if (ReactionInputView.this.reactionsLoaded == j)
          {
            if (paramBoolean)
            {
              ReactionInputView.this.setVisibility(0);
              ReactionInputView.this.setY(ReactionInputView.this.getHeight() + ScreenUtils.dpToPx(60.0F, localContext));
              ReactionInputView.this.animate().setInterpolator(new OvershootInterpolator(0.6F)).translationY(0.0F).setDuration(300L).start();
            }
          }
          else {
            return;
          }
          ReactionInputView.this.setVisibility(0);
        }
      }, paramj);
      localObject = paramReactionReply.getReactionIndex();
      if ((localObject != null) && (!((Integer)localObject).equals(Integer.valueOf(localReaction.getIndex())))) {
        deselectViewAtIndex(i);
      }
      addView(localFrameLayout);
      i += 1;
    }
  }
  
  @SuppressLint({"MissingPermission"})
  void vibrateForSelection()
  {
    if (DeviceUtils.hasPermission(getContext(), "android.permission.VIBRATE")) {
      this.vibrator.vibrate(10L);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/conversation/ReactionInputView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */