package com.amazonaws.http;

import com.amazonaws.util.StringUtils;
import java.io.InputStream;
import java.net.URI;
import java.util.Collections;
import java.util.Map;

public class HttpRequest
{
  final InputStream amE;
  URI aoe;
  boolean aof;
  final Map<String, String> headers;
  final String method;
  
  public HttpRequest(String paramString, URI paramURI, Map<String, String> paramMap, InputStream paramInputStream)
  {
    this.method = StringUtils.aD(paramString);
    this.aoe = paramURI;
    this.headers = Collections.unmodifiableMap(paramMap);
    this.amE = paramInputStream;
  }
  
  public final long getContentLength()
  {
    if (this.headers == null) {
      return 0L;
    }
    String str = (String)this.headers.get("Content-Length");
    if ((str == null) || (str.isEmpty())) {
      return 0L;
    }
    return Long.valueOf(str).longValue();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/http/HttpRequest.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */