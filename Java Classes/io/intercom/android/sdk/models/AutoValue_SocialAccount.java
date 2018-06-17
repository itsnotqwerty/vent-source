package io.intercom.android.sdk.models;

final class AutoValue_SocialAccount
  extends SocialAccount
{
  private final String profileUrl;
  private final String provider;
  
  AutoValue_SocialAccount(String paramString1, String paramString2)
  {
    if (paramString1 == null) {
      throw new NullPointerException("Null provider");
    }
    this.provider = paramString1;
    if (paramString2 == null) {
      throw new NullPointerException("Null profileUrl");
    }
    this.profileUrl = paramString2;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof SocialAccount)) {
        break;
      }
      paramObject = (SocialAccount)paramObject;
    } while ((this.provider.equals(((SocialAccount)paramObject).getProvider())) && (this.profileUrl.equals(((SocialAccount)paramObject).getProfileUrl())));
    return false;
    return false;
  }
  
  public final String getProfileUrl()
  {
    return this.profileUrl;
  }
  
  public final String getProvider()
  {
    return this.provider;
  }
  
  public final int hashCode()
  {
    return (this.provider.hashCode() ^ 0xF4243) * 1000003 ^ this.profileUrl.hashCode();
  }
  
  public final String toString()
  {
    return "SocialAccount{provider=" + this.provider + ", profileUrl=" + this.profileUrl + "}";
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/models/AutoValue_SocialAccount.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */