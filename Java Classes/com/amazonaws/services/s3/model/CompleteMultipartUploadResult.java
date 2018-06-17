package com.amazonaws.services.s3.model;

import com.amazonaws.services.s3.internal.ObjectExpirationResult;
import com.amazonaws.services.s3.internal.SSEResultBase;
import java.util.Date;

public class CompleteMultipartUploadResult
  extends SSEResultBase
  implements ObjectExpirationResult
{
  public String ark;
  public String arl;
  public String arm;
  public Date arn;
  public String aro;
  public String key;
  
  public final void Z(String paramString)
  {
    this.aro = paramString;
  }
  
  public final void e(Date paramDate)
  {
    this.arn = paramDate;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/services/s3/model/CompleteMultipartUploadResult.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */