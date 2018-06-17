package com.amazonaws.internal.config;

import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

public class HostRegexToRegionMapping
{
  public final String amR;
  public final String aon;
  
  public HostRegexToRegionMapping(String paramString1, String paramString2)
  {
    if (paramString1.isEmpty()) {
      throw new IllegalArgumentException("Invalid HostRegexToRegionMapping configuration: hostNameRegex must be non-empty");
    }
    try
    {
      Pattern.compile(paramString1);
      if (paramString2.isEmpty()) {
        throw new IllegalArgumentException("Invalid HostRegexToRegionMapping configuration: regionName must be non-empty");
      }
    }
    catch (PatternSyntaxException paramString1)
    {
      throw new IllegalArgumentException("Invalid HostRegexToRegionMapping configuration: hostNameRegex is not a valid regex", paramString1);
    }
    this.aon = paramString1;
    this.amR = paramString2;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/internal/config/HostRegexToRegionMapping.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */