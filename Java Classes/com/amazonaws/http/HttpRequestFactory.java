package com.amazonaws.http;

import com.amazonaws.ClientConfiguration;
import com.amazonaws.Request;
import com.amazonaws.util.HttpUtils;
import com.amazonaws.util.StringUtils;
import java.net.URI;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class HttpRequestFactory
{
  static void a(Map<String, String> paramMap, Request<?> paramRequest, ExecutionContext paramExecutionContext, ClientConfiguration paramClientConfiguration)
  {
    URI localURI = paramRequest.jt();
    String str = localURI.getHost();
    Object localObject = str;
    if (HttpUtils.f(localURI)) {
      localObject = str + ":" + localURI.getPort();
    }
    paramMap.put("Host", localObject);
    paramRequest = paramRequest.getHeaders().entrySet().iterator();
    while (paramRequest.hasNext())
    {
      localObject = (Map.Entry)paramRequest.next();
      paramMap.put(((Map.Entry)localObject).getKey(), ((Map.Entry)localObject).getValue());
    }
    if ((paramMap.get("Content-Type") == null) || (((String)paramMap.get("Content-Type")).isEmpty())) {
      paramMap.put("Content-Type", "application/x-www-form-urlencoded; charset=" + StringUtils.aC("UTF-8"));
    }
    if ((paramExecutionContext != null) && (paramExecutionContext.anV != null))
    {
      paramRequest = paramExecutionContext.anV;
      if (!paramClientConfiguration.amh.contains(paramRequest)) {
        break label229;
      }
    }
    label229:
    for (paramRequest = paramClientConfiguration.amh;; paramRequest = paramClientConfiguration.amh + " " + paramRequest)
    {
      paramMap.put("User-Agent", paramRequest);
      return;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/http/HttpRequestFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */