package io.intercom.android.sdk.models;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.auto.value.AutoValue;
import io.intercom.android.sdk.utilities.NullSafety;

@AutoValue
public abstract class SocialAccount
  implements Parcelable
{
  public static final Parcelable.Creator<SocialAccount> CREATOR = new Parcelable.Creator()
  {
    public final SocialAccount createFromParcel(Parcel paramAnonymousParcel)
    {
      return SocialAccount.create(paramAnonymousParcel.readString(), paramAnonymousParcel.readString());
    }
    
    public final SocialAccount[] newArray(int paramAnonymousInt)
    {
      return new SocialAccount[paramAnonymousInt];
    }
  };
  public static final SocialAccount NULL = create("", "");
  
  public static SocialAccount create(String paramString1, String paramString2)
  {
    return new AutoValue_SocialAccount(paramString1, paramString2);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public abstract String getProfileUrl();
  
  public abstract String getProvider();
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(getProvider());
    paramParcel.writeString(getProfileUrl());
  }
  
  public static final class Builder
  {
    String profile_url;
    String provider;
    
    public final SocialAccount build()
    {
      return SocialAccount.create(NullSafety.valueOrEmpty(this.provider), NullSafety.valueOrEmpty(this.profile_url));
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/models/SocialAccount.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */