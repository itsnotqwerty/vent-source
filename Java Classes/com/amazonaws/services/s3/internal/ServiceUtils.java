package com.amazonaws.services.s3.internal;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonWebServiceRequest;
import com.amazonaws.Request;
import com.amazonaws.services.s3.model.GetObjectRequest;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.services.s3.model.PutObjectRequest;
import com.amazonaws.services.s3.model.UploadPartRequest;
import com.amazonaws.util.DateUtils;
import com.amazonaws.util.HttpUtils;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class ServiceUtils
{
  private static final Log alS = LogFactory.getLog(ServiceUtils.class);
  @Deprecated
  protected static final DateUtils aqg = new DateUtils();
  
  public static Date ab(String paramString)
  {
    return DateUtils.ax(paramString);
  }
  
  public static Date ac(String paramString)
  {
    return DateUtils.ay(paramString);
  }
  
  public static String ad(String paramString)
  {
    String str;
    if (paramString == null) {
      str = null;
    }
    do
    {
      return str;
      str = paramString.trim();
      paramString = str;
      if (str.startsWith("\"")) {
        paramString = str.substring(1);
      }
      str = paramString;
    } while (!paramString.endsWith("\""));
    return paramString.substring(0, paramString.length() - 1);
  }
  
  public static boolean b(AmazonWebServiceRequest paramAmazonWebServiceRequest)
  {
    if (System.getProperty("com.amazonaws.services.s3.disableGetObjectMD5Validation") != null) {}
    do
    {
      do
      {
        return true;
        if (!(paramAmazonWebServiceRequest instanceof GetObjectRequest)) {
          break;
        }
        paramAmazonWebServiceRequest = (GetObjectRequest)paramAmazonWebServiceRequest;
      } while ((paramAmazonWebServiceRequest.jT() != null) || (paramAmazonWebServiceRequest.arv != null));
      do
      {
        return false;
        if ((paramAmazonWebServiceRequest instanceof PutObjectRequest))
        {
          paramAmazonWebServiceRequest = (PutObjectRequest)paramAmazonWebServiceRequest;
          ObjectMetadata localObjectMetadata = paramAmazonWebServiceRequest.asr;
          if (((localObjectMetadata != null) && (localObjectMetadata.jW() != null)) || (paramAmazonWebServiceRequest.arv != null)) {
            break;
          }
          return false;
        }
      } while (!(paramAmazonWebServiceRequest instanceof UploadPartRequest));
    } while (((UploadPartRequest)paramAmazonWebServiceRequest).arv != null);
    return false;
  }
  
  public static String g(Date paramDate)
  {
    return DateUtils.i(paramDate);
  }
  
  public static URL l(Request<?> paramRequest)
  {
    return m(paramRequest);
  }
  
  private static URL m(Request<?> paramRequest)
  {
    String str1 = HttpUtils.c(paramRequest.jr(), true);
    str1 = ("/" + str1).replaceAll("(?<=/)/", "%2F");
    str1 = paramRequest.jt() + str1;
    Iterator localIterator = paramRequest.getParameters().keySet().iterator();
    int i = 1;
    if (localIterator.hasNext())
    {
      String str2 = (String)localIterator.next();
      if (i != 0)
      {
        str1 = str1 + "?";
        i = 0;
      }
      for (;;)
      {
        String str3 = (String)paramRequest.getParameters().get(str2);
        str1 = str1 + str2 + "=" + HttpUtils.c(str3, false);
        break;
        str1 = str1 + "&";
      }
    }
    try
    {
      paramRequest = new URL(str1);
      return paramRequest;
    }
    catch (MalformedURLException paramRequest)
    {
      throw new AmazonClientException("Unable to convert request to well formed URL: " + paramRequest.getMessage(), paramRequest);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/services/s3/internal/ServiceUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */