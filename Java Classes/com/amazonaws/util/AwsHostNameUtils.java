package com.amazonaws.util;

import com.amazonaws.internal.config.HostRegexToRegionMapping;
import com.amazonaws.internal.config.InternalConfig;
import com.amazonaws.internal.config.InternalConfig.Factory;
import java.net.URI;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class AwsHostNameUtils
{
  private static final Pattern auH = Pattern.compile("^(?:.+\\.)?s3[.-]([a-z0-9-]+)$");
  
  private static String ar(String paramString)
  {
    Iterator localIterator = Collections.unmodifiableList(InternalConfig.Factory.jI().aot).iterator();
    while (localIterator.hasNext())
    {
      HostRegexToRegionMapping localHostRegexToRegionMapping = (HostRegexToRegionMapping)localIterator.next();
      if (paramString.matches(localHostRegexToRegionMapping.aon)) {
        return localHostRegexToRegionMapping.amR;
      }
    }
    return null;
  }
  
  @Deprecated
  public static String e(URI paramURI)
  {
    paramURI = paramURI.getHost();
    if (!paramURI.endsWith(".amazonaws.com")) {
      throw new IllegalArgumentException("Cannot parse a service name from an unrecognized endpoint (" + paramURI + ").");
    }
    String str = paramURI.substring(0, paramURI.indexOf(".amazonaws.com"));
    if ((str.endsWith(".s3")) || (auH.matcher(str).matches())) {
      paramURI = "s3";
    }
    do
    {
      return paramURI;
      paramURI = str;
    } while (str.indexOf('.') == -1);
    return str.substring(0, str.indexOf('.'));
  }
  
  public static String i(String paramString1, String paramString2)
  {
    if (paramString1 == null) {
      throw new IllegalArgumentException("hostname cannot be null");
    }
    String str = ar(paramString1);
    if (str != null) {
      paramString1 = str;
    }
    do
    {
      return paramString1;
      if (!paramString1.endsWith(".amazonaws.com")) {
        break;
      }
      paramString1 = paramString1.substring(0, paramString1.length() - 14);
      paramString2 = auH.matcher(paramString1);
      if (paramString2.matches()) {
        return paramString2.group(1);
      }
      int i = paramString1.lastIndexOf('.');
      if (i == -1) {
        return "us-east-1";
      }
      paramString2 = paramString1.substring(i + 1);
      paramString1 = paramString2;
    } while (!"us-gov".equals(paramString2));
    return "us-gov-west-1";
    if (paramString2 != null)
    {
      paramString1 = Pattern.compile("^(?:.+\\.)?" + Pattern.quote(paramString2) + "[.-]([a-z0-9-]+)\\.").matcher(paramString1);
      if (paramString1.find()) {
        return paramString1.group(1);
      }
    }
    return "us-east-1";
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/util/AwsHostNameUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */