package android.support.v4.media.session;

import android.media.session.PlaybackState;
import android.media.session.PlaybackState.CustomAction;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class PlaybackStateCompat
  implements Parcelable
{
  public static final Parcelable.Creator<PlaybackStateCompat> CREATOR = new Parcelable.Creator() {};
  final long CV;
  final long CW;
  final float CX;
  final long CY;
  final int CZ;
  final CharSequence Da;
  final long Db;
  List<CustomAction> Dc;
  final long Dd;
  private Object De;
  final int mState;
  final Bundle zp;
  
  private PlaybackStateCompat(int paramInt, long paramLong1, long paramLong2, float paramFloat, long paramLong3, CharSequence paramCharSequence, long paramLong4, List<CustomAction> paramList, long paramLong5, Bundle paramBundle)
  {
    this.mState = paramInt;
    this.CV = paramLong1;
    this.CW = paramLong2;
    this.CX = paramFloat;
    this.CY = paramLong3;
    this.CZ = 0;
    this.Da = paramCharSequence;
    this.Db = paramLong4;
    this.Dc = new ArrayList(paramList);
    this.Dd = paramLong5;
    this.zp = paramBundle;
  }
  
  PlaybackStateCompat(Parcel paramParcel)
  {
    this.mState = paramParcel.readInt();
    this.CV = paramParcel.readLong();
    this.CX = paramParcel.readFloat();
    this.Db = paramParcel.readLong();
    this.CW = paramParcel.readLong();
    this.CY = paramParcel.readLong();
    this.Da = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
    this.Dc = paramParcel.createTypedArrayList(CustomAction.CREATOR);
    this.Dd = paramParcel.readLong();
    this.zp = paramParcel.readBundle();
    this.CZ = paramParcel.readInt();
  }
  
  public static PlaybackStateCompat z(Object paramObject)
  {
    if ((paramObject != null) && (Build.VERSION.SDK_INT >= 21))
    {
      Object localObject3 = ((PlaybackState)paramObject).getCustomActions();
      Object localObject1 = null;
      if (localObject3 != null)
      {
        localObject2 = new ArrayList(((List)localObject3).size());
        localObject3 = ((List)localObject3).iterator();
        for (;;)
        {
          localObject1 = localObject2;
          if (!((Iterator)localObject3).hasNext()) {
            break;
          }
          ((List)localObject2).add(CustomAction.A(((Iterator)localObject3).next()));
        }
      }
      if (Build.VERSION.SDK_INT >= 22) {}
      for (Object localObject2 = ((PlaybackState)paramObject).getExtras();; localObject2 = null)
      {
        localObject1 = new PlaybackStateCompat(((PlaybackState)paramObject).getState(), ((PlaybackState)paramObject).getPosition(), ((PlaybackState)paramObject).getBufferedPosition(), ((PlaybackState)paramObject).getPlaybackSpeed(), ((PlaybackState)paramObject).getActions(), ((PlaybackState)paramObject).getErrorMessage(), ((PlaybackState)paramObject).getLastPositionUpdateTime(), (List)localObject1, ((PlaybackState)paramObject).getActiveQueueItemId(), (Bundle)localObject2);
        ((PlaybackStateCompat)localObject1).De = paramObject;
        return (PlaybackStateCompat)localObject1;
      }
    }
    return null;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("PlaybackState {");
    localStringBuilder.append("state=").append(this.mState);
    localStringBuilder.append(", position=").append(this.CV);
    localStringBuilder.append(", buffered position=").append(this.CW);
    localStringBuilder.append(", speed=").append(this.CX);
    localStringBuilder.append(", updated=").append(this.Db);
    localStringBuilder.append(", actions=").append(this.CY);
    localStringBuilder.append(", error code=").append(this.CZ);
    localStringBuilder.append(", error message=").append(this.Da);
    localStringBuilder.append(", custom actions=").append(this.Dc);
    localStringBuilder.append(", active item id=").append(this.Dd);
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.mState);
    paramParcel.writeLong(this.CV);
    paramParcel.writeFloat(this.CX);
    paramParcel.writeLong(this.Db);
    paramParcel.writeLong(this.CW);
    paramParcel.writeLong(this.CY);
    TextUtils.writeToParcel(this.Da, paramParcel, paramInt);
    paramParcel.writeTypedList(this.Dc);
    paramParcel.writeLong(this.Dd);
    paramParcel.writeBundle(this.zp);
    paramParcel.writeInt(this.CZ);
  }
  
  public static final class CustomAction
    implements Parcelable
  {
    public static final Parcelable.Creator<CustomAction> CREATOR = new Parcelable.Creator() {};
    private final String Df;
    private final CharSequence Dg;
    private final int Dh;
    private Object Di;
    private final Bundle zp;
    
    CustomAction(Parcel paramParcel)
    {
      this.Df = paramParcel.readString();
      this.Dg = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
      this.Dh = paramParcel.readInt();
      this.zp = paramParcel.readBundle();
    }
    
    private CustomAction(String paramString, CharSequence paramCharSequence, int paramInt, Bundle paramBundle)
    {
      this.Df = paramString;
      this.Dg = paramCharSequence;
      this.Dh = paramInt;
      this.zp = paramBundle;
    }
    
    public static CustomAction A(Object paramObject)
    {
      if ((paramObject == null) || (Build.VERSION.SDK_INT < 21)) {
        return null;
      }
      CustomAction localCustomAction = new CustomAction(((PlaybackState.CustomAction)paramObject).getAction(), ((PlaybackState.CustomAction)paramObject).getName(), ((PlaybackState.CustomAction)paramObject).getIcon(), ((PlaybackState.CustomAction)paramObject).getExtras());
      localCustomAction.Di = paramObject;
      return localCustomAction;
    }
    
    public final int describeContents()
    {
      return 0;
    }
    
    public final String toString()
    {
      return "Action:mName='" + this.Dg + ", mIcon=" + this.Dh + ", mExtras=" + this.zp;
    }
    
    public final void writeToParcel(Parcel paramParcel, int paramInt)
    {
      paramParcel.writeString(this.Df);
      TextUtils.writeToParcel(this.Dg, paramParcel, paramInt);
      paramParcel.writeInt(this.Dh);
      paramParcel.writeBundle(this.zp);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/media/session/PlaybackStateCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */