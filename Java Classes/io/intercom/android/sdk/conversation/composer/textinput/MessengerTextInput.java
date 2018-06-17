package io.intercom.android.sdk.conversation.composer.textinput;

import android.widget.EditText;
import com.intercom.composer.b.c.b;

public class MessengerTextInput
  extends b<com.intercom.composer.b.a.a>
{
  private final EditText editText;
  
  public MessengerTextInput(String paramString, com.intercom.composer.b.a parama, CharSequence paramCharSequence1, CharSequence paramCharSequence2, com.intercom.composer.b.c.a parama1, EditText paramEditText)
  {
    super(paramString, parama, parama1, null);
    this.editText = paramEditText;
    paramEditText.setHint(paramCharSequence1);
    paramEditText.setText(paramCharSequence2);
  }
  
  public EditText createEditText()
  {
    return this.editText;
  }
  
  public com.intercom.composer.b.a.a createFragment()
  {
    return new com.intercom.composer.b.a.a();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/conversation/composer/textinput/MessengerTextInput.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */