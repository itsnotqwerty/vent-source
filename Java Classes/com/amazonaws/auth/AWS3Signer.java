package com.amazonaws.auth;

import com.amazonaws.AmazonClientException;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.util.DateUtils;
import com.amazonaws.util.HttpUtils;
import com.amazonaws.util.StringUtils;
import java.net.URI;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;
import java.util.UUID;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class AWS3Signer
  extends AbstractAWSSigner
{
  private static final Log alS = LogFactory.getLog(AWS3Signer.class);
  private String amQ;
  
  private static String a(Request<?> paramRequest)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("SignedHeaders=");
    paramRequest = b(paramRequest).iterator();
    for (int i = 1; paramRequest.hasNext(); i = 0)
    {
      String str = (String)paramRequest.next();
      if (i == 0) {
        localStringBuilder.append(";");
      }
      localStringBuilder.append(str);
    }
    return localStringBuilder.toString();
  }
  
  private static List<String> b(Request<?> paramRequest)
  {
    ArrayList localArrayList = new ArrayList();
    paramRequest = paramRequest.getHeaders().entrySet().iterator();
    while (paramRequest.hasNext())
    {
      String str1 = (String)((Map.Entry)paramRequest.next()).getKey();
      String str2 = StringUtils.aC(str1);
      if ((str2.startsWith("x-amz")) || (str2.equals("host"))) {
        localArrayList.add(str1);
      }
    }
    Collections.sort(localArrayList);
    return localArrayList;
  }
  
  private static String c(Request<?> paramRequest)
  {
    Object localObject2 = b(paramRequest);
    int i = 0;
    while (i < ((List)localObject2).size())
    {
      ((List)localObject2).set(i, StringUtils.aC((String)((List)localObject2).get(i)));
      i += 1;
    }
    Object localObject1 = new TreeMap();
    paramRequest = paramRequest.getHeaders().entrySet().iterator();
    while (paramRequest.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramRequest.next();
      if (((List)localObject2).contains(StringUtils.aC((String)localEntry.getKey()))) {
        ((SortedMap)localObject1).put(StringUtils.aC((String)localEntry.getKey()), localEntry.getValue());
      }
    }
    paramRequest = new StringBuilder();
    localObject1 = ((SortedMap)localObject1).entrySet().iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (Map.Entry)((Iterator)localObject1).next();
      paramRequest.append(StringUtils.aC((String)((Map.Entry)localObject2).getKey())).append(":").append((String)((Map.Entry)localObject2).getValue()).append("\n");
    }
    return paramRequest.toString();
  }
  
  public final void a(Request<?> paramRequest, AWSCredentials paramAWSCredentials)
    throws AmazonClientException
  {
    if ((paramAWSCredentials instanceof AnonymousAWSCredentials)) {
      return;
    }
    AWSCredentials localAWSCredentials = a(paramAWSCredentials);
    SigningAlgorithm localSigningAlgorithm = SigningAlgorithm.anE;
    UUID.randomUUID().toString();
    paramAWSCredentials = DateUtils.i(cn(j(paramRequest)));
    if (this.amQ != null) {
      paramAWSCredentials = this.amQ;
    }
    paramRequest.addHeader("Date", paramAWSCredentials);
    paramRequest.addHeader("X-Amz-Date", paramAWSCredentials);
    Object localObject = paramRequest.jt().getHost();
    paramAWSCredentials = (AWSCredentials)localObject;
    if (HttpUtils.f(paramRequest.jt())) {
      paramAWSCredentials = (String)localObject + ":" + paramRequest.jt().getPort();
    }
    paramRequest.addHeader("Host", paramAWSCredentials);
    if ((localAWSCredentials instanceof AWSSessionCredentials)) {
      a(paramRequest, (AWSSessionCredentials)localAWSCredentials);
    }
    paramAWSCredentials = HttpUtils.k(paramRequest.jt().getPath(), paramRequest.jr());
    paramAWSCredentials = paramRequest.js().toString() + "\n" + R(paramAWSCredentials) + "\n" + e(paramRequest.getParameters()) + "\n" + c(paramRequest) + "\n" + new String(AbstractAWSSigner.h(paramRequest), StringUtils.avd);
    localObject = AbstractAWSSigner.Q(paramAWSCredentials);
    alS.debug("Calculated StringToSign: " + paramAWSCredentials);
    paramAWSCredentials = a((byte[])localObject, localAWSCredentials.jx(), localSigningAlgorithm);
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("AWS3 ");
    ((StringBuilder)localObject).append("AWSAccessKeyId=" + localAWSCredentials.jw() + ",");
    ((StringBuilder)localObject).append("Algorithm=" + localSigningAlgorithm.toString() + ",");
    ((StringBuilder)localObject).append(a(paramRequest) + ",");
    ((StringBuilder)localObject).append("Signature=" + paramAWSCredentials);
    paramRequest.addHeader("X-Amzn-Authorization", ((StringBuilder)localObject).toString());
  }
  
  protected final void a(Request<?> paramRequest, AWSSessionCredentials paramAWSSessionCredentials)
  {
    paramRequest.addHeader("x-amz-security-token", paramAWSSessionCredentials.jz());
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/auth/AWS3Signer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */