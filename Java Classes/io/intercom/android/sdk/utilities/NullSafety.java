package io.intercom.android.sdk.utilities;

public class NullSafety
{
  public static boolean valueOrDefault(Boolean paramBoolean, boolean paramBoolean1)
  {
    if (paramBoolean == null) {
      return paramBoolean1;
    }
    return paramBoolean.booleanValue();
  }
  
  public static String valueOrEmpty(String paramString)
  {
    String str = paramString;
    if (paramString == null) {
      str = "";
    }
    return str;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/utilities/NullSafety.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */