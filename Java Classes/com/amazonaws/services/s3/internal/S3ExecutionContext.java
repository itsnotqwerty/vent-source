package com.amazonaws.services.s3.internal;

import com.amazonaws.AmazonWebServiceClient;
import com.amazonaws.auth.Signer;
import com.amazonaws.handlers.RequestHandler2;
import com.amazonaws.http.ExecutionContext;
import java.net.URI;
import java.util.List;

public class S3ExecutionContext
  extends ExecutionContext
{
  private Signer alZ;
  
  public S3ExecutionContext(List<RequestHandler2> paramList, boolean paramBoolean, AmazonWebServiceClient paramAmazonWebServiceClient)
  {
    super(paramList, paramBoolean, paramAmazonWebServiceClient);
  }
  
  public final Signer a(URI paramURI)
  {
    return this.alZ;
  }
  
  public final void a(Signer paramSigner)
  {
    this.alZ = paramSigner;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/services/s3/internal/S3ExecutionContext.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */