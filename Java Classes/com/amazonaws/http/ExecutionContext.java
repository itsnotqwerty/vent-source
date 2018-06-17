package com.amazonaws.http;

import com.amazonaws.AmazonWebServiceClient;
import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.Signer;
import com.amazonaws.handlers.RequestHandler2;
import com.amazonaws.util.AWSRequestMetrics;
import com.amazonaws.util.AWSRequestMetricsFullSupport;
import java.net.URI;
import java.util.List;

public class ExecutionContext
{
  final List<RequestHandler2> alX;
  public AWSCredentials amc;
  public final AWSRequestMetrics anU;
  String anV;
  private final AmazonWebServiceClient anW;
  
  public ExecutionContext(List<RequestHandler2> paramList, boolean paramBoolean, AmazonWebServiceClient paramAmazonWebServiceClient)
  {
    this.alX = paramList;
    if (paramBoolean) {}
    for (paramList = new AWSRequestMetricsFullSupport();; paramList = new AWSRequestMetrics())
    {
      this.anU = paramList;
      this.anW = paramAmazonWebServiceClient;
      return;
    }
  }
  
  public Signer a(URI paramURI)
  {
    if (this.anW == null) {
      return null;
    }
    return this.anW.a(paramURI);
  }
  
  public void a(Signer paramSigner) {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/http/ExecutionContext.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */