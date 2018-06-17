package io.intercom.android.sdk.experimental;

import android.app.TaskStackBuilder;
import io.intercom.android.sdk.Intercom.Visibility;
import io.intercom.android.sdk.UnreadConversationCountListener;
import io.intercom.android.sdk.UserAttributes;
import io.intercom.android.sdk.logger.LumberMill;
import io.intercom.android.sdk.twig.Twig;
import java.util.Map;

class InvalidIntercom
  extends Intercom
{
  private final Twig twig = LumberMill.getLogger();
  
  private void logIncorrectInitialisationWarning()
  {
    this.twig.e("Intercom has been initialized incorrectly. Please make sure the first Intercom method you call is initialize() and that you're passing in the correct app ID and API key", new Object[0]);
  }
  
  public void addUnreadConversationCountListener(UnreadConversationCountListener paramUnreadConversationCountListener)
  {
    logIncorrectInitialisationWarning();
  }
  
  public void displayConversationsList()
  {
    logIncorrectInitialisationWarning();
  }
  
  public void displayHelpCenter()
  {
    logIncorrectInitialisationWarning();
  }
  
  public void displayMessageComposer()
  {
    logIncorrectInitialisationWarning();
  }
  
  public void displayMessageComposer(String paramString)
  {
    logIncorrectInitialisationWarning();
  }
  
  public void displayMessenger()
  {
    logIncorrectInitialisationWarning();
  }
  
  public int getUnreadConversationCount()
  {
    logIncorrectInitialisationWarning();
    return 0;
  }
  
  public void handlePushMessage()
  {
    logIncorrectInitialisationWarning();
  }
  
  public void handlePushMessage(TaskStackBuilder paramTaskStackBuilder)
  {
    logIncorrectInitialisationWarning();
  }
  
  public void hideMessenger()
  {
    logIncorrectInitialisationWarning();
  }
  
  public void logEvent(String paramString)
  {
    logIncorrectInitialisationWarning();
  }
  
  public void logEvent(String paramString, Map<String, ?> paramMap)
  {
    logIncorrectInitialisationWarning();
  }
  
  public void removeUnreadConversationCountListener(UnreadConversationCountListener paramUnreadConversationCountListener)
  {
    logIncorrectInitialisationWarning();
  }
  
  public void setBottomPadding(int paramInt)
  {
    logIncorrectInitialisationWarning();
  }
  
  public void setInAppMessageVisibility(Intercom.Visibility paramVisibility)
  {
    logIncorrectInitialisationWarning();
  }
  
  public void setLauncherVisibility(Intercom.Visibility paramVisibility)
  {
    logIncorrectInitialisationWarning();
  }
  
  public void setUserHash(String paramString)
  {
    logIncorrectInitialisationWarning();
  }
  
  public void shutdown()
  {
    logIncorrectInitialisationWarning();
  }
  
  public void updateUser(UserAttributes paramUserAttributes)
  {
    logIncorrectInitialisationWarning();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/experimental/InvalidIntercom.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */