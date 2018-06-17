package io.intercom.android.sdk.conversation.composer;

import android.os.Bundle;
import android.support.v4.app.i;
import com.intercom.composer.b.b;
import java.util.ArrayList;
import java.util.List;

public class InputProvider
  extends i
{
  private final List<b> inputs = new ArrayList();
  
  public void addInputs(List<b> paramList)
  {
    this.inputs.addAll(paramList);
  }
  
  public List<b> getInputs()
  {
    return this.inputs;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setRetainInstance(true);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/conversation/composer/InputProvider.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */