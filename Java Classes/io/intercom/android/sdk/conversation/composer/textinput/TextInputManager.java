package io.intercom.android.sdk.conversation.composer.textinput;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.widget.EditText;
import com.intercom.composer.b.b;
import io.intercom.android.sdk.R.drawable;
import io.intercom.android.sdk.R.integer;
import io.intercom.android.sdk.R.layout;
import io.intercom.android.sdk.R.string;
import io.intercom.android.sdk.actions.Actions;
import io.intercom.android.sdk.conversation.composer.ComposerPresenter.Listener;
import io.intercom.android.sdk.conversation.composer.InputDrawableManager;
import io.intercom.android.sdk.identity.UserIdentity;
import io.intercom.android.sdk.metrics.MetricTracker;
import io.intercom.android.sdk.metrics.MetricsComposerTextWatcher;
import io.intercom.android.sdk.nexus.NexusClient;
import io.intercom.android.sdk.state.State;
import io.intercom.android.sdk.store.Store;

public class TextInputManager
{
  private final EditText composerText;
  private final Context context;
  private String conversationId;
  private String initialMessage;
  private final ComposerPresenter.Listener listener;
  private final MetricsComposerTextWatcher metricsTextWatcher;
  private final Store<State> store;
  private final Drawable textIcon;
  private final TextInputWatcher textWatcher;
  
  public TextInputManager(Context paramContext, LayoutInflater paramLayoutInflater, UserIdentity paramUserIdentity, NexusClient paramNexusClient, MetricTracker paramMetricTracker, String paramString1, String paramString2, InputDrawableManager paramInputDrawableManager, Store<State> paramStore, ComposerPresenter.Listener paramListener)
  {
    this.context = paramContext;
    this.listener = paramListener;
    this.conversationId = paramString1;
    this.initialMessage = paramString2;
    this.store = paramStore;
    this.textIcon = paramInputDrawableManager.createDrawable(paramContext, R.drawable.intercom_input_text);
    this.composerText = ((EditText)paramLayoutInflater.inflate(R.layout.intercom_composer_edit_text, null));
    this.textWatcher = new TextInputWatcher(paramUserIdentity.getIntercomId(), paramNexusClient, paramStore, new Handler(Looper.getMainLooper()));
    this.metricsTextWatcher = new MetricsComposerTextWatcher(paramMetricTracker);
    this.metricsTextWatcher.setConversationId(paramString1);
    this.composerText.addTextChangedListener(this.textWatcher);
    this.composerText.addTextChangedListener(this.metricsTextWatcher);
  }
  
  public void cleanup()
  {
    this.store.dispatch(Actions.composerCleared(this.conversationId));
    this.composerText.removeTextChangedListener(this.textWatcher);
    this.composerText.removeTextChangedListener(this.metricsTextWatcher);
    this.composerText.clearFocus();
    this.metricsTextWatcher.reset();
  }
  
  public b createInput()
  {
    if (TextUtils.isEmpty(this.conversationId)) {}
    for (String str = this.context.getResources().getString(R.string.intercom_start_conversation);; str = this.context.getResources().getString(R.string.intercom_reply_to_conversation)) {
      new MessengerTextInput("text_input", new com.intercom.composer.b.a()
      {
        public Drawable getIconDrawable(String paramAnonymousString, Context paramAnonymousContext)
        {
          return TextInputManager.this.textIcon;
        }
      }, str, this.initialMessage, new com.intercom.composer.b.c.a()
      {
        public void textToBeSent(b paramAnonymousb, CharSequence paramAnonymousCharSequence)
        {
          TextInputManager.this.listener.onSendButtonPressed(paramAnonymousCharSequence);
          TextInputManager.this.store.dispatch(Actions.composerSendButtonPressed());
        }
      }, this.composerText);
    }
  }
  
  public void requestFocus()
  {
    this.composerText.requestFocus();
  }
  
  public void setConversationId(String paramString)
  {
    this.textWatcher.setConversationId(paramString);
    this.metricsTextWatcher.setConversationId(paramString);
  }
  
  public void setHint(int paramInt)
  {
    this.composerText.setHint(paramInt);
  }
  
  public void updateMaxLines()
  {
    this.composerText.setMaxLines(this.context.getResources().getInteger(R.integer.intercom_max_composer_lines));
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/conversation/composer/textinput/TextInputManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */