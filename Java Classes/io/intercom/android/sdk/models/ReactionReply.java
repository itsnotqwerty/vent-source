package io.intercom.android.sdk.models;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import io.intercom.android.sdk.commons.utilities.CollectionUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ReactionReply
  implements Parcelable
{
  public static final Parcelable.Creator<ReactionReply> CREATOR = new Parcelable.Creator()
  {
    public final ReactionReply createFromParcel(Parcel paramAnonymousParcel)
    {
      return new ReactionReply(paramAnonymousParcel);
    }
    
    public final ReactionReply[] newArray(int paramAnonymousInt)
    {
      return new ReactionReply[paramAnonymousInt];
    }
  };
  public static final ReactionReply NULL = new ReactionReply(new Builder());
  private Integer reactionIndex;
  private final List<Reaction> reactionSet;
  
  ReactionReply(Parcel paramParcel)
  {
    if (paramParcel.readByte() == 0) {}
    for (Integer localInteger = null;; localInteger = Integer.valueOf(paramParcel.readInt()))
    {
      this.reactionIndex = localInteger;
      this.reactionSet = new ArrayList();
      paramParcel.readList(this.reactionSet, Reaction.class.getClassLoader());
      return;
    }
  }
  
  ReactionReply(Builder paramBuilder)
  {
    this.reactionIndex = paramBuilder.reaction_index;
    this.reactionSet = new ArrayList(CollectionUtils.capacityFor(paramBuilder.reaction_set));
    if (paramBuilder.reaction_set != null)
    {
      paramBuilder = paramBuilder.reaction_set.iterator();
      while (paramBuilder.hasNext())
      {
        Reaction.Builder localBuilder = (Reaction.Builder)paramBuilder.next();
        this.reactionSet.add(localBuilder.build());
      }
    }
  }
  
  public static boolean isNull(ReactionReply paramReactionReply)
  {
    return (NULL.equals(paramReactionReply)) || (paramReactionReply == null);
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
      paramObject = (ReactionReply)paramObject;
      if (!this.reactionSet.equals(((ReactionReply)paramObject).reactionSet)) {
        return false;
      }
      if (this.reactionIndex != null) {
        return this.reactionIndex.equals(((ReactionReply)paramObject).reactionIndex);
      }
    } while (((ReactionReply)paramObject).reactionIndex == null);
    return false;
  }
  
  public Integer getReactionIndex()
  {
    return this.reactionIndex;
  }
  
  public List<Reaction> getReactionSet()
  {
    return this.reactionSet;
  }
  
  public int hashCode()
  {
    int j = this.reactionSet.hashCode();
    if (this.reactionIndex != null) {}
    for (int i = this.reactionIndex.hashCode();; i = 0) {
      return i + j * 31;
    }
  }
  
  public void setReactionIndex(int paramInt)
  {
    this.reactionIndex = Integer.valueOf(paramInt);
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (this.reactionIndex == null) {
      paramParcel.writeByte((byte)0);
    }
    for (;;)
    {
      paramParcel.writeList(this.reactionSet);
      return;
      paramParcel.writeByte((byte)1);
      paramParcel.writeInt(this.reactionIndex.intValue());
    }
  }
  
  public static class Builder
  {
    Integer reaction_index;
    List<Reaction.Builder> reaction_set;
    
    public ReactionReply build()
    {
      return new ReactionReply(this);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/io/intercom/android/sdk/models/ReactionReply.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */