package io.intercom.android.sdk.state;

final class AutoValue_ActiveConversationState
  extends ActiveConversationState
{
  private final String getConversationId;
  private final boolean hasSwitchedInputType;
  private final boolean hasTextInComposer;
  
  AutoValue_ActiveConversationState(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramString == null) {
      throw new NullPointerException("Null getConversationId");
    }
    this.getConversationId = paramString;
    this.hasSwitchedInputType = paramBoolean1;
    this.hasTextInComposer = paramBoolean2;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof ActiveConversationState)) {
        break;
      }
      paramObject = (ActiveConversationState)paramObject;
    } while ((this.getConversationId.equals(((ActiveConversationState)paramObject).getConversationId())) && (this.hasSwitchedInputType == ((ActiveConversationState)paramObject).hasSwitchedInputType()) && (this.hasTextInComposer == ((ActiveConversationState)paramObject).hasTextInComposer()));
    return false;
    return false;
  }
  
  public final String getConversationId()
  {
    return this.getConversationId;
  }
  
  public final boolean hasSwitchedInputType()
  {
    return this.hasSwitchedInputType;
  }
  
  public final boolean hasTextInComposer()
  {
    return this.hasTextInComposer;
  }
  
  public final int hashCode()
  {
    int j = 1231;
    int k = this.getConversationId.hashCode();
    int i;
    if (this.hasSwitchedInputType)
    {
      i = 1231;
      if (!this.hasTextInComposer) {
        break label52;
      }
    }
    for (;;)
    {
      return (i ^ (k ^ 0xF4243) * 1000003) * 1000003 ^ j;
      i = 1237;
      break;
      label52:
      j = 1237;
    }
  }
  
  public final String toString()
  {
    return "ActiveConversationState{getConversationId=" + this.getConversationId + ", hasSwitchedInputType=" + this.hasSwitchedInputType + ", hasTextInComposer=" + this.hasTextInComposer + "}";
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/state/AutoValue_ActiveConversationState.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */