package io.intercom.android.sdk.api;

import io.intercom.a.c.a.b;
import io.intercom.android.sdk.actions.Actions;
import io.intercom.android.sdk.logger.LumberMill;
import io.intercom.android.sdk.models.Conversation.Builder;
import io.intercom.android.sdk.models.ConversationsResponse.Builder;
import io.intercom.android.sdk.models.Part.Builder;
import io.intercom.android.sdk.models.UsersResponse.Builder;
import io.intercom.android.sdk.models.events.ConversationEvent;
import io.intercom.android.sdk.models.events.NewConversationEvent;
import io.intercom.android.sdk.models.events.ReplyEvent;
import io.intercom.android.sdk.models.events.failure.ConversationFailedEvent;
import io.intercom.android.sdk.models.events.failure.NewConversationFailedEvent;
import io.intercom.android.sdk.models.events.failure.ReplyFailedEvent;
import io.intercom.android.sdk.state.ReplyPart;
import io.intercom.android.sdk.state.State;
import io.intercom.android.sdk.store.Store;
import io.intercom.android.sdk.twig.Twig;
import io.intercom.retrofit2.Call;
import io.intercom.retrofit2.Callback;
import io.intercom.retrofit2.Response;

class CallbackHolder
{
  private static final Twig TWIG = ;
  final b bus;
  final Store<State> store;
  
  CallbackHolder(b paramb, Store<State> paramStore)
  {
    this.bus = paramb;
    this.store = paramStore;
  }
  
  Callback<Conversation.Builder> conversationCallback()
  {
    new BaseCallback()
    {
      public void onError(ErrorObject paramAnonymousErrorObject)
      {
        CallbackHolder.this.bus.post(new ConversationFailedEvent());
      }
      
      public void onSuccess(Conversation.Builder paramAnonymousBuilder)
      {
        paramAnonymousBuilder = paramAnonymousBuilder.build();
        CallbackHolder.this.store.dispatch(Actions.fetchConversationSuccess(paramAnonymousBuilder));
        CallbackHolder.this.bus.post(new ConversationEvent(paramAnonymousBuilder));
      }
    };
  }
  
  Callback<ConversationsResponse.Builder> inboxCallback()
  {
    new BaseCallback()
    {
      public void onError(ErrorObject paramAnonymousErrorObject)
      {
        CallbackHolder.this.store.dispatch(Actions.fetchInboxFailed());
      }
      
      public void onSuccess(ConversationsResponse.Builder paramAnonymousBuilder)
      {
        paramAnonymousBuilder = paramAnonymousBuilder.build();
        CallbackHolder.this.store.dispatch(Actions.baseResponseReceived(paramAnonymousBuilder));
        CallbackHolder.this.store.dispatch(Actions.fetchInboxSuccess(paramAnonymousBuilder));
      }
    };
  }
  
  Callback<Void> loggingCallback(final String paramString)
  {
    new Callback()
    {
      public void onFailure(Call<Void> paramAnonymousCall, Throwable paramAnonymousThrowable)
      {
        CallbackHolder.TWIG.internal(paramString + " failure");
      }
      
      public void onResponse(Call<Void> paramAnonymousCall, Response<Void> paramAnonymousResponse)
      {
        CallbackHolder.TWIG.internal(paramString + " success");
      }
    };
  }
  
  Callback<Conversation.Builder> newConversationCallback(final int paramInt, final String paramString)
  {
    new BaseCallback()
    {
      protected void onError(ErrorObject paramAnonymousErrorObject)
      {
        CallbackHolder.this.bus.post(new NewConversationFailedEvent(paramInt, paramString));
      }
      
      public void onSuccess(Conversation.Builder paramAnonymousBuilder)
      {
        paramAnonymousBuilder = paramAnonymousBuilder.build();
        CallbackHolder.this.store.dispatch(Actions.newConversationSuccess(paramAnonymousBuilder));
        CallbackHolder.this.bus.post(new NewConversationEvent(paramAnonymousBuilder, paramString));
      }
    };
  }
  
  Callback<Part.Builder> replyCallback(final int paramInt, final boolean paramBoolean, final String paramString1, final String paramString2)
  {
    new BaseCallback()
    {
      public void onError(ErrorObject paramAnonymousErrorObject)
      {
        CallbackHolder.this.bus.post(new ReplyFailedEvent(paramInt, paramBoolean, paramString1));
      }
      
      public void onSuccess(Part.Builder paramAnonymousBuilder)
      {
        paramAnonymousBuilder = paramAnonymousBuilder.build();
        CallbackHolder.this.store.dispatch(Actions.conversationReplySuccess(new ReplyPart(paramAnonymousBuilder, paramString2)));
        CallbackHolder.this.bus.post(new ReplyEvent(paramAnonymousBuilder, paramInt, paramString1, paramString2));
      }
    };
  }
  
  BaseCallback<UsersResponse.Builder> unreadCallback()
  {
    new BaseCallback()
    {
      public void onSuccess(UsersResponse.Builder paramAnonymousBuilder)
      {
        paramAnonymousBuilder = paramAnonymousBuilder.build();
        CallbackHolder.this.store.dispatch(Actions.baseResponseReceived(paramAnonymousBuilder));
        CallbackHolder.this.store.dispatch(Actions.unreadConversationsSuccess(paramAnonymousBuilder));
      }
    };
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/api/CallbackHolder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */