package io.intercom.android.sdk.models;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.auto.value.AutoValue;
import io.intercom.android.sdk.utilities.NullSafety;

@AutoValue
public abstract class Avatar
  implements Parcelable
{
  public static final Parcelable.Creator<Avatar> CREATOR = new Parcelable.Creator()
  {
    public final Avatar createFromParcel(Parcel paramAnonymousParcel)
    {
      return Avatar.create(paramAnonymousParcel.readString(), paramAnonymousParcel.readString());
    }
    
    public final Avatar[] newArray(int paramAnonymousInt)
    {
      return new Avatar[paramAnonymousInt];
    }
  };
  
  public static Avatar create(String paramString1, String paramString2)
  {
    return new AutoValue_Avatar(paramString1, paramString2);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public abstract String getImageUrl();
  
  public abstract String getInitials();
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(getImageUrl());
    paramParcel.writeString(getInitials());
  }
  
  public static final class Builder
  {
    String image_url;
    String initials;
    
    public final Avatar build()
    {
      return Avatar.create(NullSafety.valueOrEmpty(this.image_url), NullSafety.valueOrEmpty(this.initials));
    }
    
    final Builder withInitials(String paramString)
    {
      this.initials = paramString;
      return this;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/models/Avatar.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */