package io.intercom.android.sdk.overlay;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.animation.OvershootInterpolator;
import android.widget.TextView;
import io.intercom.a.a.a.j;
import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.R.dimen;
import io.intercom.android.sdk.R.id;
import io.intercom.android.sdk.R.layout;
import io.intercom.android.sdk.R.string;
import io.intercom.android.sdk.activities.IntercomMessengerActivity;
import io.intercom.android.sdk.commons.utilities.ScreenUtils;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.logger.LumberMill;
import io.intercom.android.sdk.metrics.MetricTracker;
import io.intercom.android.sdk.models.Conversation;
import io.intercom.android.sdk.models.Part;
import io.intercom.android.sdk.models.Part.DeliveryOption;
import io.intercom.android.sdk.twig.Twig;
import io.intercom.android.sdk.utilities.ContextLocaliser;
import io.intercom.android.sdk.utilities.Phrase;
import io.intercom.android.sdk.utilities.SystemSettings;
import io.intercom.android.sdk.utilities.ViewUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

class InAppNotificationPresenter
  implements View.OnClickListener, InAppNotification.Listener
{
  private static final int MAX_DISPLAYED_NOTIFICATIONS = 3;
  private static final int PILL_START_OFFSET_DP = 66;
  private final Provider<AppConfig> appConfigProvider;
  private int bottomPadding = 0;
  private final ContextLocaliser contextLocaliser;
  final Handler handler;
  private boolean hasAnimated = false;
  private final LayoutInflater inflater;
  private final List<Conversation> lastDisplayedConversations = new ArrayList();
  private final Listener listener;
  private final MetricTracker metricTracker;
  private final Map<String, InAppNotification> notifications = new HashMap();
  private float pillPosition;
  private final j requestManager;
  private final Twig twig = LumberMill.getLogger();
  
  public InAppNotificationPresenter(LayoutInflater paramLayoutInflater, Handler paramHandler, Listener paramListener, MetricTracker paramMetricTracker, Provider<AppConfig> paramProvider, ContextLocaliser paramContextLocaliser, j paramj)
  {
    this.inflater = paramLayoutInflater;
    this.listener = paramListener;
    this.handler = paramHandler;
    this.metricTracker = paramMetricTracker;
    this.appConfigProvider = paramProvider;
    this.contextLocaliser = paramContextLocaliser;
    this.requestManager = paramj;
  }
  
  private void addNewNotifications(List<Conversation> paramList, ViewGroup paramViewGroup)
  {
    int j = paramList.size();
    int i = 0;
    if (i < j)
    {
      Object localObject2 = (Conversation)paramList.get(i);
      Object localObject1 = this.contextLocaliser.createLocalisedContext(paramViewGroup.getContext());
      Part localPart = ((Conversation)localObject2).getLastPart();
      if ((j >= 2) || (!"chat".equals(localPart.getMessageStyle())))
      {
        localObject1 = new StackableSnippet((Context)localObject1, (Conversation)localObject2, i, this.handler, paramViewGroup.getHeight(), this, this.appConfigProvider, this.requestManager);
        label98:
        this.notifications.put(((Conversation)localObject2).getId(), localObject1);
        if (i < 3)
        {
          localObject2 = this.inflater;
          if (this.hasAnimated) {
            break label232;
          }
        }
      }
      label232:
      for (boolean bool = true;; bool = false)
      {
        ((InAppNotification)localObject1).display(paramViewGroup, (LayoutInflater)localObject2, bool, this.bottomPadding);
        i += 1;
        break;
        if (localPart.getDeliveryOption() == Part.DeliveryOption.SUMMARY)
        {
          localObject1 = new ChatSnippet((Context)localObject1, (Conversation)localObject2, i, paramViewGroup.getHeight(), this, this.appConfigProvider, this.requestManager);
          break label98;
        }
        localObject1 = new ChatFull((Context)localObject1, (Conversation)localObject2, i, paramViewGroup.getHeight(), this, this.metricTracker, this.appConfigProvider, this.requestManager);
        break label98;
      }
    }
  }
  
  private void animatePill(final View paramView)
  {
    this.handler.postDelayed(new Runnable()
    {
      public void run()
      {
        paramView.setY(InAppNotificationPresenter.this.pillPosition + ScreenUtils.dpToPx(66.0F, paramView.getContext()));
        paramView.animate().setInterpolator(new OvershootInterpolator()).y(InAppNotificationPresenter.this.pillPosition).alpha(1.0F).scaleX(1.0F).scaleY(1.0F).start();
      }
    }, (500.0F * SystemSettings.getTransitionScale(paramView.getContext())));
  }
  
  private void displayPill(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup)
  {
    TextView localTextView2 = (TextView)paramViewGroup.findViewById(R.id.notification_pill);
    if (this.notifications.size() <= 3)
    {
      if (localTextView2 != null) {
        paramViewGroup.removeView(localTextView2);
      }
      return;
    }
    TextView localTextView1 = localTextView2;
    if (localTextView2 == null)
    {
      paramLayoutInflater.inflate(R.layout.intercom_notification_pill, paramViewGroup, true);
      localTextView1 = (TextView)paramViewGroup.findViewById(R.id.notification_pill);
      localTextView1.setAlpha(0.0F);
      localTextView1.setScaleX(0.4F);
      localTextView1.setScaleY(0.4F);
      localTextView1.setY(this.pillPosition);
      localTextView1.setOnClickListener(this);
      animatePill(localTextView1);
    }
    Phrase.from(this.contextLocaliser.createLocalisedContext(localTextView1.getContext()), R.string.intercom_plus_x_more).put("n", this.notifications.size() - 3).into(localTextView1);
  }
  
  private boolean isReply(Conversation paramConversation)
  {
    return (!this.lastDisplayedConversations.isEmpty()) && (paramConversation.getId().equals(((Conversation)this.lastDisplayedConversations.get(0)).getId()));
  }
  
  private void updateNotifications(final List<Conversation> paramList, final Map<String, InAppNotification> paramMap, final ViewGroup paramViewGroup)
  {
    final Conversation localConversation = (Conversation)paramList.get(0);
    Iterator localIterator = paramMap.values().iterator();
    Object localObject = (InAppNotification)localIterator.next();
    InAppNotification localInAppNotification;
    if (localIterator.hasNext())
    {
      localInAppNotification = (InAppNotification)localIterator.next();
      if (localInAppNotification.getPosition() >= ((InAppNotification)localObject).getPosition()) {
        break label229;
      }
      localObject = localInAppNotification;
    }
    label229:
    for (;;)
    {
      break;
      if (isReply(localConversation))
      {
        ((InAppNotification)localObject).update(localConversation, new Runnable()
        {
          public void run()
          {
            InAppNotificationPresenter.this.syncUpdates(paramList, paramMap, paramViewGroup);
          }
        });
        return;
      }
      if ((paramMap.size() == 1) && ((localObject instanceof ChatSnippet)))
      {
        ((InAppNotification)localObject).moveBackward(paramViewGroup, new AnimatorListenerAdapter()
        {
          public void onAnimationEnd(Animator paramAnonymousAnimator)
          {
            InAppNotificationPresenter.this.addNewView(localConversation, paramViewGroup, paramMap);
            InAppNotificationPresenter.this.handler.postDelayed(new Runnable()
            {
              public void run()
              {
                InAppNotificationPresenter.this.syncUpdates(InAppNotificationPresenter.3.this.val$conversations, InAppNotificationPresenter.3.this.val$notifications, InAppNotificationPresenter.3.this.val$root);
              }
            }, 220L);
          }
        });
        return;
      }
      localObject = paramMap.values().iterator();
      while (((Iterator)localObject).hasNext())
      {
        localInAppNotification = (InAppNotification)((Iterator)localObject).next();
        if (localInAppNotification.getPosition() < 3) {
          localInAppNotification.moveBackward(paramViewGroup);
        } else {
          localInAppNotification.setPosition(localInAppNotification.getPosition() + 1);
        }
      }
      addNewView(localConversation, paramViewGroup, paramMap);
      syncUpdates(paramList, paramMap, paramViewGroup);
      return;
    }
  }
  
  private void updatePillPosition(View paramView)
  {
    ObjectAnimator.ofPropertyValuesHolder(paramView, new PropertyValuesHolder[] { PropertyValuesHolder.ofFloat("y", new float[] { paramView.getY(), this.pillPosition }) }).setDuration(300L).start();
  }
  
  void addNewView(Conversation paramConversation, ViewGroup paramViewGroup, Map<String, InAppNotification> paramMap)
  {
    StackableSnippet localStackableSnippet = new StackableSnippet(this.contextLocaliser.createLocalisedContext(paramViewGroup.getContext()), paramConversation, 0, this.handler, paramViewGroup.getHeight(), this, this.appConfigProvider, this.requestManager);
    localStackableSnippet.display(paramViewGroup, this.inflater, true, this.bottomPadding);
    if (paramMap.containsKey(paramConversation.getId())) {
      ((InAppNotification)paramMap.get(paramConversation.getId())).removeView();
    }
    paramMap.put(paramConversation.getId(), localStackableSnippet);
  }
  
  public void displayNotifications(final ViewGroup paramViewGroup, final List<Conversation> paramList)
  {
    ViewUtils.waitForViewAttachment(paramViewGroup, new Runnable()
    {
      public void run()
      {
        InAppNotificationPresenter.this.displayNotificationsAfterAttach(paramList, paramViewGroup);
      }
    });
  }
  
  void displayNotificationsAfterAttach(List<Conversation> paramList, ViewGroup paramViewGroup)
  {
    int i;
    Object localObject;
    if ((!this.lastDisplayedConversations.equals(paramList)) && (!this.notifications.isEmpty()))
    {
      i = 1;
      localObject = new HashMap(this.notifications);
      if (i == 0) {
        break label130;
      }
      updateNotifications(paramList, (Map)localObject, paramViewGroup);
    }
    for (;;)
    {
      this.hasAnimated = true;
      localObject = paramViewGroup.getResources();
      this.pillPosition = (paramViewGroup.getHeight() - ((Resources)localObject).getDimensionPixelSize(R.dimen.intercom_overlay_pill_bottom_margin) - ((Resources)localObject).getDimensionPixelSize(R.dimen.intercom_bottom_padding) - this.bottomPadding);
      displayPill(this.inflater, paramViewGroup);
      this.lastDisplayedConversations.clear();
      this.lastDisplayedConversations.addAll(paramList);
      return;
      i = 0;
      break;
      label130:
      if (!isDisplaying()) {
        addNewNotifications(paramList, paramViewGroup);
      }
    }
  }
  
  public boolean isDisplaying()
  {
    return !this.notifications.isEmpty();
  }
  
  public void onClick(View paramView)
  {
    paramView.getContext().startActivity(IntercomMessengerActivity.openInbox(paramView.getContext()));
  }
  
  public void onInAppNotificationDismiss(InAppNotification paramInAppNotification)
  {
    try
    {
      ViewGroup localViewGroup1 = this.listener.getRootView();
      localConversation = paramInAppNotification.getConversation();
      if (localViewGroup1 != null)
      {
        this.listener.markAsDismissed(localConversation);
        localViewGroup1.removeView(paramInAppNotification.getRootView());
        this.notifications.remove(localConversation.getId());
        this.lastDisplayedConversations.remove(localConversation);
        paramInAppNotification = this.notifications.values().iterator();
        while (paramInAppNotification.hasNext()) {
          ((InAppNotification)paramInAppNotification.next()).moveForward(localViewGroup1, this.inflater);
        }
      }
    }
    catch (Exception localException)
    {
      Conversation localConversation;
      ViewGroup localViewGroup2;
      for (;;)
      {
        this.twig.internal("Couldn't get root view: " + localException.getMessage());
        localViewGroup2 = null;
      }
      displayPill(this.inflater, localViewGroup2);
      if (this.notifications.isEmpty()) {
        this.hasAnimated = false;
      }
      paramInAppNotification = localConversation.getLastAdminPart();
      if (("chat".equals(paramInAppNotification.getMessageStyle())) && (Part.DeliveryOption.FULL == paramInAppNotification.getDeliveryOption()))
      {
        this.metricTracker.closedInAppFromFull(localConversation.getId(), paramInAppNotification.getId());
        return;
      }
      if (paramInAppNotification.isInitialMessage())
      {
        this.metricTracker.dismissInAppMessageSnippet(localConversation.getId(), paramInAppNotification.getId());
        return;
      }
      this.metricTracker.dismissInAppCommentSnippet(localConversation.getId(), paramInAppNotification.getId());
    }
  }
  
  public void onInAppNotificationTap(Conversation paramConversation)
  {
    this.listener.openNotification(paramConversation);
  }
  
  public void reset(ViewGroup paramViewGroup)
  {
    Object localObject = this.notifications.values().iterator();
    while (((Iterator)localObject).hasNext()) {
      ((InAppNotification)((Iterator)localObject).next()).removeView();
    }
    localObject = paramViewGroup.findViewById(R.id.notification_pill);
    if (localObject != null) {
      paramViewGroup.removeView((View)localObject);
    }
    this.notifications.clear();
  }
  
  public void setBottomPadding(int paramInt)
  {
    this.bottomPadding = paramInt;
    if (!isDisplaying()) {}
    for (;;)
    {
      return;
      Object localObject1 = this.notifications.values().iterator();
      while (((Iterator)localObject1).hasNext()) {
        ((InAppNotification)((Iterator)localObject1).next()).updateBottomPadding(this.inflater.getContext(), this.bottomPadding);
      }
      try
      {
        localObject1 = this.listener.getRootView();
        if (localObject1 == null) {
          continue;
        }
        Resources localResources = ((ViewGroup)localObject1).getResources();
        this.pillPosition = (((ViewGroup)localObject1).getHeight() - localResources.getDimensionPixelSize(R.dimen.intercom_overlay_pill_bottom_margin) - localResources.getDimensionPixelSize(R.dimen.intercom_bottom_padding) - paramInt);
        localObject1 = ((ViewGroup)localObject1).findViewById(R.id.notification_pill);
        if (localObject1 == null) {
          continue;
        }
        updatePillPosition((View)localObject1);
        return;
      }
      catch (Exception localException)
      {
        for (;;)
        {
          this.twig.internal("Couldn't get root view: " + localException.getMessage());
          Object localObject2 = null;
        }
      }
    }
  }
  
  void syncUpdates(List<Conversation> paramList, Map<String, InAppNotification> paramMap, ViewGroup paramViewGroup)
  {
    int i = 0;
    Conversation localConversation;
    Object localObject;
    if (i < paramList.size())
    {
      localConversation = (Conversation)paramList.get(i);
      localObject = (InAppNotification)paramMap.remove(localConversation.getId());
      if (((!(localObject instanceof ChatSnippet)) || (i <= 0)) && (localObject != null)) {
        break label206;
      }
      if (localObject != null) {
        ((InAppNotification)localObject).removeView();
      }
      localObject = new StackableSnippet(this.contextLocaliser.createLocalisedContext(paramViewGroup.getContext()), localConversation, i, this.handler, paramViewGroup.getHeight(), this, this.appConfigProvider, this.requestManager);
    }
    label206:
    for (;;)
    {
      if (i < 3) {
        ((InAppNotification)localObject).display(paramViewGroup, localConversation, this.inflater, false, this.bottomPadding);
      }
      for (;;)
      {
        this.notifications.put(localConversation.getId(), localObject);
        i += 1;
        break;
        ((InAppNotification)localObject).removeView();
      }
      paramList = paramMap.values().iterator();
      while (paramList.hasNext()) {
        ((InAppNotification)paramList.next()).removeView();
      }
      return;
    }
  }
  
  static abstract interface Listener
  {
    public abstract ViewGroup getRootView()
      throws Exception;
    
    public abstract void markAsDismissed(Conversation paramConversation);
    
    public abstract void openNotification(Conversation paramConversation);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/overlay/InAppNotificationPresenter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */