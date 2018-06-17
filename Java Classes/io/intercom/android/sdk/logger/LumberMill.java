package io.intercom.android.sdk.logger;

import io.intercom.android.sdk.Intercom.LogLevel;
import io.intercom.android.sdk.twig.Twig;

public class LumberMill
{
  private static final Twig BLOCK_TWIG = new Twig(5, "Intercom", false);
  private static final Twig MESSENGER_TWIG = new Twig(5, "Intercom", false);
  private static final Twig NEXUS_TWIG = new Twig(5, "Intercom realtime", false);
  
  public static Twig getBlocksTwig()
  {
    return BLOCK_TWIG;
  }
  
  public static Twig getLogger()
  {
    return MESSENGER_TWIG;
  }
  
  public static Twig getNexusTwig()
  {
    return NEXUS_TWIG;
  }
  
  public static void setLogLevel(@Intercom.LogLevel int paramInt)
  {
    MESSENGER_TWIG.setLogLevel(paramInt);
    NEXUS_TWIG.setLogLevel(paramInt);
    BLOCK_TWIG.setLogLevel(paramInt);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/logger/LumberMill.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */