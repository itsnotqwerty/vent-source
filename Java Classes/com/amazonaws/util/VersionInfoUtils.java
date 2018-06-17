package com.amazonaws.util;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class VersionInfoUtils
{
  private static final Log alS = LogFactory.getLog(VersionInfoUtils.class);
  private static volatile String amh;
  private static volatile String avj;
  private static volatile String version = "2.3.9";
  
  static
  {
    avj = "android";
  }
  
  private static String aF(String paramString)
  {
    return paramString.replace(' ', '_');
  }
  
  public static String kk()
  {
    if (amh == null) {}
    try
    {
      if (amh == null)
      {
        StringBuilder localStringBuilder = new StringBuilder(128);
        localStringBuilder.append("aws-sdk-");
        localStringBuilder.append(StringUtils.aC(avj));
        localStringBuilder.append("/");
        localStringBuilder.append(version);
        localStringBuilder.append(" ");
        localStringBuilder.append(aF(System.getProperty("os.name")));
        localStringBuilder.append("/");
        localStringBuilder.append(aF(System.getProperty("os.version")));
        localStringBuilder.append(" ");
        localStringBuilder.append(aF(System.getProperty("java.vm.name")));
        localStringBuilder.append("/");
        localStringBuilder.append(aF(System.getProperty("java.vm.version")));
        localStringBuilder.append("/");
        localStringBuilder.append(aF(System.getProperty("java.version")));
        String str1 = System.getProperty("user.language");
        String str2 = System.getProperty("user.region");
        if ((str1 != null) && (str2 != null))
        {
          localStringBuilder.append(" ");
          localStringBuilder.append(aF(str1));
          localStringBuilder.append("_");
          localStringBuilder.append(aF(str2));
        }
        amh = localStringBuilder.toString();
      }
      return amh;
    }
    finally {}
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/util/VersionInfoUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */