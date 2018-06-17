package android.support.v4.media.session;

import android.media.session.MediaSession.QueueItem;
import android.os.Build.VERSION;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.ResultReceiver;
import android.support.v4.media.MediaDescriptionCompat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class MediaSessionCompat
{
  public static final class QueueItem
    implements Parcelable
  {
    public static final Parcelable.Creator<QueueItem> CREATOR = new Parcelable.Creator() {};
    private final long CM;
    private Object CN;
    private final MediaDescriptionCompat Cf;
    
    QueueItem(Parcel paramParcel)
    {
      this.Cf = ((MediaDescriptionCompat)MediaDescriptionCompat.CREATOR.createFromParcel(paramParcel));
      this.CM = paramParcel.readLong();
    }
    
    private QueueItem(Object paramObject, MediaDescriptionCompat paramMediaDescriptionCompat, long paramLong)
    {
      if (paramMediaDescriptionCompat == null) {
        throw new IllegalArgumentException("Description cannot be null.");
      }
      if (paramLong == -1L) {
        throw new IllegalArgumentException("Id cannot be QueueItem.UNKNOWN_ID");
      }
      this.Cf = paramMediaDescriptionCompat;
      this.CM = paramLong;
      this.CN = paramObject;
    }
    
    public static List<QueueItem> i(List<?> paramList)
    {
      if ((paramList == null) || (Build.VERSION.SDK_INT < 21)) {
        return null;
      }
      ArrayList localArrayList = new ArrayList();
      Iterator localIterator = paramList.iterator();
      if (localIterator.hasNext())
      {
        paramList = localIterator.next();
        if ((paramList == null) || (Build.VERSION.SDK_INT < 21)) {}
        for (paramList = null;; paramList = new QueueItem(paramList, MediaDescriptionCompat.v(((MediaSession.QueueItem)paramList).getDescription()), ((MediaSession.QueueItem)paramList).getQueueId()))
        {
          localArrayList.add(paramList);
          break;
        }
      }
      return localArrayList;
    }
    
    public final int describeContents()
    {
      return 0;
    }
    
    public final String toString()
    {
      return "MediaSession.QueueItem {Description=" + this.Cf + ", Id=" + this.CM + " }";
    }
    
    public final void writeToParcel(Parcel paramParcel, int paramInt)
    {
      this.Cf.writeToParcel(paramParcel, paramInt);
      paramParcel.writeLong(this.CM);
    }
  }
  
  static final class ResultReceiverWrapper
    implements Parcelable
  {
    public static final Parcelable.Creator<ResultReceiverWrapper> CREATOR = new Parcelable.Creator() {};
    private ResultReceiver CO;
    
    ResultReceiverWrapper(Parcel paramParcel)
    {
      this.CO = ((ResultReceiver)ResultReceiver.CREATOR.createFromParcel(paramParcel));
    }
    
    public final int describeContents()
    {
      return 0;
    }
    
    public final void writeToParcel(Parcel paramParcel, int paramInt)
    {
      this.CO.writeToParcel(paramParcel, paramInt);
    }
  }
  
  public static final class Token
    implements Parcelable
  {
    public static final Parcelable.Creator<Token> CREATOR = new Parcelable.Creator() {};
    private final b CD;
    private final Object CP;
    
    Token(Object paramObject)
    {
      this(paramObject, (byte)0);
    }
    
    private Token(Object paramObject, byte paramByte)
    {
      this.CP = paramObject;
      this.CD = null;
    }
    
    public final int describeContents()
    {
      return 0;
    }
    
    public final boolean equals(Object paramObject)
    {
      if (this == paramObject) {}
      do
      {
        return true;
        if (!(paramObject instanceof Token)) {
          return false;
        }
        paramObject = (Token)paramObject;
        if (this.CP != null) {
          break;
        }
      } while (((Token)paramObject).CP == null);
      return false;
      if (((Token)paramObject).CP == null) {
        return false;
      }
      return this.CP.equals(((Token)paramObject).CP);
    }
    
    public final int hashCode()
    {
      if (this.CP == null) {
        return 0;
      }
      return this.CP.hashCode();
    }
    
    public final void writeToParcel(Parcel paramParcel, int paramInt)
    {
      if (Build.VERSION.SDK_INT >= 21)
      {
        paramParcel.writeParcelable((Parcelable)this.CP, paramInt);
        return;
      }
      paramParcel.writeStrongBinder((IBinder)this.CP);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/media/session/MediaSessionCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */