package com.amazonaws.services.s3.model;

import com.amazonaws.services.s3.internal.ObjectExpirationResult;
import com.amazonaws.services.s3.internal.ObjectRestoreResult;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public class ObjectMetadata
  implements ObjectExpirationResult, ObjectRestoreResult, Cloneable
{
  public Date arn;
  public String aro;
  public Map<String, String> asb;
  public Date asc;
  private Boolean asd;
  private Date ase;
  public Map<String, Object> metadata;
  
  public ObjectMetadata()
  {
    this.asb = new HashMap();
    this.metadata = new HashMap();
  }
  
  private ObjectMetadata(ObjectMetadata paramObjectMetadata)
  {
    if (paramObjectMetadata.asb == null)
    {
      localObject1 = null;
      this.asb = ((Map)localObject1);
      if (paramObjectMetadata.metadata != null) {
        break label90;
      }
    }
    label90:
    for (Object localObject1 = localObject2;; localObject1 = new HashMap(paramObjectMetadata.metadata))
    {
      this.metadata = ((Map)localObject1);
      this.arn = paramObjectMetadata.arn;
      this.aro = paramObjectMetadata.aro;
      this.asc = paramObjectMetadata.asc;
      this.asd = paramObjectMetadata.asd;
      this.ase = paramObjectMetadata.ase;
      return;
      localObject1 = new HashMap(paramObjectMetadata.asb);
      break;
    }
  }
  
  public final void Z(String paramString)
  {
    this.aro = paramString;
  }
  
  public final void a(String paramString, Object paramObject)
  {
    this.metadata.put(paramString, paramObject);
  }
  
  public final void ak(boolean paramBoolean)
  {
    this.asd = Boolean.valueOf(paramBoolean);
  }
  
  public final void e(Date paramDate)
  {
    this.arn = paramDate;
  }
  
  public final void f(Date paramDate)
  {
    this.ase = paramDate;
  }
  
  public final String getContentType()
  {
    return (String)this.metadata.get("Content-Type");
  }
  
  public final String jU()
  {
    return (String)this.metadata.get("Content-MD5");
  }
  
  public final String jV()
  {
    return (String)this.metadata.get("ETag");
  }
  
  public final String jW()
  {
    return (String)this.metadata.get("x-amz-server-side-encryption");
  }
  
  public final ObjectMetadata jX()
  {
    return new ObjectMetadata(this);
  }
  
  public final void setContentType(String paramString)
  {
    this.metadata.put("Content-Type", paramString);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/amazonaws/services/s3/model/ObjectMetadata.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */