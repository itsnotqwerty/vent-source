package com.amazonaws.auth;

import com.amazonaws.AmazonClientException;
import com.amazonaws.Request;
import com.amazonaws.SDKGlobalConfiguration;
import com.amazonaws.internal.SdkDigestInputStream;
import com.amazonaws.util.Base64;
import com.amazonaws.util.BinaryUtils;
import com.amazonaws.util.HttpUtils;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.security.DigestInputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

public abstract class AbstractAWSSigner
  implements Signer
{
  public static final String anb = BinaryUtils.h(Q(""));
  private static final ThreadLocal<MessageDigest> anc = new ThreadLocal()
  {
    private static MessageDigest jB()
    {
      try
      {
        MessageDigest localMessageDigest = MessageDigest.getInstance("SHA-256");
        return localMessageDigest;
      }
      catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
      {
        throw new AmazonClientException("Unable to get SHA256 Function" + localNoSuchAlgorithmException.getMessage(), localNoSuchAlgorithmException);
      }
    }
  };
  
  public static byte[] P(String paramString)
    throws AmazonClientException
  {
    return Q(paramString);
  }
  
  static byte[] Q(String paramString)
    throws AmazonClientException
  {
    try
    {
      MessageDigest localMessageDigest = jA();
      localMessageDigest.update(paramString.getBytes(StringUtils.avd));
      paramString = localMessageDigest.digest();
      return paramString;
    }
    catch (Exception paramString)
    {
      throw new AmazonClientException("Unable to compute hash while signing request: " + paramString.getMessage(), paramString);
    }
  }
  
  protected static String R(String paramString)
  {
    return b(paramString, true);
  }
  
  protected static AWSCredentials a(AWSCredentials paramAWSCredentials)
  {
    String str1 = null;
    label102:
    label105:
    for (;;)
    {
      String str3;
      String str2;
      try
      {
        str3 = paramAWSCredentials.jw();
        str2 = paramAWSCredentials.jx();
        if ((paramAWSCredentials instanceof AWSSessionCredentials)) {
          str1 = ((AWSSessionCredentials)paramAWSCredentials).jz();
        }
        if (str2 == null) {
          break label105;
        }
        str2 = str2.trim();
        if (str3 == null) {
          break label102;
        }
        str3 = str3.trim();
        String str4 = str1;
        if (str1 != null) {
          str4 = str1.trim();
        }
        if ((paramAWSCredentials instanceof AWSSessionCredentials)) {
          return new BasicSessionCredentials(str3, str2, str4);
        }
      }
      finally {}
      return new BasicAWSCredentials(str3, str2);
    }
  }
  
  protected static String a(String paramString1, String paramString2, SigningAlgorithm paramSigningAlgorithm)
    throws AmazonClientException
  {
    return a(paramString1.getBytes(StringUtils.avd), paramString2, paramSigningAlgorithm);
  }
  
  protected static String a(byte[] paramArrayOfByte, String paramString, SigningAlgorithm paramSigningAlgorithm)
    throws AmazonClientException
  {
    try
    {
      paramArrayOfByte = Base64.g(a(paramArrayOfByte, paramString.getBytes(StringUtils.avd), paramSigningAlgorithm));
      return paramArrayOfByte;
    }
    catch (Exception paramArrayOfByte)
    {
      throw new AmazonClientException("Unable to calculate a request signature: " + paramArrayOfByte.getMessage(), paramArrayOfByte);
    }
  }
  
  public static byte[] a(String paramString, byte[] paramArrayOfByte, SigningAlgorithm paramSigningAlgorithm)
    throws AmazonClientException
  {
    try
    {
      paramString = a(paramString.getBytes(StringUtils.avd), paramArrayOfByte, paramSigningAlgorithm);
      return paramString;
    }
    catch (Exception paramString)
    {
      throw new AmazonClientException("Unable to calculate a request signature: " + paramString.getMessage(), paramString);
    }
  }
  
  protected static byte[] a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, SigningAlgorithm paramSigningAlgorithm)
    throws AmazonClientException
  {
    try
    {
      Mac localMac = Mac.getInstance(paramSigningAlgorithm.toString());
      localMac.init(new SecretKeySpec(paramArrayOfByte2, paramSigningAlgorithm.toString()));
      paramArrayOfByte1 = localMac.doFinal(paramArrayOfByte1);
      return paramArrayOfByte1;
    }
    catch (Exception paramArrayOfByte1)
    {
      throw new AmazonClientException("Unable to calculate a request signature: " + paramArrayOfByte1.getMessage(), paramArrayOfByte1);
    }
  }
  
  protected static String b(String paramString, boolean paramBoolean)
  {
    if ((paramString == null) || (paramString.length() == 0)) {
      paramString = "/";
    }
    String str;
    do
    {
      return paramString;
      str = paramString;
      if (paramBoolean) {
        str = HttpUtils.c(paramString, true);
      }
      paramString = str;
    } while (str.startsWith("/"));
    return "/".concat(str);
  }
  
  protected static Date cn(int paramInt)
  {
    Date localDate2 = new Date();
    Date localDate1 = localDate2;
    if (paramInt != 0) {
      localDate1 = new Date(localDate2.getTime() - paramInt * 1000);
    }
    return localDate1;
  }
  
  protected static byte[] d(InputStream paramInputStream)
    throws AmazonClientException
  {
    try
    {
      paramInputStream = new SdkDigestInputStream(paramInputStream, jA());
      byte[] arrayOfByte = new byte['Ѐ'];
      while (paramInputStream.read(arrayOfByte) >= 0) {}
      paramInputStream = paramInputStream.getMessageDigest().digest();
      return paramInputStream;
    }
    catch (Exception paramInputStream)
    {
      throw new AmazonClientException("Unable to compute hash while signing request: " + paramInputStream.getMessage(), paramInputStream);
    }
  }
  
  protected static String e(Map<String, String> paramMap)
  {
    Object localObject1 = new TreeMap();
    paramMap = paramMap.entrySet().iterator();
    Object localObject2;
    while (paramMap.hasNext())
    {
      Object localObject3 = (Map.Entry)paramMap.next();
      localObject2 = (String)((Map.Entry)localObject3).getKey();
      localObject3 = (String)((Map.Entry)localObject3).getValue();
      ((SortedMap)localObject1).put(HttpUtils.c((String)localObject2, false), HttpUtils.c((String)localObject3, false));
    }
    paramMap = new StringBuilder();
    localObject1 = ((SortedMap)localObject1).entrySet().iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (Map.Entry)((Iterator)localObject1).next();
      paramMap.append((String)((Map.Entry)localObject2).getKey());
      paramMap.append("=");
      paramMap.append((String)((Map.Entry)localObject2).getValue());
      if (((Iterator)localObject1).hasNext()) {
        paramMap.append("&");
      }
    }
    return paramMap.toString();
  }
  
  public static byte[] e(byte[] paramArrayOfByte)
    throws AmazonClientException
  {
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("SHA-256");
      localMessageDigest.update(paramArrayOfByte);
      paramArrayOfByte = localMessageDigest.digest();
      return paramArrayOfByte;
    }
    catch (Exception paramArrayOfByte)
    {
      throw new AmazonClientException("Unable to compute hash while signing request: " + paramArrayOfByte.getMessage(), paramArrayOfByte);
    }
  }
  
  protected static String g(Request<?> paramRequest)
  {
    if (HttpUtils.n(paramRequest)) {
      return "";
    }
    return e(paramRequest.getParameters());
  }
  
  static byte[] h(Request<?> paramRequest)
  {
    paramRequest = i(paramRequest);
    ByteArrayOutputStream localByteArrayOutputStream;
    try
    {
      paramRequest.mark(-1);
      localByteArrayOutputStream = new ByteArrayOutputStream();
      byte[] arrayOfByte = new byte['᐀'];
      for (;;)
      {
        int i = paramRequest.read(arrayOfByte);
        if (i == -1) {
          break;
        }
        localByteArrayOutputStream.write(arrayOfByte, 0, i);
      }
      localByteArrayOutputStream.close();
    }
    catch (Exception paramRequest)
    {
      throw new AmazonClientException("Unable to read request payload to sign request: " + paramRequest.getMessage(), paramRequest);
    }
    paramRequest.reset();
    paramRequest = localByteArrayOutputStream.toByteArray();
    return paramRequest;
  }
  
  static InputStream i(Request<?> paramRequest)
  {
    try
    {
      InputStream localInputStream = paramRequest.getContent();
      Object localObject;
      if (localInputStream == null) {
        localObject = new ByteArrayInputStream(new byte[0]);
      }
      do
      {
        return (InputStream)localObject;
        localObject = localInputStream;
      } while ((localInputStream instanceof StringInputStream));
      if (!localInputStream.markSupported()) {
        throw new AmazonClientException("Unable to read request payload to sign request.");
      }
    }
    catch (Exception paramRequest)
    {
      throw new AmazonClientException("Unable to read request payload to sign request: " + paramRequest.getMessage(), paramRequest);
    }
    paramRequest = paramRequest.getContent();
    return paramRequest;
  }
  
  protected static int j(Request<?> paramRequest)
  {
    int i = paramRequest.ju();
    if (SDKGlobalConfiguration.jv() != 0) {
      i = SDKGlobalConfiguration.jv();
    }
    return i;
  }
  
  private static MessageDigest jA()
  {
    MessageDigest localMessageDigest = (MessageDigest)anc.get();
    localMessageDigest.reset();
    return localMessageDigest;
  }
  
  public abstract void a(Request<?> paramRequest, AWSSessionCredentials paramAWSSessionCredentials);
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/auth/AbstractAWSSigner.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */