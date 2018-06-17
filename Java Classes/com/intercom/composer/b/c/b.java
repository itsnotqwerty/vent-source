package com.intercom.composer.b.c;

import android.widget.EditText;
import com.intercom.composer.b.c;
import java.util.List;

public abstract class b<T extends c>
  extends com.intercom.composer.b.b<T>
{
  private EditText editText;
  private final List<com.intercom.composer.b.c.b.b> options;
  private a sendTextCallback;
  
  public b(String paramString, com.intercom.composer.b.a parama, a parama1)
  {
    this(paramString, parama, parama1, null);
  }
  
  public b(String paramString, com.intercom.composer.b.a parama, a parama1, List<com.intercom.composer.b.c.b.b> paramList)
  {
    super(paramString, parama);
    this.sendTextCallback = parama1;
    this.options = paramList;
  }
  
  protected abstract EditText createEditText();
  
  public EditText getEditText()
  {
    if (this.editText == null) {
      this.editText = createEditText();
    }
    return this.editText;
  }
  
  public List<com.intercom.composer.b.c.b.b> getOptions()
  {
    return this.options;
  }
  
  public void sendTextBack(CharSequence paramCharSequence)
  {
    this.sendTextCallback.textToBeSent(this, paramCharSequence);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/intercom/composer/b/c/b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */