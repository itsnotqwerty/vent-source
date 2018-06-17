package io.intercom.android.sdk.models;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.auto.value.AutoValue;
import io.intercom.android.sdk.utilities.NameUtils;
import io.intercom.android.sdk.utilities.NullSafety;

@AutoValue
public abstract class Participant
  implements Parcelable
{
  public static final String ADMIN_TYPE = "admin";
  public static final Parcelable.Creator<Participant> CREATOR = new Parcelable.Creator()
  {
    public final Participant createFromParcel(Parcel paramAnonymousParcel)
    {
      return Participant.create(paramAnonymousParcel.readString(), paramAnonymousParcel.readString(), paramAnonymousParcel.readString(), paramAnonymousParcel.readString(), (Avatar)paramAnonymousParcel.readValue(Avatar.class.getClassLoader()));
    }
    
    public final Participant[] newArray(int paramAnonymousInt)
    {
      return new Participant[paramAnonymousInt];
    }
  };
  public static final Participant NULL = create("", "", "", "", Avatar.create("", ""));
  static final String USER_TYPE = "user";
  
  public static Participant create(String paramString1, String paramString2, String paramString3, String paramString4, Avatar paramAvatar)
  {
    return new AutoValue_Participant(paramString1, paramString2, paramString3, paramString4, paramAvatar);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public abstract Avatar getAvatar();
  
  public abstract String getEmail();
  
  public String getForename()
  {
    return nameOrEmail().trim().split(" ")[0];
  }
  
  public abstract String getId();
  
  public abstract String getName();
  
  public abstract String getType();
  
  public boolean isAdmin()
  {
    return "admin".equals(getType());
  }
  
  public boolean isUserWithId(String paramString)
  {
    return ("user".equals(getType())) && (getId().equals(paramString));
  }
  
  String nameOrEmail()
  {
    if (getName().isEmpty()) {
      return getEmail();
    }
    return getName();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(getId());
    paramParcel.writeString(getName());
    paramParcel.writeString(getType());
    paramParcel.writeString(getEmail());
    paramParcel.writeValue(getAvatar());
  }
  
  public static final class Builder
  {
    Avatar.Builder avatar;
    String email;
    String id;
    String name;
    String type;
    
    public final Participant build()
    {
      String str1;
      String str2;
      String str3;
      if (this.type == null)
      {
        str1 = "user";
        str2 = NullSafety.valueOrEmpty(this.name);
        str3 = NullSafety.valueOrEmpty(this.email);
        if (!str2.isEmpty()) {
          break label80;
        }
        localObject = str3;
        label37:
        localObject = NameUtils.getInitial((String)localObject);
        if (this.avatar != null) {
          break label85;
        }
      }
      label80:
      label85:
      for (Object localObject = Avatar.create("", (String)localObject);; localObject = this.avatar.withInitials((String)localObject).build())
      {
        return Participant.create(NullSafety.valueOrEmpty(this.id), str2, str1, str3, (Avatar)localObject);
        str1 = this.type;
        break;
        localObject = str2;
        break label37;
      }
    }
    
    public final Builder withEmail(String paramString)
    {
      this.email = paramString;
      return this;
    }
    
    public final Builder withId(String paramString)
    {
      this.id = paramString;
      return this;
    }
    
    public final Builder withName(String paramString)
    {
      this.name = paramString;
      return this;
    }
    
    public final Builder withType(String paramString)
    {
      this.type = paramString;
      return this;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/models/Participant.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */