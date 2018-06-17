package com.amazonaws.services.s3.internal;

import com.amazonaws.Request;
import com.amazonaws.util.StringUtils;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

public class RestUtils
{
  private static final List<String> apY = Arrays.asList(new String[] { "acl", "torrent", "logging", "location", "policy", "requestPayment", "versioning", "versions", "versionId", "notification", "uploadId", "uploads", "partNumber", "website", "delete", "lifecycle", "tagging", "cors", "restore", "accelerate", "response-cache-control", "response-content-disposition", "response-content-encoding", "response-content-language", "response-content-type", "response-expires" });
  
  public static <T> String a(String paramString1, String paramString2, Request<T> paramRequest)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramString1 + "\n");
    Object localObject1 = paramRequest.getHeaders();
    paramString1 = new TreeMap();
    Object localObject2;
    if ((localObject1 != null) && (((Map)localObject1).size() > 0))
    {
      localObject1 = ((Map)localObject1).entrySet().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        Object localObject3 = (Map.Entry)((Iterator)localObject1).next();
        localObject2 = (String)((Map.Entry)localObject3).getKey();
        localObject3 = (String)((Map.Entry)localObject3).getValue();
        if (localObject2 != null)
        {
          localObject2 = StringUtils.aC(((String)localObject2).toString());
          if ((((String)localObject2).equals("content-type")) || (((String)localObject2).equals("content-md5")) || (((String)localObject2).equals("date")) || (((String)localObject2).startsWith("x-amz-"))) {
            paramString1.put(localObject2, localObject3);
          }
        }
      }
    }
    if (paramString1.containsKey("x-amz-date")) {
      paramString1.put("date", "");
    }
    if (!paramString1.containsKey("content-type")) {
      paramString1.put("content-type", "");
    }
    if (!paramString1.containsKey("content-md5")) {
      paramString1.put("content-md5", "");
    }
    localObject1 = paramRequest.getParameters().entrySet().iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (Map.Entry)((Iterator)localObject1).next();
      if (((String)((Map.Entry)localObject2).getKey()).startsWith("x-amz-")) {
        paramString1.put(((Map.Entry)localObject2).getKey(), ((Map.Entry)localObject2).getValue());
      }
    }
    paramString1 = paramString1.entrySet().iterator();
    if (paramString1.hasNext())
    {
      localObject2 = (Map.Entry)paramString1.next();
      localObject1 = (String)((Map.Entry)localObject2).getKey();
      localObject2 = (String)((Map.Entry)localObject2).getValue();
      if (((String)localObject1).startsWith("x-amz-"))
      {
        localStringBuilder.append((String)localObject1).append(':');
        if (localObject2 != null) {
          localStringBuilder.append((String)localObject2);
        }
      }
      for (;;)
      {
        localStringBuilder.append("\n");
        break;
        if (localObject2 != null) {
          localStringBuilder.append((String)localObject2);
        }
      }
    }
    localStringBuilder.append(paramString2);
    paramString1 = (String[])paramRequest.getParameters().keySet().toArray(new String[paramRequest.getParameters().size()]);
    Arrays.sort(paramString1);
    char c1 = '?';
    int j = paramString1.length;
    int i = 0;
    while (i < j)
    {
      paramString2 = paramString1[i];
      char c2 = c1;
      if (apY.contains(paramString2))
      {
        localStringBuilder.append(c1);
        localStringBuilder.append(paramString2);
        paramString2 = (String)paramRequest.getParameters().get(paramString2);
        if (paramString2 != null) {
          localStringBuilder.append("=").append(paramString2);
        }
        c2 = '&';
      }
      i += 1;
      c1 = c2;
    }
    return localStringBuilder.toString();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/services/s3/internal/RestUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */