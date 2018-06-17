package io.intercom.android.sdk.conversation;

import io.intercom.android.sdk.models.Conversation;
import io.intercom.android.sdk.models.Part;
import java.util.Iterator;
import java.util.List;

class ProfileExpansionLogic
{
  private static boolean hasNoUserReplies(Conversation paramConversation)
  {
    paramConversation = paramConversation.getParts().iterator();
    int i = 0;
    while (paramConversation.hasNext())
    {
      Part localPart = (Part)paramConversation.next();
      int j = i;
      if (localPart.isAdmin()) {
        j = 1;
      }
      i = j;
      if (j != 0)
      {
        i = j;
        if (!localPart.isAdmin()) {
          return false;
        }
      }
    }
    return true;
  }
  
  private static boolean hasOnlyUserParts(Conversation paramConversation)
  {
    paramConversation = paramConversation.getParts().iterator();
    while (paramConversation.hasNext()) {
      if (((Part)paramConversation.next()).isAdmin()) {
        return false;
      }
    }
    return true;
  }
  
  boolean shouldExpandProfile(Conversation paramConversation)
  {
    return (hasOnlyUserParts(paramConversation)) || (hasNoUserReplies(paramConversation));
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/conversation/ProfileExpansionLogic.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */