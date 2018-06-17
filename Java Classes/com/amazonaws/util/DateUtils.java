package com.amazonaws.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.TimeZone;

public class DateUtils
{
  private static final TimeZone auP = TimeZone.getTimeZone("GMT");
  private static final Map<String, ThreadLocal<SimpleDateFormat>> auQ = new HashMap();
  
  public static String a(String paramString, Date paramDate)
  {
    return ((SimpleDateFormat)aw(paramString).get()).format(paramDate);
  }
  
  private static ThreadLocal<SimpleDateFormat> aw(String paramString)
  {
    Object localObject = (ThreadLocal)auQ.get(paramString);
    if (localObject == null) {
      synchronized (auQ)
      {
        ThreadLocal localThreadLocal = (ThreadLocal)auQ.get(paramString);
        localObject = localThreadLocal;
        if (localThreadLocal == null)
        {
          localObject = new ThreadLocal() {};
          auQ.put(paramString, localObject);
        }
        return (ThreadLocal<SimpleDateFormat>)localObject;
      }
    }
    return (ThreadLocal<SimpleDateFormat>)localObject;
  }
  
  public static Date ax(String paramString)
  {
    try
    {
      Date localDate = j("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", paramString);
      return localDate;
    }
    catch (IllegalArgumentException localIllegalArgumentException) {}
    return j("yyyy-MM-dd'T'HH:mm:ss'Z'", paramString);
  }
  
  public static Date ay(String paramString)
  {
    return j("EEE, dd MMM yyyy HH:mm:ss z", paramString);
  }
  
  public static Date az(String paramString)
  {
    return j("yyyyMMdd'T'HHmmss'Z'", paramString);
  }
  
  public static String i(Date paramDate)
  {
    return a("EEE, dd MMM yyyy HH:mm:ss z", paramDate);
  }
  
  private static Date j(String paramString1, String paramString2)
  {
    try
    {
      paramString1 = ((SimpleDateFormat)aw(paramString1).get()).parse(paramString2);
      return paramString1;
    }
    catch (ParseException paramString1)
    {
      throw new IllegalArgumentException(paramString1);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/util/DateUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */