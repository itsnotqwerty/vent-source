package com.amazonaws;

import com.amazonaws.http.HttpMethodName;
import com.amazonaws.util.AWSRequestMetrics;
import java.io.InputStream;
import java.net.URI;
import java.util.Map;

public abstract interface Request<T>
{
  public abstract void L(String paramString);
  
  public abstract void a(HttpMethodName paramHttpMethodName);
  
  public abstract void a(AWSRequestMetrics paramAWSRequestMetrics);
  
  public abstract void addHeader(String paramString1, String paramString2);
  
  public abstract void b(URI paramURI);
  
  public abstract void c(String paramString1, String paramString2);
  
  public abstract void c(Map<String, String> paramMap);
  
  public abstract void cl(int paramInt);
  
  public abstract void d(Map<String, String> paramMap);
  
  public abstract InputStream getContent();
  
  public abstract Map<String, String> getHeaders();
  
  public abstract Map<String, String> getParameters();
  
  public abstract String getServiceName();
  
  public abstract boolean isStreaming();
  
  public abstract AmazonWebServiceRequest jq();
  
  public abstract String jr();
  
  public abstract HttpMethodName js();
  
  public abstract URI jt();
  
  public abstract int ju();
  
  public abstract void setContent(InputStream paramInputStream);
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/Request.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */