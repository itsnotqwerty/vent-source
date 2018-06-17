package io.intercom.android.sdk.blocks.models;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class Channel
  implements Parcelable
{
  public static final Parcelable.Creator<Channel> CREATOR = new Parcelable.Creator()
  {
    public final Channel createFromParcel(Parcel paramAnonymousParcel)
    {
      return new Channel(paramAnonymousParcel);
    }
    
    public final Channel[] newArray(int paramAnonymousInt)
    {
      return new Channel[paramAnonymousInt];
    }
  };
  private final String label;
  private final String name;
  private final String value;
  
  Channel()
  {
    this(new Builder());
  }
  
  protected Channel(Parcel paramParcel)
  {
    this.name = paramParcel.readString();
    this.label = paramParcel.readString();
    this.value = paramParcel.readString();
  }
  
  private Channel(Builder paramBuilder)
  {
    String str;
    if (paramBuilder.name == null)
    {
      str = "";
      this.name = str;
      if (paramBuilder.label != null) {
        break label58;
      }
      str = "";
      label29:
      this.label = str;
      if (paramBuilder.value != null) {
        break label66;
      }
    }
    label58:
    label66:
    for (paramBuilder = "";; paramBuilder = paramBuilder.value)
    {
      this.value = paramBuilder;
      return;
      str = paramBuilder.name;
      break;
      str = paramBuilder.label;
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
      paramObject = (Channel)paramObject;
      if (this.name != null)
      {
        if (this.name.equals(((Channel)paramObject).name)) {}
      }
      else {
        while (((Channel)paramObject).name != null) {
          return false;
        }
      }
      if (this.label != null)
      {
        if (this.label.equals(((Channel)paramObject).label)) {}
      }
      else {
        while (((Channel)paramObject).label != null) {
          return false;
        }
      }
      if (this.value != null) {
        return this.value.equals(((Channel)paramObject).value);
      }
    } while (((Channel)paramObject).value == null);
    return false;
  }
  
  public String getLabel()
  {
    return this.label;
  }
  
  public String getName()
  {
    return this.name;
  }
  
  public String getValue()
  {
    return this.value;
  }
  
  public int hashCode()
  {
    int k = 0;
    int i;
    if (this.name != null)
    {
      i = this.name.hashCode();
      if (this.label == null) {
        break label64;
      }
    }
    label64:
    for (int j = this.label.hashCode();; j = 0)
    {
      if (this.value != null) {
        k = this.value.hashCode();
      }
      return (j + i * 31) * 31 + k;
      i = 0;
      break;
    }
  }
  
  public String toString()
  {
    return "Channel{name='" + this.name + '\'' + ", label='" + this.label + '\'' + ", value='" + this.value + '\'' + '}';
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.name);
    paramParcel.writeString(this.label);
    paramParcel.writeString(this.value);
  }
  
  public static final class Builder
  {
    String label;
    String name;
    String value;
    
    public final Channel build()
    {
      return new Channel(this, null);
    }
    
    public final Builder withLabel(String paramString)
    {
      this.label = paramString;
      return this;
    }
    
    public final Builder withName(String paramString)
    {
      this.name = paramString;
      return this;
    }
    
    public final Builder withValue(String paramString)
    {
      this.value = paramString;
      return this;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/blocks/models/Channel.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */