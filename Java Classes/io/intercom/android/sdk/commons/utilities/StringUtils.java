package io.intercom.android.sdk.commons.utilities;

import java.util.ArrayList;
import java.util.List;

public class StringUtils
{
  public static List<String> splitOnEmpty(String paramString)
  {
    ArrayList localArrayList = new ArrayList(paramString.length());
    paramString = paramString.split("");
    int j = paramString.length;
    int i = 0;
    while (i < j)
    {
      Object localObject = paramString[i];
      if (!((String)localObject).isEmpty()) {
        localArrayList.add(localObject);
      }
      i += 1;
    }
    return localArrayList;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/commons/utilities/StringUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */