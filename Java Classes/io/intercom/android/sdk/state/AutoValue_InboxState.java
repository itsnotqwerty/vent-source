package io.intercom.android.sdk.state;

import io.intercom.android.sdk.models.Conversation;
import java.util.List;

final class AutoValue_InboxState
  extends InboxState
{
  private final List<Conversation> conversations;
  private final boolean hasMorePages;
  private final InboxState.Status status;
  
  AutoValue_InboxState(List<Conversation> paramList, InboxState.Status paramStatus, boolean paramBoolean)
  {
    if (paramList == null) {
      throw new NullPointerException("Null conversations");
    }
    this.conversations = paramList;
    if (paramStatus == null) {
      throw new NullPointerException("Null status");
    }
    this.status = paramStatus;
    this.hasMorePages = paramBoolean;
  }
  
  public final List<Conversation> conversations()
  {
    return this.conversations;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof InboxState)) {
        break;
      }
      paramObject = (InboxState)paramObject;
    } while ((this.conversations.equals(((InboxState)paramObject).conversations())) && (this.status.equals(((InboxState)paramObject).status())) && (this.hasMorePages == ((InboxState)paramObject).hasMorePages()));
    return false;
    return false;
  }
  
  public final boolean hasMorePages()
  {
    return this.hasMorePages;
  }
  
  public final int hashCode()
  {
    int j = this.conversations.hashCode();
    int k = this.status.hashCode();
    if (this.hasMorePages) {}
    for (int i = 1231;; i = 1237) {
      return i ^ ((j ^ 0xF4243) * 1000003 ^ k) * 1000003;
    }
  }
  
  public final InboxState.Status status()
  {
    return this.status;
  }
  
  public final String toString()
  {
    return "InboxState{conversations=" + this.conversations + ", status=" + this.status + ", hasMorePages=" + this.hasMorePages + "}";
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/state/AutoValue_InboxState.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */