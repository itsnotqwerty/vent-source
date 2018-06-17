package io.intercom.android.sdk.state;

final class AutoValue_UiState
  extends UiState
{
  private final String conversationId;
  private final UiState.Screen screen;
  
  AutoValue_UiState(UiState.Screen paramScreen, String paramString)
  {
    if (paramScreen == null) {
      throw new NullPointerException("Null screen");
    }
    this.screen = paramScreen;
    this.conversationId = paramString;
  }
  
  public final String conversationId()
  {
    return this.conversationId;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof UiState)) {
        break label65;
      }
      paramObject = (UiState)paramObject;
      if (!this.screen.equals(((UiState)paramObject).screen())) {
        break;
      }
      if (this.conversationId != null) {
        break label49;
      }
    } while (((UiState)paramObject).conversationId() == null);
    label49:
    while (!this.conversationId.equals(((UiState)paramObject).conversationId())) {
      return false;
    }
    return true;
    label65:
    return false;
  }
  
  public final int hashCode()
  {
    int j = this.screen.hashCode();
    if (this.conversationId == null) {}
    for (int i = 0;; i = this.conversationId.hashCode()) {
      return i ^ 1000003 * (j ^ 0xF4243);
    }
  }
  
  public final UiState.Screen screen()
  {
    return this.screen;
  }
  
  public final String toString()
  {
    return "UiState{screen=" + this.screen + ", conversationId=" + this.conversationId + "}";
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/state/AutoValue_UiState.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */