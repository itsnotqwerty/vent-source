package com.amazonaws;

import com.amazonaws.internal.config.HttpClientConfig;
import com.amazonaws.internal.config.InternalConfig;
import com.amazonaws.internal.config.InternalConfig.Factory;
import java.util.Map;

 enum ServiceNameFactory
{
  static String M(String paramString)
  {
    paramString = (HttpClientConfig)InternalConfig.Factory.jI().aos.get(paramString);
    if (paramString == null) {
      return null;
    }
    return paramString.alN;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/ServiceNameFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */