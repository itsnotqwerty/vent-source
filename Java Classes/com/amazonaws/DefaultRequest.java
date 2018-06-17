package com.amazonaws;

import com.amazonaws.http.HttpMethodName;
import com.amazonaws.util.AWSRequestMetrics;
import java.io.InputStream;
import java.net.URI;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

public class DefaultRequest<T>
  implements Request<T>
{
  private String alN;
  private URI alT;
  private int alY;
  private boolean amA = false;
  private final Map<String, String> amB = new LinkedHashMap();
  private final AmazonWebServiceRequest amC;
  private HttpMethodName amD = HttpMethodName.anY;
  private InputStream amE;
  private AWSRequestMetrics amF;
  private String amz;
  private final Map<String, String> headers = new HashMap();
  
  public DefaultRequest(AmazonWebServiceRequest paramAmazonWebServiceRequest, String paramString)
  {
    this.alN = paramString;
    this.amC = paramAmazonWebServiceRequest;
  }
  
  public DefaultRequest(String paramString)
  {
    this(null, paramString);
  }
  
  public final void L(String paramString)
  {
    this.amz = paramString;
  }
  
  public final void a(HttpMethodName paramHttpMethodName)
  {
    this.amD = paramHttpMethodName;
  }
  
  @Deprecated
  public final void a(AWSRequestMetrics paramAWSRequestMetrics)
  {
    if (this.amF == null)
    {
      this.amF = paramAWSRequestMetrics;
      return;
    }
    throw new IllegalStateException("AWSRequestMetrics has already been set on this request");
  }
  
  public final void addHeader(String paramString1, String paramString2)
  {
    this.headers.put(paramString1, paramString2);
  }
  
  public final void b(URI paramURI)
  {
    this.alT = paramURI;
  }
  
  public final void c(String paramString1, String paramString2)
  {
    this.amB.put(paramString1, paramString2);
  }
  
  public final void c(Map<String, String> paramMap)
  {
    this.headers.clear();
    this.headers.putAll(paramMap);
  }
  
  public final void cl(int paramInt)
  {
    this.alY = paramInt;
  }
  
  public final void d(Map<String, String> paramMap)
  {
    this.amB.clear();
    this.amB.putAll(paramMap);
  }
  
  public final InputStream getContent()
  {
    return this.amE;
  }
  
  public final Map<String, String> getHeaders()
  {
    return this.headers;
  }
  
  public final Map<String, String> getParameters()
  {
    return this.amB;
  }
  
  public final String getServiceName()
  {
    return this.alN;
  }
  
  public final boolean isStreaming()
  {
    return this.amA;
  }
  
  public final AmazonWebServiceRequest jq()
  {
    return this.amC;
  }
  
  public final String jr()
  {
    return this.amz;
  }
  
  public final HttpMethodName js()
  {
    return this.amD;
  }
  
  public final URI jt()
  {
    return this.alT;
  }
  
  public final int ju()
  {
    return this.alY;
  }
  
  public final void setContent(InputStream paramInputStream)
  {
    this.amE = paramInputStream;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(this.amD).append(" ");
    localStringBuilder.append(this.alT).append(" ");
    Object localObject = this.amz;
    if (localObject == null) {
      localStringBuilder.append("/");
    }
    String str1;
    String str2;
    for (;;)
    {
      localStringBuilder.append(" ");
      if (this.amB.isEmpty()) {
        break label183;
      }
      localStringBuilder.append("Parameters: (");
      localObject = this.amB.keySet().iterator();
      while (((Iterator)localObject).hasNext())
      {
        str1 = (String)((Iterator)localObject).next();
        str2 = (String)this.amB.get(str1);
        localStringBuilder.append(str1).append(": ").append(str2).append(", ");
      }
      if (!((String)localObject).startsWith("/")) {
        localStringBuilder.append("/");
      }
      localStringBuilder.append((String)localObject);
    }
    localStringBuilder.append(") ");
    label183:
    if (!this.headers.isEmpty())
    {
      localStringBuilder.append("Headers: (");
      localObject = this.headers.keySet().iterator();
      while (((Iterator)localObject).hasNext())
      {
        str1 = (String)((Iterator)localObject).next();
        str2 = (String)this.headers.get(str1);
        localStringBuilder.append(str1).append(": ").append(str2).append(", ");
      }
      localStringBuilder.append(") ");
    }
    return localStringBuilder.toString();
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/DefaultRequest.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */