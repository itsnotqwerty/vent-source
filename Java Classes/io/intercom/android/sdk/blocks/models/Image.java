package io.intercom.android.sdk.blocks.models;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class Image
  implements Parcelable
{
  public static final Parcelable.Creator<Image> CREATOR = new Parcelable.Creator()
  {
    public final Image createFromParcel(Parcel paramAnonymousParcel)
    {
      return new Image(paramAnonymousParcel);
    }
    
    public final Image[] newArray(int paramAnonymousInt)
    {
      return new Image[paramAnonymousInt];
    }
  };
  private final String alt;
  private final String attribution;
  private final int height;
  private final String previewUrl;
  private final String url;
  private final int width;
  
  Image()
  {
    this(new Builder());
  }
  
  protected Image(Parcel paramParcel)
  {
    this.attribution = paramParcel.readString();
    this.previewUrl = paramParcel.readString();
    this.alt = paramParcel.readString();
    this.url = paramParcel.readString();
    this.width = paramParcel.readInt();
    this.height = paramParcel.readInt();
  }
  
  private Image(Builder paramBuilder)
  {
    if (paramBuilder.alt == null)
    {
      str = "";
      this.alt = str;
      if (paramBuilder.url != null) {
        break label89;
      }
      str = "";
      label29:
      this.url = str;
      if (paramBuilder.previewUrl != null) {
        break label97;
      }
      str = "";
      label44:
      this.previewUrl = str;
      if (paramBuilder.attribution != null) {
        break label105;
      }
    }
    label89:
    label97:
    label105:
    for (String str = "";; str = paramBuilder.attribution)
    {
      this.attribution = str;
      this.width = paramBuilder.width;
      this.height = paramBuilder.height;
      return;
      str = paramBuilder.alt;
      break;
      str = paramBuilder.url;
      break label29;
      str = paramBuilder.previewUrl;
      break label44;
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if ((paramObject == null) || (getClass() != paramObject.getClass())) {
        return false;
      }
      paramObject = (Image)paramObject;
      if (this.alt != null)
      {
        if (this.alt.equals(((Image)paramObject).alt)) {}
      }
      else {
        while (((Image)paramObject).alt != null) {
          return false;
        }
      }
      if (this.previewUrl != null)
      {
        if (this.previewUrl.equals(((Image)paramObject).previewUrl)) {}
      }
      else {
        while (((Image)paramObject).previewUrl != null) {
          return false;
        }
      }
      if (this.attribution != null)
      {
        if (this.attribution.equals(((Image)paramObject).attribution)) {}
      }
      else {
        while (((Image)paramObject).attribution != null) {
          return false;
        }
      }
      if (this.width != ((Image)paramObject).width) {
        return false;
      }
      if (this.height != ((Image)paramObject).height) {
        return false;
      }
      if (this.url == null) {
        break;
      }
    } while (this.url.equals(((Image)paramObject).url));
    while (((Image)paramObject).url != null) {
      return false;
    }
    return true;
  }
  
  public String getAlt()
  {
    return this.alt;
  }
  
  public String getAttribution()
  {
    return this.attribution;
  }
  
  public int getHeight()
  {
    return this.height;
  }
  
  public String getPreviewUrl()
  {
    return this.previewUrl;
  }
  
  public String getUrl()
  {
    return this.url;
  }
  
  public int getWidth()
  {
    return this.width;
  }
  
  public int hashCode()
  {
    int m = 0;
    int i;
    int j;
    if (this.alt != null)
    {
      i = this.alt.hashCode();
      if (this.url == null) {
        break label103;
      }
      j = this.url.hashCode();
      label33:
      if (this.previewUrl == null) {
        break label108;
      }
    }
    label103:
    label108:
    for (int k = this.previewUrl.hashCode();; k = 0)
    {
      if (this.attribution != null) {
        m = this.attribution.hashCode();
      }
      return (((k + (j + i * 31) * 31) * 31 + m) * 31 + this.width) * 31 + this.height;
      i = 0;
      break;
      j = 0;
      break label33;
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.attribution);
    paramParcel.writeString(this.previewUrl);
    paramParcel.writeString(this.alt);
    paramParcel.writeString(this.url);
    paramParcel.writeInt(this.width);
    paramParcel.writeInt(this.height);
  }
  
  public static final class Builder
  {
    String alt;
    String attribution;
    int height;
    String previewUrl;
    String url;
    int width;
    
    public final Image build()
    {
      return new Image(this, null);
    }
    
    public final Builder withAlt(String paramString)
    {
      this.alt = paramString;
      return this;
    }
    
    public final Builder withAttribution(String paramString)
    {
      this.attribution = paramString;
      return this;
    }
    
    public final Builder withHeight(int paramInt)
    {
      this.height = paramInt;
      return this;
    }
    
    public final Builder withPreviewUrl(String paramString)
    {
      this.previewUrl = paramString;
      return this;
    }
    
    public final Builder withUrl(String paramString)
    {
      this.url = paramString;
      return this;
    }
    
    public final Builder withWidth(int paramInt)
    {
      this.width = paramInt;
      return this;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/blocks/models/Image.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */