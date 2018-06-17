package com.amazonaws;

import com.amazonaws.auth.RegionAwareSigner;
import com.amazonaws.auth.Signer;
import com.amazonaws.auth.SignerFactory;
import com.amazonaws.handlers.RequestHandler2;
import com.amazonaws.http.AmazonHttpClient;
import com.amazonaws.http.HttpClient;
import com.amazonaws.metrics.AwsSdkMetrics;
import com.amazonaws.metrics.RequestMetricCollector;
import com.amazonaws.regions.Region;
import com.amazonaws.util.AWSRequestMetrics;
import com.amazonaws.util.AWSRequestMetrics.Field;
import com.amazonaws.util.AwsHostNameUtils;
import com.amazonaws.util.Classes;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.TimingInfo;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public abstract class AmazonWebServiceClient
{
  private static final Log alS = LogFactory.getLog(AmazonWebServiceClient.class);
  private volatile String alN;
  protected volatile URI alT;
  protected volatile String alU;
  protected ClientConfiguration alV;
  protected AmazonHttpClient alW;
  protected final List<RequestHandler2> alX;
  protected int alY;
  protected volatile Signer alZ;
  
  protected AmazonWebServiceClient(ClientConfiguration paramClientConfiguration, HttpClient paramHttpClient)
  {
    this.alV = paramClientConfiguration;
    this.alW = new AmazonHttpClient(paramClientConfiguration, paramHttpClient);
    this.alX = new CopyOnWriteArrayList();
  }
  
  private URI K(String paramString)
    throws IllegalArgumentException
  {
    String str = paramString;
    if (!paramString.contains("://")) {
      str = this.alV.amk.toString() + "://" + paramString;
    }
    try
    {
      paramString = new URI(str);
      return paramString;
    }
    catch (URISyntaxException paramString)
    {
      throw new IllegalArgumentException(paramString);
    }
  }
  
  private Signer a(String paramString1, String paramString2, String paramString3, boolean paramBoolean)
  {
    Object localObject = this.alV.amw;
    if (localObject == null)
    {
      paramString1 = SignerFactory.d(paramString1, paramString2);
      if ((paramString1 instanceof RegionAwareSigner))
      {
        localObject = (RegionAwareSigner)paramString1;
        if (paramString3 == null) {
          break label57;
        }
        ((RegionAwareSigner)localObject).N(paramString3);
      }
    }
    label57:
    while ((paramString2 == null) || (!paramBoolean))
    {
      return paramString1;
      paramString1 = SignerFactory.e((String)localObject, paramString1);
      break;
    }
    ((RegionAwareSigner)localObject).N(paramString2);
    return paramString1;
  }
  
  private Signer a(URI paramURI, String paramString, boolean paramBoolean)
  {
    if (paramURI == null) {
      throw new IllegalArgumentException("Endpoint is not set. Use setEndpoint to set an endpoint before performing any request.");
    }
    String str = jn();
    return a(str, AwsHostNameUtils.i(paramURI.getHost(), str), paramString, paramBoolean);
  }
  
  public void J(String paramString)
    throws IllegalArgumentException
  {
    paramString = K(paramString);
    Signer localSigner = a(paramString, this.alU, false);
    try
    {
      this.alT = paramString;
      this.alZ = localSigner;
      return;
    }
    finally {}
  }
  
  public final Signer a(URI paramURI)
  {
    return a(paramURI, this.alU, true);
  }
  
  public void a(Region paramRegion)
    throws IllegalArgumentException
  {
    if (paramRegion == null) {
      throw new IllegalArgumentException("No region provided");
    }
    String str2 = jn();
    Object localObject;
    if (paramRegion.aoS.containsKey(str2))
    {
      String str1 = (String)paramRegion.aoS.get(str2);
      int i = str1.indexOf("://");
      localObject = str1;
      if (i >= 0) {
        localObject = str1.substring(i + 3);
      }
    }
    for (;;)
    {
      localObject = K((String)localObject);
      paramRegion = a(str2, paramRegion.name, this.alU, false);
      try
      {
        this.alT = ((URI)localObject);
        this.alZ = paramRegion;
        return;
      }
      finally {}
      localObject = String.format("%s.%s.%s", new Object[] { str2, paramRegion.name, paramRegion.domain });
      alS.info("{" + str2 + ", " + paramRegion.name + "} was not found in region metadata, trying to construct an endpoint using the standard pattern for this region: '" + (String)localObject + "'.");
    }
  }
  
  @Deprecated
  protected final void a(AWSRequestMetrics paramAWSRequestMetrics, Request<?> paramRequest)
  {
    if (paramRequest != null)
    {
      paramAWSRequestMetrics.b(AWSRequestMetrics.Field.auf);
      paramAWSRequestMetrics.kd().kj();
      paramRequest = paramRequest.jq().amb;
      paramAWSRequestMetrics = paramRequest;
      if (paramRequest == null)
      {
        paramRequest = this.alW.amb;
        paramAWSRequestMetrics = paramRequest;
        if (paramRequest == null) {
          paramAWSRequestMetrics = AwsSdkMetrics.jJ();
        }
      }
      paramAWSRequestMetrics.jO();
    }
  }
  
  @Deprecated
  protected final boolean a(AmazonWebServiceRequest paramAmazonWebServiceRequest)
  {
    paramAmazonWebServiceRequest = paramAmazonWebServiceRequest.amb;
    if ((paramAmazonWebServiceRequest != null) && (paramAmazonWebServiceRequest.isEnabled())) {}
    do
    {
      return true;
      RequestMetricCollector localRequestMetricCollector = this.alW.amb;
      paramAmazonWebServiceRequest = localRequestMetricCollector;
      if (localRequestMetricCollector == null) {
        paramAmazonWebServiceRequest = AwsSdkMetrics.jJ();
      }
    } while ((paramAmazonWebServiceRequest != null) && (paramAmazonWebServiceRequest.isEnabled()));
    return false;
  }
  
  protected final String jn()
  {
    String str3;
    int j;
    int i;
    int k;
    if (this.alN == null)
    {
      try
      {
        if (this.alN != null) {
          break label217;
        }
        str3 = Classes.a(AmazonWebServiceClient.class, this).getSimpleName();
        String str1 = ServiceNameFactory.M(str3);
        if (str1 != null)
        {
          this.alN = str1;
          return str1;
        }
        j = str3.indexOf("JavaClient");
        i = j;
        if (j == -1)
        {
          j = str3.indexOf("Client");
          i = j;
          if (j == -1) {
            throw new IllegalStateException("Unrecognized suffix for the AWS http client class name " + str3);
          }
        }
      }
      finally {}
      k = str3.indexOf("Amazon");
      if (k != -1) {
        break label229;
      }
      k = str3.indexOf("AWS");
      if (k != -1) {
        break label224;
      }
      throw new IllegalStateException("Unrecognized prefix for the AWS http client class name " + str3);
    }
    for (;;)
    {
      if (k >= i) {
        throw new IllegalStateException("Unrecognized AWS http client class name " + str3);
      }
      String str2 = StringUtils.aC(str3.substring(j + k, i));
      break;
      label217:
      return this.alN;
      label224:
      j = 3;
      continue;
      label229:
      j = 6;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/AmazonWebServiceClient.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */