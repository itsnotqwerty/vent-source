package com.amazonaws.services.s3.internal;

import com.amazonaws.AmazonWebServiceResponse;
import com.amazonaws.http.HttpResponse;
import com.amazonaws.http.HttpResponseHandler;
import com.amazonaws.services.s3.S3ResponseMetadata;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.util.DateUtils;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public abstract class AbstractS3ResponseHandler<T>
  implements HttpResponseHandler<AmazonWebServiceResponse<T>>
{
  private static final Log alS = LogFactory.getLog(S3MetadataResponseHandler.class);
  private static final Set<String> apK;
  
  static
  {
    HashSet localHashSet = new HashSet();
    apK = localHashSet;
    localHashSet.add("Date");
    apK.add("Server");
    apK.add("x-amz-request-id");
    apK.add("x-amz-id-2");
  }
  
  protected static void a(HttpResponse paramHttpResponse, ObjectMetadata paramObjectMetadata)
  {
    Iterator localIterator = paramHttpResponse.headers.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (Map.Entry)localIterator.next();
      String str = (String)((Map.Entry)localObject).getKey();
      if (str.startsWith("x-amz-meta-"))
      {
        str = str.substring(11);
        localObject = (String)((Map.Entry)localObject).getValue();
        paramObjectMetadata.asb.put(str, localObject);
      }
      else if (!apK.contains(str))
      {
        if (str.equals("Last-Modified"))
        {
          try
          {
            paramObjectMetadata.a(str, ServiceUtils.ac((String)((Map.Entry)localObject).getValue()));
          }
          catch (Exception localException1)
          {
            alS.warn("Unable to parse last modified date: " + (String)((Map.Entry)localObject).getValue(), localException1);
          }
        }
        else if (localException1.equals("Content-Length"))
        {
          try
          {
            paramObjectMetadata.a(localException1, Long.valueOf(Long.parseLong((String)((Map.Entry)localObject).getValue())));
          }
          catch (NumberFormatException localNumberFormatException)
          {
            alS.warn("Unable to parse content length: " + (String)((Map.Entry)localObject).getValue(), localNumberFormatException);
          }
        }
        else if (localNumberFormatException.equals("ETag"))
        {
          paramObjectMetadata.a(localNumberFormatException, ServiceUtils.ad((String)((Map.Entry)localObject).getValue()));
        }
        else if (localNumberFormatException.equals("Expires"))
        {
          try
          {
            paramObjectMetadata.asc = DateUtils.ay((String)((Map.Entry)localObject).getValue());
          }
          catch (Exception localException2)
          {
            alS.warn("Unable to parse http expiration date: " + (String)((Map.Entry)localObject).getValue(), localException2);
          }
        }
        else if (localException2.equals("x-amz-expiration"))
        {
          new ObjectExpirationHeaderHandler();
          localObject = (String)paramHttpResponse.headers.get("x-amz-expiration");
          if (localObject != null)
          {
            paramObjectMetadata.e(ObjectExpirationHeaderHandler.parseDate((String)localObject));
            paramObjectMetadata.Z(ObjectExpirationHeaderHandler.Y((String)localObject));
          }
        }
        else if (localException2.equals("x-amz-restore"))
        {
          new ObjectRestoreHeaderHandler();
          localObject = (String)paramHttpResponse.headers.get("x-amz-restore");
          if (localObject != null)
          {
            paramObjectMetadata.f(ObjectRestoreHeaderHandler.parseDate((String)localObject));
            paramObjectMetadata.ak(ObjectRestoreHeaderHandler.aa((String)localObject).booleanValue());
          }
        }
        else
        {
          paramObjectMetadata.a(localException2, ((Map.Entry)localObject).getValue());
        }
      }
    }
  }
  
  protected static AmazonWebServiceResponse<T> b(HttpResponse paramHttpResponse)
  {
    AmazonWebServiceResponse localAmazonWebServiceResponse = new AmazonWebServiceResponse();
    String str = (String)paramHttpResponse.headers.get("x-amz-request-id");
    paramHttpResponse = (String)paramHttpResponse.headers.get("x-amz-id-2");
    HashMap localHashMap = new HashMap();
    localHashMap.put("AWS_REQUEST_ID", str);
    localHashMap.put("HOST_ID", paramHttpResponse);
    localAmazonWebServiceResponse.ame = new S3ResponseMetadata(localHashMap);
    return localAmazonWebServiceResponse;
  }
  
  public boolean jF()
  {
    return false;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/services/s3/internal/AbstractS3ResponseHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */