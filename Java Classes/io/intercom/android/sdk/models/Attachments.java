package io.intercom.android.sdk.models;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.auto.value.AutoValue;
import io.intercom.android.sdk.utilities.NullSafety;

@AutoValue
public abstract class Attachments
  implements Parcelable
{
  public static final Parcelable.Creator<Attachments> CREATOR = new Parcelable.Creator()
  {
    public final Attachments createFromParcel(Parcel paramAnonymousParcel)
    {
      return Attachments.create(paramAnonymousParcel.readString(), paramAnonymousParcel.readString(), paramAnonymousParcel.readString());
    }
    
    public final Attachments[] newArray(int paramAnonymousInt)
    {
      return new Attachments[paramAnonymousInt];
    }
  };
  
  static Attachments create(String paramString1, String paramString2, String paramString3)
  {
    return new AutoValue_Attachments(paramString1, paramString2, paramString3);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public abstract String getContentType();
  
  public abstract String getName();
  
  public abstract String getUrl();
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(getName());
    paramParcel.writeString(getUrl());
    paramParcel.writeString(getContentType());
  }
  
  public static final class Builder
  {
    String content_type;
    String name;
    String url;
    
    public final Attachments build()
    {
      return Attachments.create(NullSafety.valueOrEmpty(this.name), NullSafety.valueOrEmpty(this.url), NullSafety.valueOrEmpty(this.content_type));
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/models/Attachments.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */