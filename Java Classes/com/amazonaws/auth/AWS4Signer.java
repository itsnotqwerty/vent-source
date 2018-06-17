package com.amazonaws.auth;

import com.amazonaws.AmazonClientException;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.util.AwsHostNameUtils;
import com.amazonaws.util.BinaryUtils;
import com.amazonaws.util.DateUtils;
import com.amazonaws.util.HttpUtils;
import com.amazonaws.util.StringUtils;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URI;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class AWS4Signer
  extends AbstractAWSSigner
  implements RegionAwareSigner, ServiceAwareSigner
{
  protected static final Log alS = LogFactory.getLog(AWS4Signer.class);
  protected String alN;
  protected String amR;
  protected Date amS;
  protected boolean amT;
  
  public AWS4Signer()
  {
    this(true);
  }
  
  public AWS4Signer(boolean paramBoolean)
  {
    this.amT = paramBoolean;
  }
  
  private static boolean O(String paramString)
  {
    return (paramString.equalsIgnoreCase("date")) || (paramString.equalsIgnoreCase("Content-MD5")) || (paramString.equalsIgnoreCase("host")) || (paramString.startsWith("x-amz")) || (paramString.startsWith("X-Amz"));
  }
  
  private String c(URI paramURI)
  {
    if (this.amR != null) {
      return this.amR;
    }
    return AwsHostNameUtils.i(paramURI.getHost(), this.alN);
  }
  
  private static String d(Request<?> paramRequest)
  {
    Object localObject = new ArrayList();
    ((List)localObject).addAll(paramRequest.getHeaders().keySet());
    Collections.sort((List)localObject, String.CASE_INSENSITIVE_ORDER);
    StringBuilder localStringBuilder = new StringBuilder();
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      String str2 = (String)((Iterator)localObject).next();
      if (O(str2))
      {
        String str1 = StringUtils.aC(str2).replaceAll("\\s+", " ");
        str2 = (String)paramRequest.getHeaders().get(str2);
        localStringBuilder.append(str1).append(":");
        if (str2 != null) {
          localStringBuilder.append(str2.replaceAll("\\s+", " "));
        }
        localStringBuilder.append("\n");
      }
    }
    return localStringBuilder.toString();
  }
  
  private String d(URI paramURI)
  {
    if (this.alN != null) {
      return this.alN;
    }
    return AwsHostNameUtils.e(paramURI);
  }
  
  private static String e(Request<?> paramRequest)
  {
    Object localObject = new ArrayList();
    ((List)localObject).addAll(paramRequest.getHeaders().keySet());
    Collections.sort((List)localObject, String.CASE_INSENSITIVE_ORDER);
    paramRequest = new StringBuilder();
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      String str = (String)((Iterator)localObject).next();
      if (O(str))
      {
        if (paramRequest.length() > 0) {
          paramRequest.append(";");
        }
        paramRequest.append(StringUtils.aC(str));
      }
    }
    return paramRequest.toString();
  }
  
  public final void N(String paramString)
  {
    this.amR = paramString;
  }
  
  public void a(Request<?> paramRequest, HeaderSigningResult paramHeaderSigningResult) {}
  
  public final void a(Request<?> paramRequest, AWSCredentials paramAWSCredentials)
  {
    if ((paramAWSCredentials instanceof AnonymousAWSCredentials)) {
      return;
    }
    Object localObject = a(paramAWSCredentials);
    if ((localObject instanceof AWSSessionCredentials)) {
      a(paramRequest, (AWSSessionCredentials)localObject);
    }
    String str1 = paramRequest.jt().getHost();
    paramAWSCredentials = str1;
    if (HttpUtils.f(paramRequest.jt())) {
      paramAWSCredentials = str1 + ":" + paramRequest.jt().getPort();
    }
    paramRequest.addHeader("Host", paramAWSCredentials);
    paramAWSCredentials = cn(j(paramRequest));
    if (this.amS != null) {
      paramAWSCredentials = this.amS;
    }
    long l = paramAWSCredentials.getTime();
    paramAWSCredentials = DateUtils.a("yyyyMMdd", new Date(l));
    str1 = c(paramRequest.jt());
    String str2 = d(paramRequest.jt());
    str2 = paramAWSCredentials + "/" + str1 + "/" + str2 + "/aws4_request";
    String str6 = f(paramRequest);
    str1 = DateUtils.a("yyyyMMdd'T'HHmmss'Z'", new Date(l));
    paramRequest.addHeader("X-Amz-Date", str1);
    if ((paramRequest.getHeaders().get("x-amz-content-sha256") != null) && (((String)paramRequest.getHeaders().get("x-amz-content-sha256")).equals("required"))) {
      paramRequest.addHeader("x-amz-content-sha256", str6);
    }
    str2 = ((AWSCredentials)localObject).jw() + "/" + str2;
    String str4 = c(paramRequest.jt());
    String str5 = d(paramRequest.jt());
    String str3 = paramAWSCredentials + "/" + str4 + "/" + str5 + "/aws4_request";
    String str7 = HttpUtils.k(paramRequest.jt().getPath(), paramRequest.jr());
    str6 = paramRequest.js().toString() + "\n" + b(str7, this.amT) + "\n" + g(paramRequest) + "\n" + d(paramRequest) + "\n" + e(paramRequest) + "\n" + str6;
    alS.debug("AWS4 Canonical Request: '\"" + str6 + "\"");
    str6 = "AWS4-HMAC-SHA256" + "\n" + str1 + "\n" + str3 + "\n" + BinaryUtils.h(AbstractAWSSigner.Q(str6));
    alS.debug("AWS4 String to Sign: '\"" + str6 + "\"");
    paramAWSCredentials = a("aws4_request", a(str5, a(str4, a(paramAWSCredentials, ("AWS4" + ((AWSCredentials)localObject).jx()).getBytes(StringUtils.avd), SigningAlgorithm.anE), SigningAlgorithm.anE), SigningAlgorithm.anE), SigningAlgorithm.anE);
    paramAWSCredentials = new HeaderSigningResult(str1, str3, paramAWSCredentials, a(str6.getBytes(StringUtils.avd), paramAWSCredentials, SigningAlgorithm.anE));
    str1 = "Credential=" + str2;
    localObject = "SignedHeaders=" + e(paramRequest);
    str2 = "Signature=" + BinaryUtils.h(paramAWSCredentials.getSignature());
    paramRequest.addHeader("Authorization", "AWS4-HMAC-SHA256 " + str1 + ", " + (String)localObject + ", " + str2);
    a(paramRequest, paramAWSCredentials);
  }
  
  protected final void a(Request<?> paramRequest, AWSSessionCredentials paramAWSSessionCredentials)
  {
    paramRequest.addHeader("x-amz-security-token", paramAWSSessionCredentials.jz());
  }
  
  public String f(Request<?> paramRequest)
  {
    if (HttpUtils.n(paramRequest))
    {
      paramRequest = HttpUtils.o(paramRequest);
      if (paramRequest == null) {
        paramRequest = new ByteArrayInputStream(new byte[0]);
      }
    }
    for (;;)
    {
      paramRequest.mark(-1);
      String str = BinaryUtils.h(d(paramRequest));
      try
      {
        paramRequest.reset();
        return str;
      }
      catch (IOException paramRequest)
      {
        throw new AmazonClientException("Unable to reset stream after calculating AWS4 signature", paramRequest);
      }
      paramRequest = new ByteArrayInputStream(paramRequest.getBytes(StringUtils.avd));
      continue;
      paramRequest = AbstractAWSSigner.i(paramRequest);
    }
  }
  
  public final void setServiceName(String paramString)
  {
    this.alN = paramString;
  }
  
  protected static class HeaderSigningResult
  {
    public final String amU;
    public final String amV;
    public final byte[] amW;
    private final byte[] amX;
    
    public HeaderSigningResult(String paramString1, String paramString2, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
    {
      this.amU = paramString1;
      this.amV = paramString2;
      this.amW = paramArrayOfByte1;
      this.amX = paramArrayOfByte2;
    }
    
    public final byte[] getSignature()
    {
      byte[] arrayOfByte = new byte[this.amX.length];
      System.arraycopy(this.amX, 0, arrayOfByte, 0, this.amX.length);
      return arrayOfByte;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/auth/AWS4Signer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */