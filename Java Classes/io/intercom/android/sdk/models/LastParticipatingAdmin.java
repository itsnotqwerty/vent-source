package io.intercom.android.sdk.models;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import io.intercom.android.sdk.utilities.NullSafety;
import java.util.Iterator;
import java.util.List;

public class LastParticipatingAdmin
  implements Parcelable
{
  public static final Parcelable.Creator<LastParticipatingAdmin> CREATOR = new Parcelable.Creator()
  {
    public final LastParticipatingAdmin createFromParcel(Parcel paramAnonymousParcel)
    {
      return new LastParticipatingAdmin(paramAnonymousParcel);
    }
    
    public final LastParticipatingAdmin[] newArray(int paramAnonymousInt)
    {
      return new LastParticipatingAdmin[paramAnonymousInt];
    }
  };
  private static final String LINKED_IN = "linkedin";
  public static final LastParticipatingAdmin NONE = new LastParticipatingAdmin(new Builder());
  public static final LastParticipatingAdmin NULL = new LastParticipatingAdmin(new Builder());
  private static final String TWITTER = "twitter";
  private final Avatar avatar;
  private final String firstName;
  private final String intro;
  private final boolean isActive;
  private final String jobTitle;
  private final long lastActiveAt;
  private final SocialAccount linkedIn;
  private final Location location;
  private final SocialAccount twitter;
  
  LastParticipatingAdmin(Parcel paramParcel)
  {
    this.lastActiveAt = paramParcel.readLong();
    if (paramParcel.readByte() != 0) {}
    for (boolean bool = true;; bool = false)
    {
      this.isActive = bool;
      this.avatar = ((Avatar)paramParcel.readValue(Avatar.class.getClassLoader()));
      this.firstName = paramParcel.readString();
      this.intro = paramParcel.readString();
      this.jobTitle = paramParcel.readString();
      this.location = ((Location)paramParcel.readValue(Location.class.getClassLoader()));
      this.twitter = ((SocialAccount)paramParcel.readValue(SocialAccount.class.getClassLoader()));
      this.linkedIn = ((SocialAccount)paramParcel.readValue(SocialAccount.class.getClassLoader()));
      return;
    }
  }
  
  public LastParticipatingAdmin(Builder paramBuilder)
  {
    if (paramBuilder.avatar == null)
    {
      localObject1 = new Avatar.Builder().build();
      this.avatar = ((Avatar)localObject1);
      this.firstName = NullSafety.valueOrEmpty(paramBuilder.first_name);
      this.intro = NullSafety.valueOrEmpty(paramBuilder.intro);
      this.jobTitle = NullSafety.valueOrEmpty(paramBuilder.job_title);
      if (paramBuilder.location != null) {
        break label184;
      }
    }
    Object localObject2;
    Object localObject3;
    label184:
    for (Object localObject1 = new Location.Builder().build();; localObject1 = paramBuilder.location.build())
    {
      this.location = ((Location)localObject1);
      this.lastActiveAt = paramBuilder.last_active_at;
      this.isActive = paramBuilder.is_active;
      localObject1 = SocialAccount.NULL;
      localObject2 = SocialAccount.NULL;
      if (paramBuilder.social_accounts == null) {
        break label212;
      }
      Iterator localIterator = paramBuilder.social_accounts.iterator();
      paramBuilder = (Builder)localObject2;
      for (;;)
      {
        localObject3 = paramBuilder;
        localObject2 = localObject1;
        if (!localIterator.hasNext()) {
          break label217;
        }
        localObject2 = ((SocialAccount.Builder)localIterator.next()).build();
        if (!"twitter".equals(((SocialAccount)localObject2).getProvider())) {
          break;
        }
        localObject1 = localObject2;
      }
      localObject1 = paramBuilder.avatar.build();
      break;
    }
    if ("linkedin".equals(((SocialAccount)localObject2).getProvider())) {
      paramBuilder = (Builder)localObject2;
    }
    for (;;)
    {
      break;
      label212:
      localObject3 = localObject2;
      localObject2 = localObject1;
      label217:
      this.twitter = ((SocialAccount)localObject2);
      this.linkedIn = ((SocialAccount)localObject3);
      return;
    }
  }
  
  public static boolean isNull(LastParticipatingAdmin paramLastParticipatingAdmin)
  {
    return (paramLastParticipatingAdmin != NONE) && ((NULL.equals(paramLastParticipatingAdmin)) || (paramLastParticipatingAdmin == null));
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public Avatar getAvatar()
  {
    return this.avatar;
  }
  
  public String getFirstName()
  {
    return this.firstName;
  }
  
  public String getIntro()
  {
    return this.intro;
  }
  
  public String getJobTitle()
  {
    return this.jobTitle;
  }
  
  public long getLastActiveAt()
  {
    return this.lastActiveAt;
  }
  
  public SocialAccount getLinkedIn()
  {
    return this.linkedIn;
  }
  
  public Location getLocation()
  {
    return this.location;
  }
  
  public SocialAccount getTwitter()
  {
    return this.twitter;
  }
  
  public boolean isActive()
  {
    return this.isActive;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeLong(this.lastActiveAt);
    if (this.isActive) {}
    for (paramInt = 1;; paramInt = 0)
    {
      paramParcel.writeByte((byte)paramInt);
      paramParcel.writeValue(this.avatar);
      paramParcel.writeString(this.firstName);
      paramParcel.writeString(this.intro);
      paramParcel.writeString(this.jobTitle);
      paramParcel.writeValue(this.location);
      paramParcel.writeValue(this.twitter);
      paramParcel.writeValue(this.linkedIn);
      return;
    }
  }
  
  public static final class Builder
  {
    Avatar.Builder avatar;
    String first_name;
    String intro;
    boolean is_active;
    String job_title;
    long last_active_at;
    Location.Builder location;
    List<SocialAccount.Builder> social_accounts;
    
    public final LastParticipatingAdmin build()
    {
      return new LastParticipatingAdmin(this);
    }
    
    public final Builder withFirstName(String paramString)
    {
      this.first_name = paramString;
      return this;
    }
    
    public final Builder withIntro(String paramString)
    {
      this.intro = paramString;
      return this;
    }
    
    public final Builder withJobTitle(String paramString)
    {
      this.job_title = paramString;
      return this;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/models/LastParticipatingAdmin.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */