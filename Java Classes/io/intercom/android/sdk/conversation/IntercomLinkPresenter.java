package io.intercom.android.sdk.conversation;

import android.content.res.Resources;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import io.intercom.android.sdk.Provider;
import io.intercom.android.sdk.R.dimen;
import io.intercom.android.sdk.api.Api;
import io.intercom.android.sdk.identity.AppConfig;
import io.intercom.android.sdk.models.Part;
import io.intercom.android.sdk.views.IntercomLinkView;
import java.util.Iterator;
import java.util.List;

class IntercomLinkPresenter
{
  private final Api api;
  private final Provider<AppConfig> appConfigProvider;
  private final String conversationId;
  private final List<Part> conversationParts;
  final IntercomLinkView intercomLinkView;
  private boolean wasAtBottom = false;
  
  IntercomLinkPresenter(IntercomLinkView paramIntercomLinkView, Provider<AppConfig> paramProvider, Api paramApi, List<Part> paramList, String paramString)
  {
    this.intercomLinkView = paramIntercomLinkView;
    this.appConfigProvider = paramProvider;
    this.api = paramApi;
    this.conversationParts = paramList;
    this.conversationId = paramString;
  }
  
  private Part getFirstMessagePart()
  {
    Iterator localIterator = this.conversationParts.iterator();
    while (localIterator.hasNext())
    {
      Part localPart = (Part)localIterator.next();
      if (localPart.isMessagePart()) {
        return localPart;
      }
    }
    return Part.NULL;
  }
  
  private boolean shouldShowIntercomLink()
  {
    return ((AppConfig)this.appConfigProvider.get()).shouldShowIntercomLink();
  }
  
  void onProfileScrolled(View paramView)
  {
    if (!shouldShowIntercomLink()) {}
    while (paramView == null) {
      return;
    }
    this.intercomLinkView.hideIfIntersectedOrShow(paramView);
  }
  
  void setup(IntercomLinkHost paramIntercomLinkHost)
  {
    this.intercomLinkView.setAlpha(0.0F);
    if (!shouldShowIntercomLink()) {}
    do
    {
      return;
      paramIntercomLinkHost.addBottomPadding(this.intercomLinkView.getResources().getDimensionPixelSize(R.dimen.intercom_link_height));
      this.intercomLinkView.setOnTouchListener(new View.OnTouchListener()
      {
        public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
        {
          if (IntercomLinkPresenter.this.intercomLinkView.getAlpha() == 1.0F) {}
          for (boolean bool = true;; bool = false)
          {
            if ((bool) && (1 == paramAnonymousMotionEvent.getActionMasked())) {
              IntercomLinkPresenter.this.intercomLinkView.followIntercomLink(IntercomLinkPresenter.this.appConfigProvider, IntercomLinkPresenter.this.getFirstMessagePart(), IntercomLinkPresenter.this.api);
            }
            return bool;
          }
        }
      });
    } while (!this.conversationId.isEmpty());
    this.intercomLinkView.show();
  }
  
  void updateIntercomLink(IntercomLinkHost paramIntercomLinkHost)
  {
    if (!shouldShowIntercomLink()) {
      return;
    }
    boolean bool = paramIntercomLinkHost.isAtBottom();
    if ((bool) && (!this.wasAtBottom)) {
      this.intercomLinkView.show();
    }
    for (;;)
    {
      this.wasAtBottom = paramIntercomLinkHost.isAtBottom();
      return;
      if ((this.wasAtBottom) && (!bool)) {
        this.intercomLinkView.hide();
      }
    }
  }
  
  static abstract interface IntercomLinkHost
  {
    public abstract void addBottomPadding(int paramInt);
    
    public abstract boolean isAtBottom();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/conversation/IntercomLinkPresenter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */