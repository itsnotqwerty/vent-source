package io.intercom.android.sdk.models;

final class AutoValue_Attachments
  extends Attachments
{
  private final String contentType;
  private final String name;
  private final String url;
  
  AutoValue_Attachments(String paramString1, String paramString2, String paramString3)
  {
    if (paramString1 == null) {
      throw new NullPointerException("Null name");
    }
    this.name = paramString1;
    if (paramString2 == null) {
      throw new NullPointerException("Null url");
    }
    this.url = paramString2;
    if (paramString3 == null) {
      throw new NullPointerException("Null contentType");
    }
    this.contentType = paramString3;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof Attachments)) {
        break;
      }
      paramObject = (Attachments)paramObject;
    } while ((this.name.equals(((Attachments)paramObject).getName())) && (this.url.equals(((Attachments)paramObject).getUrl())) && (this.contentType.equals(((Attachments)paramObject).getContentType())));
    return false;
    return false;
  }
  
  public final String getContentType()
  {
    return this.contentType;
  }
  
  public final String getName()
  {
    return this.name;
  }
  
  public final String getUrl()
  {
    return this.url;
  }
  
  public final int hashCode()
  {
    return ((this.name.hashCode() ^ 0xF4243) * 1000003 ^ this.url.hashCode()) * 1000003 ^ this.contentType.hashCode();
  }
  
  public final String toString()
  {
    return "Attachments{name=" + this.name + ", url=" + this.url + ", contentType=" + this.contentType + "}";
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/models/AutoValue_Attachments.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */