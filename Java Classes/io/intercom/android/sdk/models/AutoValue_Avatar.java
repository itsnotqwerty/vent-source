package io.intercom.android.sdk.models;

final class AutoValue_Avatar
  extends Avatar
{
  private final String imageUrl;
  private final String initials;
  
  AutoValue_Avatar(String paramString1, String paramString2)
  {
    if (paramString1 == null) {
      throw new NullPointerException("Null imageUrl");
    }
    this.imageUrl = paramString1;
    if (paramString2 == null) {
      throw new NullPointerException("Null initials");
    }
    this.initials = paramString2;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof Avatar)) {
        break;
      }
      paramObject = (Avatar)paramObject;
    } while ((this.imageUrl.equals(((Avatar)paramObject).getImageUrl())) && (this.initials.equals(((Avatar)paramObject).getInitials())));
    return false;
    return false;
  }
  
  public final String getImageUrl()
  {
    return this.imageUrl;
  }
  
  public final String getInitials()
  {
    return this.initials;
  }
  
  public final int hashCode()
  {
    return (this.imageUrl.hashCode() ^ 0xF4243) * 1000003 ^ this.initials.hashCode();
  }
  
  public final String toString()
  {
    return "Avatar{imageUrl=" + this.imageUrl + ", initials=" + this.initials + "}";
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/models/AutoValue_Avatar.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */