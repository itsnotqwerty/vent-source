package com.layer.sdk.internal.telemetry;

import com.google.a.e;
import java.lang.reflect.Field;
import java.util.regex.Pattern;

final class a
  implements e
{
  private static final Pattern btg = Pattern.compile("(?=\\p{Lu})");
  
  static String dw(String paramString)
  {
    paramString = btg.split(paramString);
    StringBuffer localStringBuffer = new StringBuffer();
    int j = paramString.length;
    int i = 0;
    while (i < j)
    {
      Object localObject = paramString[i];
      if (localStringBuffer.length() > 0) {
        localStringBuffer.append("_");
      }
      localStringBuffer.append(((String)localObject).toLowerCase());
      i += 1;
    }
    return localStringBuffer.toString();
  }
  
  public final String a(Field paramField)
  {
    if (paramField.getName().startsWith("m")) {
      return dw(paramField.getName().substring(1));
    }
    return dw(paramField.getName());
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/layer/sdk/internal/telemetry/a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */