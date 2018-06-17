package io.intercom.android.sdk.blocks.models;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class Author
  implements Parcelable
{
  public static final Parcelable.Creator<Author> CREATOR = new Parcelable.Creator()
  {
    public final Author createFromParcel(Parcel paramAnonymousParcel)
    {
      return new Author(paramAnonymousParcel);
    }
    
    public final Author[] newArray(int paramAnonymousInt)
    {
      return new Author[paramAnonymousInt];
    }
  };
  private final String avatar;
  private final String firstName;
  private final String lastName;
  private final String name;
  
  Author()
  {
    this(new Builder());
  }
  
  protected Author(Parcel paramParcel)
  {
    this.name = paramParcel.readString();
    this.avatar = paramParcel.readString();
    this.firstName = paramParcel.readString();
    this.lastName = paramParcel.readString();
  }
  
  private Author(Builder paramBuilder)
  {
    String str;
    if (paramBuilder.name == null)
    {
      str = "";
      this.name = str;
      if (paramBuilder.avatar != null) {
        break label73;
      }
      str = "";
      label29:
      this.avatar = str;
      if (paramBuilder.firstName != null) {
        break label81;
      }
      str = "";
      label44:
      this.firstName = str;
      if (paramBuilder.lastName != null) {
        break label89;
      }
    }
    label73:
    label81:
    label89:
    for (paramBuilder = "";; paramBuilder = paramBuilder.lastName)
    {
      this.lastName = paramBuilder;
      return;
      str = paramBuilder.name;
      break;
      str = paramBuilder.avatar;
      break label29;
      str = paramBuilder.firstName;
      break label44;
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
      paramObject = (Author)paramObject;
      if (this.name != null)
      {
        if (this.name.equals(((Author)paramObject).name)) {}
      }
      else {
        while (((Author)paramObject).name != null) {
          return false;
        }
      }
      if (this.firstName != null)
      {
        if (this.firstName.equals(((Author)paramObject).firstName)) {}
      }
      else {
        while (((Author)paramObject).firstName != null) {
          return false;
        }
      }
      if (this.lastName != null)
      {
        if (this.lastName.equals(((Author)paramObject).lastName)) {}
      }
      else {
        while (((Author)paramObject).lastName != null) {
          return false;
        }
      }
      if (this.avatar == null) {
        break;
      }
    } while (this.avatar.equals(((Author)paramObject).avatar));
    while (((Author)paramObject).avatar != null) {
      return false;
    }
    return true;
  }
  
  public String getAvatar()
  {
    return this.avatar;
  }
  
  public String getFirstName()
  {
    return this.firstName;
  }
  
  public String getLastName()
  {
    return this.lastName;
  }
  
  public String getName()
  {
    return this.name;
  }
  
  public int hashCode()
  {
    int m = 0;
    int i;
    int j;
    if (this.name != null)
    {
      i = this.name.hashCode();
      if (this.firstName == null) {
        break label87;
      }
      j = this.firstName.hashCode();
      label33:
      if (this.lastName == null) {
        break label92;
      }
    }
    label87:
    label92:
    for (int k = this.lastName.hashCode();; k = 0)
    {
      if (this.avatar != null) {
        m = this.avatar.hashCode();
      }
      return (k + (j + i * 31) * 31) * 31 + m;
      i = 0;
      break;
      j = 0;
      break label33;
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.name);
    paramParcel.writeString(this.avatar);
    paramParcel.writeString(this.firstName);
    paramParcel.writeString(this.lastName);
  }
  
  public static final class Builder
  {
    String avatar;
    String firstName;
    String lastName;
    String name;
    
    public final Author build()
    {
      return new Author(this, null);
    }
    
    public final Builder withAvatar(String paramString)
    {
      this.avatar = paramString;
      return this;
    }
    
    public final Builder withFirstName(String paramString)
    {
      this.firstName = paramString;
      return this;
    }
    
    public final Builder withLastName(String paramString)
    {
      this.lastName = paramString;
      return this;
    }
    
    public final Builder withName(String paramString)
    {
      this.name = paramString;
      return this;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/blocks/models/Author.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */