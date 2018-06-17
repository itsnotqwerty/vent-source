package com.google.android.gms.analytics;

import android.text.TextUtils;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;

public abstract class l<T extends l>
{
  public static String L(Object paramObject)
  {
    return a(paramObject, 0);
  }
  
  protected static String a(Object paramObject, int paramInt)
  {
    if (paramInt > 10) {
      return "ERROR: Recursive toString calls";
    }
    if (paramObject == null) {
      return "";
    }
    if ((paramObject instanceof String))
    {
      if (TextUtils.isEmpty((String)paramObject)) {
        return "";
      }
      return paramObject.toString();
    }
    if ((paramObject instanceof Integer))
    {
      if (((Integer)paramObject).intValue() == 0) {
        return "";
      }
      return paramObject.toString();
    }
    if ((paramObject instanceof Long))
    {
      if (((Long)paramObject).longValue() == 0L) {
        return "";
      }
      return paramObject.toString();
    }
    if ((paramObject instanceof Double))
    {
      if (((Double)paramObject).doubleValue() == 0.0D) {
        return "";
      }
      return paramObject.toString();
    }
    if ((paramObject instanceof Boolean))
    {
      if (!((Boolean)paramObject).booleanValue()) {
        return "";
      }
      return paramObject.toString();
    }
    StringBuilder localStringBuilder;
    int i;
    Object localObject;
    if ((paramObject instanceof List))
    {
      localStringBuilder = new StringBuilder();
      if (paramInt > 0) {
        localStringBuilder.append("[");
      }
      paramObject = (List)paramObject;
      i = localStringBuilder.length();
      paramObject = ((List)paramObject).iterator();
      while (((Iterator)paramObject).hasNext())
      {
        localObject = ((Iterator)paramObject).next();
        if (localStringBuilder.length() > i) {
          localStringBuilder.append(", ");
        }
        localStringBuilder.append(a(localObject, paramInt + 1));
      }
      if (paramInt > 0) {
        localStringBuilder.append("]");
      }
      return localStringBuilder.toString();
    }
    if ((paramObject instanceof Map))
    {
      localStringBuilder = new StringBuilder();
      paramObject = new TreeMap((Map)paramObject).entrySet().iterator();
      int k = 0;
      i = 0;
      while (((Iterator)paramObject).hasNext())
      {
        localObject = (Map.Entry)((Iterator)paramObject).next();
        String str = a(((Map.Entry)localObject).getValue(), paramInt + 1);
        if (!TextUtils.isEmpty(str))
        {
          int m = k;
          int j = i;
          if (paramInt > 0)
          {
            m = k;
            j = i;
            if (i == 0)
            {
              localStringBuilder.append("{");
              j = 1;
              m = localStringBuilder.length();
            }
          }
          if (localStringBuilder.length() > m) {
            localStringBuilder.append(", ");
          }
          localStringBuilder.append((String)((Map.Entry)localObject).getKey());
          localStringBuilder.append('=');
          localStringBuilder.append(str);
          k = m;
          i = j;
        }
      }
      if (i != 0) {
        localStringBuilder.append("}");
      }
      return localStringBuilder.toString();
    }
    return paramObject.toString();
  }
  
  public static String i(Map paramMap)
  {
    return a(paramMap, 1);
  }
  
  public abstract void b(T paramT);
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/analytics/l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */