package io.intercom.android.sdk.identity;

final class AutoValue_AppIdentity
  extends AppIdentity
{
  private final String apiKey;
  private final String appId;
  
  AutoValue_AppIdentity(String paramString1, String paramString2)
  {
    if (paramString1 == null) {
      throw new NullPointerException("Null apiKey");
    }
    this.apiKey = paramString1;
    if (paramString2 == null) {
      throw new NullPointerException("Null appId");
    }
    this.appId = paramString2;
  }
  
  public final String apiKey()
  {
    return this.apiKey;
  }
  
  public final String appId()
  {
    return this.appId;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof AppIdentity)) {
        break;
      }
      paramObject = (AppIdentity)paramObject;
    } while ((this.apiKey.equals(((AppIdentity)paramObject).apiKey())) && (this.appId.equals(((AppIdentity)paramObject).appId())));
    return false;
    return false;
  }
  
  public final int hashCode()
  {
    return (this.apiKey.hashCode() ^ 0xF4243) * 1000003 ^ this.appId.hashCode();
  }
  
  public final String toString()
  {
    return "AppIdentity{apiKey=" + this.apiKey + ", appId=" + this.appId + "}";
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/identity/AutoValue_AppIdentity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */