package com.amazonaws.services.s3.internal;

import com.amazonaws.transform.Unmarshaller;
import java.io.InputStream;
import java.util.Map;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class S3XmlResponseHandler<T>
  extends AbstractS3ResponseHandler<T>
{
  private static final Log alS = LogFactory.getLog("com.amazonaws.request");
  private Unmarshaller<T, InputStream> aqa = null;
  private Map<String, String> aqb;
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/services/s3/internal/S3XmlResponseHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */