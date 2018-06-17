package com.amazonaws.auth;

import com.amazonaws.AmazonClientException;
import com.amazonaws.Request;
import com.amazonaws.util.HttpUtils;
import com.amazonaws.util.StringUtils;
import java.net.URI;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.SortedMap;
import java.util.TimeZone;
import java.util.TreeMap;

public class QueryStringSigner
  extends AbstractAWSSigner
  implements Signer
{
  private Date amS;
  
  private static String f(Map<String, String> paramMap)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Object localObject = new TreeMap(String.CASE_INSENSITIVE_ORDER);
    ((SortedMap)localObject).putAll(paramMap);
    paramMap = ((SortedMap)localObject).entrySet().iterator();
    while (paramMap.hasNext())
    {
      localObject = (Map.Entry)paramMap.next();
      localStringBuilder.append((String)((Map.Entry)localObject).getKey());
      localStringBuilder.append((String)((Map.Entry)localObject).getValue());
    }
    return localStringBuilder.toString();
  }
  
  public final void a(Request<?> paramRequest, AWSCredentials paramAWSCredentials)
    throws AmazonClientException
  {
    Object localObject = SignatureVersion.anA;
    SigningAlgorithm localSigningAlgorithm = SigningAlgorithm.anE;
    AWSCredentials localAWSCredentials;
    int i;
    if (!(paramAWSCredentials instanceof AnonymousAWSCredentials))
    {
      localAWSCredentials = a(paramAWSCredentials);
      paramRequest.c("AWSAccessKeyId", localAWSCredentials.jw());
      paramRequest.c("SignatureVersion", ((SignatureVersion)localObject).toString());
      i = j(paramRequest);
      paramAWSCredentials = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
      paramAWSCredentials.setTimeZone(TimeZone.getTimeZone("UTC"));
      if (this.amS == null) {
        break label161;
      }
    }
    label161:
    for (paramAWSCredentials = paramAWSCredentials.format(this.amS);; paramAWSCredentials = paramAWSCredentials.format(cn(i)))
    {
      paramRequest.c("Timestamp", paramAWSCredentials);
      if ((localAWSCredentials instanceof AWSSessionCredentials)) {
        a(paramRequest, (AWSSessionCredentials)localAWSCredentials);
      }
      if (!((SignatureVersion)localObject).equals(SignatureVersion.anz)) {
        break;
      }
      paramAWSCredentials = f(paramRequest.getParameters());
      paramRequest.c("Signature", a(paramAWSCredentials, localAWSCredentials.jx(), localSigningAlgorithm));
      return;
    }
    if (((SignatureVersion)localObject).equals(SignatureVersion.anA))
    {
      paramRequest.c("SignatureMethod", localSigningAlgorithm.toString());
      URI localURI = paramRequest.jt();
      Map localMap = paramRequest.getParameters();
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("POST\n");
      localObject = StringUtils.aC(localURI.getHost());
      paramAWSCredentials = (AWSCredentials)localObject;
      if (HttpUtils.f(localURI)) {
        paramAWSCredentials = (String)localObject + ":" + localURI.getPort();
      }
      localStringBuilder.append(paramAWSCredentials).append("\n");
      paramAWSCredentials = "";
      if (paramRequest.jt().getPath() != null) {
        paramAWSCredentials = "" + paramRequest.jt().getPath();
      }
      if (paramRequest.jr() != null)
      {
        localObject = paramAWSCredentials;
        if (paramAWSCredentials.length() > 0)
        {
          localObject = paramAWSCredentials;
          if (!paramAWSCredentials.endsWith("/"))
          {
            localObject = paramAWSCredentials;
            if (!paramRequest.jr().startsWith("/")) {
              localObject = paramAWSCredentials + "/";
            }
          }
        }
        localObject = (String)localObject + paramRequest.jr();
      }
      for (;;)
      {
        paramAWSCredentials = (AWSCredentials)localObject;
        if (!((String)localObject).startsWith("/")) {
          paramAWSCredentials = "/" + (String)localObject;
        }
        localObject = paramAWSCredentials;
        if (paramAWSCredentials.startsWith("//")) {
          localObject = paramAWSCredentials.substring(1);
        }
        localStringBuilder.append((String)localObject).append("\n");
        localStringBuilder.append(e(localMap));
        paramAWSCredentials = localStringBuilder.toString();
        break;
        localObject = paramAWSCredentials;
        if (!paramAWSCredentials.endsWith("/")) {
          localObject = paramAWSCredentials + "/";
        }
      }
    }
    throw new AmazonClientException("Invalid Signature Version specified");
  }
  
  protected final void a(Request<?> paramRequest, AWSSessionCredentials paramAWSSessionCredentials)
  {
    paramRequest.c("SecurityToken", paramAWSSessionCredentials.jz());
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/auth/QueryStringSigner.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */