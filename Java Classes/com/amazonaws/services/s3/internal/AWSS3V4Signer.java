package com.amazonaws.services.s3.internal;

import com.amazonaws.AmazonClientException;
import com.amazonaws.Request;
import com.amazonaws.auth.AWS4Signer;
import com.amazonaws.auth.AWS4Signer.HeaderSigningResult;
import com.amazonaws.auth.AwsChunkedEncodingInputStream;
import com.amazonaws.services.s3.model.PutObjectRequest;
import com.amazonaws.services.s3.model.UploadPartRequest;
import com.amazonaws.util.BinaryUtils;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;

public class AWSS3V4Signer
  extends AWS4Signer
{
  public AWSS3V4Signer()
  {
    super(false);
  }
  
  private static boolean k(Request<?> paramRequest)
  {
    boolean bool = false;
    if (((paramRequest.jq() instanceof PutObjectRequest)) || ((paramRequest.jq() instanceof UploadPartRequest))) {
      bool = true;
    }
    return bool;
  }
  
  protected final void a(Request<?> paramRequest, AWS4Signer.HeaderSigningResult paramHeaderSigningResult)
  {
    if (k(paramRequest))
    {
      InputStream localInputStream = paramRequest.getContent();
      String str1 = paramHeaderSigningResult.amU;
      String str2 = paramHeaderSigningResult.amV;
      byte[] arrayOfByte = new byte[paramHeaderSigningResult.amW.length];
      System.arraycopy(paramHeaderSigningResult.amW, 0, arrayOfByte, 0, paramHeaderSigningResult.amW.length);
      paramRequest.setContent(new AwsChunkedEncodingInputStream(localInputStream, arrayOfByte, str1, str2, BinaryUtils.h(paramHeaderSigningResult.getSignature()), this));
    }
  }
  
  protected final String f(Request<?> paramRequest)
  {
    paramRequest.addHeader("x-amz-content-sha256", "required");
    if (k(paramRequest))
    {
      Object localObject = (String)paramRequest.getHeaders().get("Content-Length");
      long l;
      if (localObject != null) {
        l = Long.parseLong((String)localObject);
      }
      for (;;)
      {
        paramRequest.addHeader("x-amz-decoded-content-length", Long.toString(l));
        paramRequest.addHeader("Content-Length", Long.toString(AwsChunkedEncodingInputStream.h(l)));
        return "STREAMING-AWS4-HMAC-SHA256-PAYLOAD";
        try
        {
          localObject = paramRequest.getContent();
          if (!((InputStream)localObject).markSupported()) {
            throw new AmazonClientException("Failed to get content length");
          }
        }
        catch (IOException paramRequest)
        {
          throw new AmazonClientException("Cannot get the content-lenght of the request content.", paramRequest);
        }
        l = 0L;
        byte[] arrayOfByte = new byte['က'];
        ((InputStream)localObject).mark(-1);
        for (;;)
        {
          int i = ((InputStream)localObject).read(arrayOfByte);
          if (i == -1) {
            break;
          }
          l += i;
        }
        ((InputStream)localObject).reset();
      }
    }
    return super.f(paramRequest);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/services/s3/internal/AWSS3V4Signer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */