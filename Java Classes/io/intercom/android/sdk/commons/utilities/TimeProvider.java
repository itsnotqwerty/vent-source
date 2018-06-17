package io.intercom.android.sdk.commons.utilities;

public abstract interface TimeProvider
{
  public static final TimeProvider SYSTEM = new TimeProvider()
  {
    public final long currentTimeMillis()
    {
      return System.currentTimeMillis();
    }
  };
  
  public abstract long currentTimeMillis();
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/commons/utilities/TimeProvider.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */