package io.intercom.android.sdk.blocks.models;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class BlockAttachment
  implements Parcelable
{
  public static final Parcelable.Creator<BlockAttachment> CREATOR = new Parcelable.Creator()
  {
    public final BlockAttachment createFromParcel(Parcel paramAnonymousParcel)
    {
      return new BlockAttachment(paramAnonymousParcel);
    }
    
    public final BlockAttachment[] newArray(int paramAnonymousInt)
    {
      return new BlockAttachment[paramAnonymousInt];
    }
  };
  private final String contentType;
  private final int id;
  private final String name;
  private final long size;
  private final String url;
  
  public BlockAttachment()
  {
    this(new Builder());
  }
  
  protected BlockAttachment(Parcel paramParcel)
  {
    this.name = paramParcel.readString();
    this.url = paramParcel.readString();
    this.contentType = paramParcel.readString();
    this.id = paramParcel.readInt();
    this.size = paramParcel.readLong();
  }
  
  public BlockAttachment(Builder paramBuilder)
  {
    if (paramBuilder.name == null)
    {
      str = "";
      this.name = str;
      if (paramBuilder.url != null) {
        break label74;
      }
      str = "";
      label29:
      this.url = str;
      if (paramBuilder.contentType != null) {
        break label82;
      }
    }
    label74:
    label82:
    for (String str = "";; str = paramBuilder.contentType)
    {
      this.contentType = str;
      this.id = paramBuilder.id;
      this.size = paramBuilder.size;
      return;
      str = paramBuilder.name;
      break;
      str = paramBuilder.url;
      break label29;
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
      paramObject = (BlockAttachment)paramObject;
      if (this.size != ((BlockAttachment)paramObject).size) {
        return false;
      }
      if (this.id != ((BlockAttachment)paramObject).id) {
        return false;
      }
      if (this.name != null)
      {
        if (this.name.equals(((BlockAttachment)paramObject).name)) {}
      }
      else {
        while (((BlockAttachment)paramObject).name != null) {
          return false;
        }
      }
      if (this.url != null)
      {
        if (this.url.equals(((BlockAttachment)paramObject).url)) {}
      }
      else {
        while (((BlockAttachment)paramObject).url != null) {
          return false;
        }
      }
      if (this.contentType != null) {
        return this.contentType.equals(((BlockAttachment)paramObject).contentType);
      }
    } while (((BlockAttachment)paramObject).contentType == null);
    return false;
  }
  
  public String getContentType()
  {
    return this.contentType;
  }
  
  public int getId()
  {
    return this.id;
  }
  
  public String getName()
  {
    return this.name;
  }
  
  public long getSize()
  {
    return this.size;
  }
  
  public String getUrl()
  {
    return this.url;
  }
  
  public int hashCode()
  {
    int k = 0;
    int i;
    if (this.name != null)
    {
      i = this.name.hashCode();
      if (this.url == null) {
        break label89;
      }
    }
    label89:
    for (int j = this.url.hashCode();; j = 0)
    {
      if (this.contentType != null) {
        k = this.contentType.hashCode();
      }
      return (((j + i * 31) * 31 + k) * 31 + (int)(this.size ^ this.size >>> 32)) * 31 + this.id;
      i = 0;
      break;
    }
  }
  
  public Builder toBuilder()
  {
    return new Builder().withName(this.name).withUrl(this.url).withContentType(this.contentType).withId(this.id).withSize(this.size);
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.name);
    paramParcel.writeString(this.url);
    paramParcel.writeString(this.contentType);
    paramParcel.writeInt(this.id);
    paramParcel.writeLong(this.size);
  }
  
  public static final class Builder
  {
    String contentType;
    int id;
    String name;
    long size;
    String url;
    
    public final BlockAttachment build()
    {
      return new BlockAttachment(this);
    }
    
    public final Builder withContentType(String paramString)
    {
      this.contentType = paramString;
      return this;
    }
    
    public final Builder withId(int paramInt)
    {
      this.id = paramInt;
      return this;
    }
    
    public final Builder withName(String paramString)
    {
      this.name = paramString;
      return this;
    }
    
    public final Builder withSize(long paramLong)
    {
      this.size = paramLong;
      return this;
    }
    
    public final Builder withUrl(String paramString)
    {
      this.url = paramString;
      return this;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/blocks/models/BlockAttachment.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */