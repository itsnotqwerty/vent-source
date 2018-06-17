package io.intercom.android.sdk.conversation.composer.textinput;

import android.os.Handler;
import android.text.Editable;
import android.text.TextWatcher;
import io.intercom.android.sdk.actions.Actions;
import io.intercom.android.sdk.nexus.NexusClient;
import io.intercom.android.sdk.nexus.NexusEvent;
import io.intercom.android.sdk.state.State;
import io.intercom.android.sdk.store.Store;

class TextInputWatcher
  implements TextWatcher
{
  private static final long IS_TYPING_DELAY = 1000L;
  private String conversationId = "";
  private final Handler handler;
  private final NexusClient nexusClient;
  boolean shouldSendIsTyping = true;
  private final Store<State> store;
  private final String userId;
  
  TextInputWatcher(String paramString, NexusClient paramNexusClient, Store<State> paramStore, Handler paramHandler)
  {
    this.userId = paramString;
    this.nexusClient = paramNexusClient;
    this.store = paramStore;
    this.handler = paramHandler;
  }
  
  public void afterTextChanged(Editable paramEditable)
  {
    if (this.shouldSendIsTyping)
    {
      this.shouldSendIsTyping = false;
      this.handler.postDelayed(new Runnable()
      {
        public void run()
        {
          TextInputWatcher.this.shouldSendIsTyping = true;
        }
      }, 1000L);
      if (!this.conversationId.isEmpty()) {
        this.nexusClient.fire(NexusEvent.getUserIsTypingEvent(this.conversationId, this.userId));
      }
      if (paramEditable.length() == 0) {
        this.store.dispatch(Actions.composerCleared(this.conversationId));
      }
    }
    else
    {
      return;
    }
    this.store.dispatch(Actions.composerTypedIn(this.conversationId));
  }
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  protected void setConversationId(String paramString)
  {
    this.conversationId = paramString;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/conversation/composer/textinput/TextInputWatcher.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */