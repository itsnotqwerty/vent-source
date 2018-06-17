package io.intercom.android.sdk.models;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.auto.value.AutoValue;
import io.intercom.android.sdk.utilities.NullSafety;

@AutoValue
public abstract class Reaction
  implements Parcelable
{
  public static final Parcelable.Creator<Reaction> CREATOR = new Parcelable.Creator()
  {
    public final Reaction createFromParcel(Parcel paramAnonymousParcel)
    {
      return Reaction.create(paramAnonymousParcel.readInt(), paramAnonymousParcel.readString());
    }
    
    public final Reaction[] newArray(int paramAnonymousInt)
    {
      return new Reaction[paramAnonymousInt];
    }
  };
  
  public static Reaction create(int paramInt, String paramString)
  {
    return new AutoValue_Reaction(paramInt, paramString);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public abstract String getImageUrl();
  
  public abstract int getIndex();
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(getIndex());
    paramParcel.writeString(getImageUrl());
  }
  
  public static final class Builder
  {
    String image_url;
    int index;
    
    public final Reaction build()
    {
      return Reaction.create(this.index, NullSafety.valueOrEmpty(this.image_url));
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/models/Reaction.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */