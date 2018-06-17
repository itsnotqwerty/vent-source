package io.intercom.android.sdk.identity;

final class AutoValue_SoftUserIdentity
  extends SoftUserIdentity
{
  private final String anonymousId;
  private final String data;
  private final String email;
  private final String fingerprint;
  private final String hmac;
  private final String intercomId;
  private final String userId;
  
  AutoValue_SoftUserIdentity(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7)
  {
    if (paramString1 == null) {
      throw new NullPointerException("Null anonymousId");
    }
    this.anonymousId = paramString1;
    if (paramString2 == null) {
      throw new NullPointerException("Null data");
    }
    this.data = paramString2;
    if (paramString3 == null) {
      throw new NullPointerException("Null email");
    }
    this.email = paramString3;
    if (paramString4 == null) {
      throw new NullPointerException("Null fingerprint");
    }
    this.fingerprint = paramString4;
    if (paramString5 == null) {
      throw new NullPointerException("Null hmac");
    }
    this.hmac = paramString5;
    if (paramString6 == null) {
      throw new NullPointerException("Null intercomId");
    }
    this.intercomId = paramString6;
    if (paramString7 == null) {
      throw new NullPointerException("Null userId");
    }
    this.userId = paramString7;
  }
  
  final String anonymousId()
  {
    return this.anonymousId;
  }
  
  final String data()
  {
    return this.data;
  }
  
  final String email()
  {
    return this.email;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof SoftUserIdentity)) {
        break;
      }
      paramObject = (SoftUserIdentity)paramObject;
    } while ((this.anonymousId.equals(((SoftUserIdentity)paramObject).anonymousId())) && (this.data.equals(((SoftUserIdentity)paramObject).data())) && (this.email.equals(((SoftUserIdentity)paramObject).email())) && (this.fingerprint.equals(((SoftUserIdentity)paramObject).fingerprint())) && (this.hmac.equals(((SoftUserIdentity)paramObject).hmac())) && (this.intercomId.equals(((SoftUserIdentity)paramObject).intercomId())) && (this.userId.equals(((SoftUserIdentity)paramObject).userId())));
    return false;
    return false;
  }
  
  final String fingerprint()
  {
    return this.fingerprint;
  }
  
  public final int hashCode()
  {
    return ((((((this.anonymousId.hashCode() ^ 0xF4243) * 1000003 ^ this.data.hashCode()) * 1000003 ^ this.email.hashCode()) * 1000003 ^ this.fingerprint.hashCode()) * 1000003 ^ this.hmac.hashCode()) * 1000003 ^ this.intercomId.hashCode()) * 1000003 ^ this.userId.hashCode();
  }
  
  final String hmac()
  {
    return this.hmac;
  }
  
  final String intercomId()
  {
    return this.intercomId;
  }
  
  public final String toString()
  {
    return "SoftUserIdentity{anonymousId=" + this.anonymousId + ", data=" + this.data + ", email=" + this.email + ", fingerprint=" + this.fingerprint + ", hmac=" + this.hmac + ", intercomId=" + this.intercomId + ", userId=" + this.userId + "}";
  }
  
  final String userId()
  {
    return this.userId;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/identity/AutoValue_SoftUserIdentity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */