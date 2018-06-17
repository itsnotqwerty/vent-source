package io.intercom.android.sdk.nexus;

public abstract interface NexusListener
{
  public abstract void notifyEvent(NexusEvent paramNexusEvent);
  
  public abstract void onConnect();
  
  public abstract void onConnectFailed();
  
  public abstract void onShutdown();
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/nexus/NexusListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */