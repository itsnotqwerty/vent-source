package io.intercom.android.sdk.utilities;

public class NameUtils
{
  public static String getInitial(String paramString)
  {
    paramString = paramString.trim();
    if (paramString.isEmpty()) {
      return "";
    }
    return String.valueOf(paramString.charAt(0));
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/utilities/NameUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */