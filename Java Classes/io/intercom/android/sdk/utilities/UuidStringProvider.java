package io.intercom.android.sdk.utilities;

import java.util.UUID;

public abstract interface UuidStringProvider
{
  public static final UuidStringProvider SYSTEM = new UuidStringProvider()
  {
    public final String newUuidString()
    {
      return UUID.randomUUID().toString();
    }
  };
  
  public abstract String newUuidString();
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/utilities/UuidStringProvider.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */