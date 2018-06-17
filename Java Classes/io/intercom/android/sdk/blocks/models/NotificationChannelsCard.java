package io.intercom.android.sdk.blocks.models;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import io.intercom.android.sdk.blocks.BlockType;
import java.util.ArrayList;
import java.util.List;

public class NotificationChannelsCard
  implements Parcelable
{
  public static final Parcelable.Creator<NotificationChannelsCard> CREATOR = new Parcelable.Creator()
  {
    public final NotificationChannelsCard createFromParcel(Parcel paramAnonymousParcel)
    {
      return new NotificationChannelsCard(paramAnonymousParcel);
    }
    
    public final NotificationChannelsCard[] newArray(int paramAnonymousInt)
    {
      return new NotificationChannelsCard[paramAnonymousInt];
    }
  };
  private final List<Channel> channels;
  private final String text;
  private final String title;
  private final BlockType type;
  
  NotificationChannelsCard()
  {
    this(new Builder());
  }
  
  protected NotificationChannelsCard(Parcel paramParcel)
  {
    int i = paramParcel.readInt();
    if (i == -1) {}
    for (BlockType localBlockType = null;; localBlockType = BlockType.values()[i])
    {
      this.type = localBlockType;
      this.text = paramParcel.readString();
      this.title = paramParcel.readString();
      this.channels = paramParcel.createTypedArrayList(Channel.CREATOR);
      return;
    }
  }
  
  private NotificationChannelsCard(Builder paramBuilder)
  {
    Object localObject;
    if (paramBuilder.type == null)
    {
      localObject = BlockType.NOTIFICATIONCHANNELSCARD;
      this.type = ((BlockType)localObject);
      if (paramBuilder.text != null) {
        break label82;
      }
      localObject = "";
      label30:
      this.text = ((String)localObject);
      if (paramBuilder.title != null) {
        break label90;
      }
      localObject = "";
      label45:
      this.title = ((String)localObject);
      if (paramBuilder.channels != null) {
        break label98;
      }
    }
    label82:
    label90:
    label98:
    for (paramBuilder = new ArrayList();; paramBuilder = paramBuilder.channels)
    {
      this.channels = paramBuilder;
      return;
      localObject = BlockType.typeValueOf(paramBuilder.type);
      break;
      localObject = paramBuilder.text;
      break label30;
      localObject = paramBuilder.title;
      break label45;
    }
  }
  
  public static NotificationChannelsCard fromBlock(Block paramBlock)
  {
    if (paramBlock == null) {
      return new NotificationChannelsCard();
    }
    Builder localBuilder = new Builder();
    localBuilder.type = paramBlock.getType().name();
    localBuilder.title = paramBlock.getTitle();
    localBuilder.text = paramBlock.getText();
    localBuilder.channels = paramBlock.getChannels();
    return new NotificationChannelsCard(localBuilder);
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
      paramObject = (NotificationChannelsCard)paramObject;
      if (this.type != ((NotificationChannelsCard)paramObject).type) {
        return false;
      }
      if (this.text != null)
      {
        if (this.text.equals(((NotificationChannelsCard)paramObject).text)) {}
      }
      else {
        while (((NotificationChannelsCard)paramObject).text != null) {
          return false;
        }
      }
      if (this.title != null)
      {
        if (this.title.equals(((NotificationChannelsCard)paramObject).title)) {}
      }
      else {
        while (((NotificationChannelsCard)paramObject).title != null) {
          return false;
        }
      }
      if (this.channels != null) {
        return this.channels.equals(((NotificationChannelsCard)paramObject).channels);
      }
    } while (((NotificationChannelsCard)paramObject).channels == null);
    return false;
  }
  
  public List<Channel> getChannels()
  {
    return this.channels;
  }
  
  public String getText()
  {
    return this.text;
  }
  
  public String getTitle()
  {
    return this.title;
  }
  
  public BlockType getType()
  {
    return this.type;
  }
  
  public int hashCode()
  {
    int m = 0;
    int i;
    int j;
    if (this.type != null)
    {
      i = this.type.hashCode();
      if (this.text == null) {
        break label89;
      }
      j = this.text.hashCode();
      label33:
      if (this.title == null) {
        break label94;
      }
    }
    label89:
    label94:
    for (int k = this.title.hashCode();; k = 0)
    {
      if (this.channels != null) {
        m = this.channels.hashCode();
      }
      return (k + (j + i * 31) * 31) * 31 + m;
      i = 0;
      break;
      j = 0;
      break label33;
    }
  }
  
  public String toString()
  {
    return "NotificationChannelsCard{type=" + this.type + ", text='" + this.text + '\'' + ", title='" + this.title + '\'' + ", channels=" + this.channels + '}';
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (this.type == null) {}
    for (paramInt = -1;; paramInt = this.type.ordinal())
    {
      paramParcel.writeInt(paramInt);
      paramParcel.writeString(this.text);
      paramParcel.writeString(this.title);
      paramParcel.writeTypedList(this.channels);
      return;
    }
  }
  
  public static final class Builder
  {
    List<Channel> channels;
    String text;
    String title;
    String type;
    
    public final NotificationChannelsCard build()
    {
      return new NotificationChannelsCard(this, null);
    }
    
    public final Builder withChannels(List<Channel> paramList)
    {
      this.channels = paramList;
      return this;
    }
    
    public final Builder withText(String paramString)
    {
      this.text = paramString;
      return this;
    }
    
    public final Builder withTitle(String paramString)
    {
      this.title = paramString;
      return this;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/blocks/models/NotificationChannelsCard.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */