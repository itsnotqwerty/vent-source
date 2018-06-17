package com.amazonaws.services.s3.internal;

import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class ObjectExpirationHeaderHandler<T extends ObjectExpirationResult>
  implements HeaderHandler<T>
{
  private static final Log alS = LogFactory.getLog(ObjectExpirationHeaderHandler.class);
  private static final Pattern apS = Pattern.compile("expiry-date=\"(.*?)\"");
  private static final Pattern apT = Pattern.compile("rule-id=\"(.*?)\"");
  
  static String Y(String paramString)
  {
    paramString = apT.matcher(paramString);
    if (paramString.find()) {
      return paramString.group(1);
    }
    return null;
  }
  
  static Date parseDate(String paramString)
  {
    paramString = apS.matcher(paramString);
    if (paramString.find())
    {
      paramString = paramString.group(1);
      try
      {
        paramString = ServiceUtils.ac(paramString);
        return paramString;
      }
      catch (Exception paramString)
      {
        alS.warn("Error parsing expiry-date from x-amz-expiration header.", paramString);
      }
    }
    return null;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */