package io.intercom.android.sdk.state;

final class AutoValue_HostAppState
  extends HostAppState
{
  private final long backgroundedTimestamp;
  private final boolean isBackgrounded;
  private final boolean sessionStartedSinceLastBackgrounded;
  
  AutoValue_HostAppState(boolean paramBoolean1, boolean paramBoolean2, long paramLong)
  {
    this.isBackgrounded = paramBoolean1;
    this.sessionStartedSinceLastBackgrounded = paramBoolean2;
    this.backgroundedTimestamp = paramLong;
  }
  
  public final long backgroundedTimestamp()
  {
    return this.backgroundedTimestamp;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof HostAppState)) {
        break;
      }
      paramObject = (HostAppState)paramObject;
    } while ((this.isBackgrounded == ((HostAppState)paramObject).isBackgrounded()) && (this.sessionStartedSinceLastBackgrounded == ((HostAppState)paramObject).sessionStartedSinceLastBackgrounded()) && (this.backgroundedTimestamp == ((HostAppState)paramObject).backgroundedTimestamp()));
    return false;
    return false;
  }
  
  public final int hashCode()
  {
    int j = 1231;
    int i;
    if (this.isBackgrounded)
    {
      i = 1231;
      if (!this.sessionStartedSinceLastBackgrounded) {
        break label56;
      }
    }
    for (;;)
    {
      return ((i ^ 0xF4243) * 1000003 ^ j) * 1000003 ^ (int)(this.backgroundedTimestamp >>> 32 ^ this.backgroundedTimestamp);
      i = 1237;
      break;
      label56:
      j = 1237;
    }
  }
  
  public final boolean isBackgrounded()
  {
    return this.isBackgrounded;
  }
  
  public final boolean sessionStartedSinceLastBackgrounded()
  {
    return this.sessionStartedSinceLastBackgrounded;
  }
  
  public final String toString()
  {
    return "HostAppState{isBackgrounded=" + this.isBackgrounded + ", sessionStartedSinceLastBackgrounded=" + this.sessionStartedSinceLastBackgrounded + ", backgroundedTimestamp=" + this.backgroundedTimestamp + "}";
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/state/AutoValue_HostAppState.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */