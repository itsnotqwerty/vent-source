package com.amazonaws.services.s3.model;

import com.amazonaws.AmazonWebServiceRequest;
import com.amazonaws.event.ProgressListener;
import java.io.File;
import java.io.InputStream;

public class PutObjectRequest
  extends AmazonWebServiceRequest
  implements Cloneable
{
  public String arR;
  public String ark;
  public SSECustomerKey arv;
  public InputStream asq;
  public ObjectMetadata asr;
  public CannedAccessControlList ass;
  public AccessControlList ast;
  public ProgressListener asu;
  public String asv;
  public File file;
  public String key;
  
  public PutObjectRequest(String paramString1, String paramString2, File paramFile)
  {
    this.ark = paramString1;
    this.key = paramString2;
    this.file = paramFile;
  }
  
  private PutObjectRequest(String paramString1, String paramString2, String paramString3)
  {
    this.ark = paramString1;
    this.key = paramString2;
    this.asv = paramString3;
  }
  
  private PutObjectRequest jY()
  {
    PutObjectRequest localPutObjectRequest = new PutObjectRequest(this.ark, this.key, this.asv);
    localPutObjectRequest.ast = this.ast;
    localPutObjectRequest.ass = this.ass;
    localPutObjectRequest.file = this.file;
    localPutObjectRequest.asu = this.asu;
    localPutObjectRequest.asq = this.asq;
    if (this.asr == null) {}
    for (ObjectMetadata localObjectMetadata = null;; localObjectMetadata = this.asr.jX())
    {
      localPutObjectRequest.asr = localObjectMetadata;
      localPutObjectRequest.arR = this.arR;
      localPutObjectRequest.amb = this.amb;
      return (PutObjectRequest)localPutObjectRequest;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/services/s3/model/PutObjectRequest.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */