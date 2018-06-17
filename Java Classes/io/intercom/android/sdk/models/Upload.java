package io.intercom.android.sdk.models;

import com.google.auto.value.AutoValue;
import io.intercom.android.sdk.utilities.NullSafety;

@AutoValue
public abstract class Upload
{
  public abstract String getAcl();
  
  public abstract String getAwsAccessKey();
  
  public abstract String getContentType();
  
  public abstract int getId();
  
  public abstract String getKey();
  
  public abstract String getPolicy();
  
  public abstract String getPublicUrl();
  
  public abstract String getSignature();
  
  public abstract String getSuccessActionStatus();
  
  public abstract String getUploadDestination();
  
  public static final class Builder
  {
    String acl;
    String aws_access_key;
    String content_type;
    int id;
    String key;
    String policy;
    String public_url;
    String signature;
    String success_action_status;
    String upload_destination;
    
    public final Upload build()
    {
      return new AutoValue_Upload(this.id, NullSafety.valueOrEmpty(this.acl), NullSafety.valueOrEmpty(this.aws_access_key), NullSafety.valueOrEmpty(this.content_type), NullSafety.valueOrEmpty(this.key), NullSafety.valueOrEmpty(this.policy), NullSafety.valueOrEmpty(this.public_url), NullSafety.valueOrEmpty(this.signature), NullSafety.valueOrEmpty(this.success_action_status), NullSafety.valueOrEmpty(this.upload_destination));
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/models/Upload.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */