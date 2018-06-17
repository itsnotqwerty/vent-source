package io.intercom.android.sdk.blocks.models;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class ConversationRatingOption
  implements Parcelable
{
  public static final Parcelable.Creator<ConversationRatingOption> CREATOR = new Parcelable.Creator()
  {
    public final ConversationRatingOption createFromParcel(Parcel paramAnonymousParcel)
    {
      return new ConversationRatingOption(paramAnonymousParcel);
    }
    
    public final ConversationRatingOption[] newArray(int paramAnonymousInt)
    {
      return new ConversationRatingOption[paramAnonymousInt];
    }
  };
  private final String emoji;
  private final int index;
  private final String unicode;
  
  protected ConversationRatingOption(Parcel paramParcel)
  {
    this.index = paramParcel.readInt();
    this.emoji = paramParcel.readString();
    this.unicode = paramParcel.readString();
  }
  
  private ConversationRatingOption(Builder paramBuilder)
  {
    int i;
    String str;
    if (paramBuilder.index == null)
    {
      i = -1;
      this.index = i;
      if (paramBuilder.emoji != null) {
        break label60;
      }
      str = "";
      label28:
      this.emoji = str;
      if (paramBuilder.unicode != null) {
        break label68;
      }
    }
    label60:
    label68:
    for (paramBuilder = "";; paramBuilder = paramBuilder.unicode)
    {
      this.unicode = paramBuilder;
      return;
      i = paramBuilder.index.intValue();
      break;
      str = paramBuilder.emoji;
      break label28;
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
      paramObject = (ConversationRatingOption)paramObject;
      if (this.index != ((ConversationRatingOption)paramObject).index) {
        return false;
      }
      if (this.emoji != null)
      {
        if (this.emoji.equals(((ConversationRatingOption)paramObject).emoji)) {}
      }
      else {
        while (((ConversationRatingOption)paramObject).emoji != null) {
          return false;
        }
      }
      if (this.unicode != null) {
        return this.unicode.equals(((ConversationRatingOption)paramObject).unicode);
      }
    } while (((ConversationRatingOption)paramObject).unicode == null);
    return false;
  }
  
  public String getEmoji()
  {
    return this.emoji;
  }
  
  public Integer getIndex()
  {
    return Integer.valueOf(this.index);
  }
  
  public String getUnicode()
  {
    return this.unicode;
  }
  
  public int hashCode()
  {
    int j = 0;
    int k = this.index;
    if (this.emoji != null) {}
    for (int i = this.emoji.hashCode();; i = 0)
    {
      if (this.unicode != null) {
        j = this.unicode.hashCode();
      }
      return (i + k * 31) * 31 + j;
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.index);
    paramParcel.writeString(this.emoji);
    paramParcel.writeString(this.unicode);
  }
  
  public static final class Builder
  {
    String emoji;
    Integer index;
    String unicode;
    
    public final ConversationRatingOption build()
    {
      return new ConversationRatingOption(this, null);
    }
    
    public final Builder withEmoji(String paramString)
    {
      this.emoji = paramString;
      return this;
    }
    
    public final Builder withIndex(Integer paramInteger)
    {
      this.index = paramInteger;
      return this;
    }
    
    public final Builder withUnicode(String paramString)
    {
      this.unicode = paramString;
      return this;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/blocks/models/ConversationRatingOption.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */