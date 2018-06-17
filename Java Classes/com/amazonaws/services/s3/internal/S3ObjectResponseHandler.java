package com.amazonaws.services.s3.internal;

import com.amazonaws.AmazonWebServiceResponse;
import com.amazonaws.http.HttpResponse;
import com.amazonaws.services.s3.model.S3Object;
import com.amazonaws.services.s3.model.S3ObjectInputStream;
import java.util.Map;

public class S3ObjectResponseHandler
  extends AbstractS3ResponseHandler<S3Object>
{
  private static AmazonWebServiceResponse<S3Object> d(HttpResponse paramHttpResponse)
    throws Exception
  {
    S3Object localS3Object = new S3Object();
    AmazonWebServiceResponse localAmazonWebServiceResponse = b(paramHttpResponse);
    if (paramHttpResponse.headers.get("x-amz-website-redirect-location") != null) {
      localS3Object.asv = ((String)paramHttpResponse.headers.get("x-amz-website-redirect-location"));
    }
    if (paramHttpResponse.headers.get("x-amz-request-charged") != null) {
      localS3Object.asI = true;
    }
    a(paramHttpResponse, localS3Object.asr);
    localS3Object.asH = new S3ObjectInputStream(paramHttpResponse.getContent());
    localAmazonWebServiceResponse.result = localS3Object;
    return localAmazonWebServiceResponse;
  }
  
  public final boolean jF()
  {
    return true;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/services/s3/internal/S3ObjectResponseHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */