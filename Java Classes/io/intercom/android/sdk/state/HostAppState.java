package io.intercom.android.sdk.state;

import com.google.auto.value.AutoValue;

@AutoValue
public abstract class HostAppState
{
  public static HostAppState create(boolean paramBoolean1, boolean paramBoolean2, long paramLong)
  {
    return new AutoValue_HostAppState(paramBoolean1, paramBoolean2, paramLong);
  }
  
  public abstract long backgroundedTimestamp();
  
  public abstract boolean isBackgrounded();
  
  public abstract boolean sessionStartedSinceLastBackgrounded();
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/state/HostAppState.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */