package com.amazonaws.services.s3.internal;

import com.amazonaws.AmazonWebServiceResponse;
import com.amazonaws.http.HttpResponse;
import com.amazonaws.services.s3.model.ObjectMetadata;

public class S3MetadataResponseHandler
  extends AbstractS3ResponseHandler<ObjectMetadata>
{
  private static AmazonWebServiceResponse<ObjectMetadata> d(HttpResponse paramHttpResponse)
    throws Exception
  {
    ObjectMetadata localObjectMetadata = new ObjectMetadata();
    a(paramHttpResponse, localObjectMetadata);
    paramHttpResponse = b(paramHttpResponse);
    paramHttpResponse.result = localObjectMetadata;
    return paramHttpResponse;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/services/s3/internal/S3MetadataResponseHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */