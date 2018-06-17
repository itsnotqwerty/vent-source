package com.amazonaws.services.s3.internal;

import com.amazonaws.Request;
import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.AWSSessionCredentials;
import com.amazonaws.auth.AbstractAWSSigner;
import com.amazonaws.auth.SigningAlgorithm;
import com.amazonaws.util.HttpUtils;
import java.net.URI;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class S3Signer
  extends AbstractAWSSigner
{
  private static final Log alS = LogFactory.getLog(S3Signer.class);
  private final String amz;
  private final String apZ;
  
  public S3Signer()
  {
    this.apZ = null;
    this.amz = null;
  }
  
  public S3Signer(String paramString1, String paramString2)
  {
    this.apZ = paramString1;
    this.amz = paramString2;
    if (paramString2 == null) {
      throw new IllegalArgumentException("Parameter resourcePath is empty");
    }
  }
  
  public final void a(Request<?> paramRequest, AWSCredentials paramAWSCredentials)
  {
    if (this.amz == null) {
      throw new UnsupportedOperationException("Cannot sign a request using a dummy S3Signer instance with no resource path");
    }
    if ((paramAWSCredentials == null) || (paramAWSCredentials.jx() == null))
    {
      alS.debug("Canonical string will not be signed, as no AWS Secret Key was provided");
      return;
    }
    paramAWSCredentials = a(paramAWSCredentials);
    if ((paramAWSCredentials instanceof AWSSessionCredentials)) {
      a(paramRequest, (AWSSessionCredentials)paramAWSCredentials);
    }
    String str = HttpUtils.a(paramRequest.jt().getPath(), this.amz, true);
    paramRequest.addHeader("Date", ServiceUtils.g(cn(j(paramRequest))));
    str = RestUtils.a(this.apZ, str, paramRequest);
    alS.debug("Calculated string to sign:\n\"" + str + "\"");
    str = AbstractAWSSigner.a(str, paramAWSCredentials.jx(), SigningAlgorithm.anD);
    paramRequest.addHeader("Authorization", "AWS " + paramAWSCredentials.jw() + ":" + str);
  }
  
  protected final void a(Request<?> paramRequest, AWSSessionCredentials paramAWSSessionCredentials)
  {
    paramRequest.addHeader("x-amz-security-token", paramAWSSessionCredentials.jz());
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/services/s3/internal/S3Signer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */