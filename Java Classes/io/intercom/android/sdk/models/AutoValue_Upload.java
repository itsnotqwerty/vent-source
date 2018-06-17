package io.intercom.android.sdk.models;

final class AutoValue_Upload
  extends Upload
{
  private final String acl;
  private final String awsAccessKey;
  private final String contentType;
  private final int id;
  private final String key;
  private final String policy;
  private final String publicUrl;
  private final String signature;
  private final String successActionStatus;
  private final String uploadDestination;
  
  AutoValue_Upload(int paramInt, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9)
  {
    this.id = paramInt;
    if (paramString1 == null) {
      throw new NullPointerException("Null acl");
    }
    this.acl = paramString1;
    if (paramString2 == null) {
      throw new NullPointerException("Null awsAccessKey");
    }
    this.awsAccessKey = paramString2;
    if (paramString3 == null) {
      throw new NullPointerException("Null contentType");
    }
    this.contentType = paramString3;
    if (paramString4 == null) {
      throw new NullPointerException("Null key");
    }
    this.key = paramString4;
    if (paramString5 == null) {
      throw new NullPointerException("Null policy");
    }
    this.policy = paramString5;
    if (paramString6 == null) {
      throw new NullPointerException("Null publicUrl");
    }
    this.publicUrl = paramString6;
    if (paramString7 == null) {
      throw new NullPointerException("Null signature");
    }
    this.signature = paramString7;
    if (paramString8 == null) {
      throw new NullPointerException("Null successActionStatus");
    }
    this.successActionStatus = paramString8;
    if (paramString9 == null) {
      throw new NullPointerException("Null uploadDestination");
    }
    this.uploadDestination = paramString9;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof Upload)) {
        break;
      }
      paramObject = (Upload)paramObject;
    } while ((this.id == ((Upload)paramObject).getId()) && (this.acl.equals(((Upload)paramObject).getAcl())) && (this.awsAccessKey.equals(((Upload)paramObject).getAwsAccessKey())) && (this.contentType.equals(((Upload)paramObject).getContentType())) && (this.key.equals(((Upload)paramObject).getKey())) && (this.policy.equals(((Upload)paramObject).getPolicy())) && (this.publicUrl.equals(((Upload)paramObject).getPublicUrl())) && (this.signature.equals(((Upload)paramObject).getSignature())) && (this.successActionStatus.equals(((Upload)paramObject).getSuccessActionStatus())) && (this.uploadDestination.equals(((Upload)paramObject).getUploadDestination())));
    return false;
    return false;
  }
  
  public final String getAcl()
  {
    return this.acl;
  }
  
  public final String getAwsAccessKey()
  {
    return this.awsAccessKey;
  }
  
  public final String getContentType()
  {
    return this.contentType;
  }
  
  public final int getId()
  {
    return this.id;
  }
  
  public final String getKey()
  {
    return this.key;
  }
  
  public final String getPolicy()
  {
    return this.policy;
  }
  
  public final String getPublicUrl()
  {
    return this.publicUrl;
  }
  
  public final String getSignature()
  {
    return this.signature;
  }
  
  public final String getSuccessActionStatus()
  {
    return this.successActionStatus;
  }
  
  public final String getUploadDestination()
  {
    return this.uploadDestination;
  }
  
  public final int hashCode()
  {
    return (((((((((this.id ^ 0xF4243) * 1000003 ^ this.acl.hashCode()) * 1000003 ^ this.awsAccessKey.hashCode()) * 1000003 ^ this.contentType.hashCode()) * 1000003 ^ this.key.hashCode()) * 1000003 ^ this.policy.hashCode()) * 1000003 ^ this.publicUrl.hashCode()) * 1000003 ^ this.signature.hashCode()) * 1000003 ^ this.successActionStatus.hashCode()) * 1000003 ^ this.uploadDestination.hashCode();
  }
  
  public final String toString()
  {
    return "Upload{id=" + this.id + ", acl=" + this.acl + ", awsAccessKey=" + this.awsAccessKey + ", contentType=" + this.contentType + ", key=" + this.key + ", policy=" + this.policy + ", publicUrl=" + this.publicUrl + ", signature=" + this.signature + ", successActionStatus=" + this.successActionStatus + ", uploadDestination=" + this.uploadDestination + "}";
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/models/AutoValue_Upload.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */