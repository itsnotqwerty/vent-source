package io.intercom.android.sdk.blocks.models;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.ArrayList;
import java.util.List;

public class ConversationRating
  implements Parcelable
{
  public static final Parcelable.Creator<ConversationRating> CREATOR = new Parcelable.Creator()
  {
    public final ConversationRating createFromParcel(Parcel paramAnonymousParcel)
    {
      return new ConversationRating(paramAnonymousParcel);
    }
    
    public final ConversationRating[] newArray(int paramAnonymousInt)
    {
      return new ConversationRating[paramAnonymousInt];
    }
  };
  private final List<ConversationRatingOption> options;
  private int ratingIndex;
  private String remark;
  
  ConversationRating(int paramInt, String paramString, List<ConversationRatingOption> paramList)
  {
    this.ratingIndex = paramInt;
    this.remark = paramString;
    this.options = paramList;
  }
  
  protected ConversationRating(Parcel paramParcel)
  {
    this.ratingIndex = paramParcel.readInt();
    this.remark = paramParcel.readString();
    this.options = new ArrayList();
    paramParcel.readList(this.options, ConversationRatingOption.class.getClassLoader());
  }
  
  public static ConversationRating fromBlock(Block paramBlock)
  {
    if (paramBlock == null) {
      return new ConversationRating(-1, "", new ArrayList());
    }
    return new ConversationRating(paramBlock.getRatingIndex(), paramBlock.getRemark(), paramBlock.getOptions());
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
      paramObject = (ConversationRating)paramObject;
      if (this.ratingIndex != ((ConversationRating)paramObject).ratingIndex) {
        return false;
      }
      if (this.remark != null)
      {
        if (this.remark.equals(((ConversationRating)paramObject).remark)) {}
      }
      else {
        while (((ConversationRating)paramObject).remark != null) {
          return false;
        }
      }
      if (this.options != null) {
        return this.options.equals(((ConversationRating)paramObject).options);
      }
    } while (((ConversationRating)paramObject).options == null);
    return false;
  }
  
  public List<ConversationRatingOption> getOptions()
  {
    return this.options;
  }
  
  public Integer getRatingIndex()
  {
    return Integer.valueOf(this.ratingIndex);
  }
  
  public String getRemark()
  {
    return this.remark;
  }
  
  public int hashCode()
  {
    int j = 0;
    int k = this.ratingIndex;
    if (this.remark != null) {}
    for (int i = this.remark.hashCode();; i = 0)
    {
      if (this.options != null) {
        j = this.options.hashCode();
      }
      return (i + k * 31) * 31 + j;
    }
  }
  
  public void setRatingIndex(int paramInt)
  {
    this.ratingIndex = paramInt;
  }
  
  public void setRemark(String paramString)
  {
    this.remark = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.ratingIndex);
    paramParcel.writeString(this.remark);
    paramParcel.writeList(this.options);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/blocks/models/ConversationRating.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */