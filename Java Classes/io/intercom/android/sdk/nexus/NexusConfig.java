package io.intercom.android.sdk.nexus;

import java.util.ArrayList;
import java.util.List;

public class NexusConfig
{
  private final int connectionTimeout;
  private final List<String> endpoints;
  private final int presenceHeartbeatInterval;
  
  public NexusConfig()
  {
    this(new Builder());
  }
  
  public NexusConfig(Builder paramBuilder)
  {
    if (paramBuilder.endpoints == null) {}
    for (Object localObject = new ArrayList();; localObject = paramBuilder.endpoints)
    {
      this.endpoints = ((List)localObject);
      this.presenceHeartbeatInterval = paramBuilder.presence_heartbeat_interval;
      this.connectionTimeout = paramBuilder.connection_timeout;
      return;
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if ((paramObject == null) || (getClass() != paramObject.getClass())) {
        return false;
      }
      paramObject = (NexusConfig)paramObject;
    } while ((this.connectionTimeout == ((NexusConfig)paramObject).connectionTimeout) && (this.presenceHeartbeatInterval == ((NexusConfig)paramObject).presenceHeartbeatInterval) && (this.endpoints.equals(((NexusConfig)paramObject).endpoints)));
    return false;
  }
  
  public int getConnectionTimeout()
  {
    return this.connectionTimeout;
  }
  
  public List<String> getEndpoints()
  {
    return this.endpoints;
  }
  
  public int getPresenceHeartbeatInterval()
  {
    return this.presenceHeartbeatInterval;
  }
  
  public int hashCode()
  {
    return (this.endpoints.hashCode() * 31 + this.presenceHeartbeatInterval) * 31 + this.connectionTimeout;
  }
  
  public static class Builder
  {
    int connection_timeout;
    List<String> endpoints;
    int presence_heartbeat_interval;
    
    public NexusConfig build()
    {
      return new NexusConfig(this);
    }
    
    public Builder withConnectionTimeout(int paramInt)
    {
      this.connection_timeout = paramInt;
      return this;
    }
    
    public Builder withEndpoints(List<String> paramList)
    {
      this.endpoints = paramList;
      return this;
    }
    
    public Builder withPresenceHeartbeatInterval(int paramInt)
    {
      this.presence_heartbeat_interval = paramInt;
      return this;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/nexus/NexusConfig.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */