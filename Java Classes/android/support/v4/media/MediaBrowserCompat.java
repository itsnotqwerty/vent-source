package android.support.v4.media;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v4.d.c;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;

public final class MediaBrowserCompat
{
  static final boolean DEBUG = Log.isLoggable("MediaBrowserCompat", 3);
  
  private static class CustomActionResultReceiver
    extends c
  {
    private final MediaBrowserCompat.a Ce;
    private final Bundle zp;
    
    protected final void onReceiveResult(int paramInt, Bundle paramBundle)
    {
      if (this.Ce == null) {
        return;
      }
      switch (paramInt)
      {
      }
      Log.w("MediaBrowserCompat", "Unknown result code: " + paramInt + " (extras=" + this.zp + ", resultData=" + paramBundle + ")");
    }
  }
  
  private static class ItemReceiver
    extends c
  {
    protected final void onReceiveResult(int paramInt, Bundle paramBundle)
    {
      if (paramBundle != null) {
        paramBundle.setClassLoader(MediaBrowserCompat.class.getClassLoader());
      }
      if ((paramInt != 0) || (paramBundle == null) || (!paramBundle.containsKey("media_item"))) {
        return;
      }
      paramBundle.getParcelable("media_item");
    }
  }
  
  public static class MediaItem
    implements Parcelable
  {
    public static final Parcelable.Creator<MediaItem> CREATOR = new Parcelable.Creator() {};
    private final MediaDescriptionCompat Cf;
    private final int mFlags;
    
    MediaItem(Parcel paramParcel)
    {
      this.mFlags = paramParcel.readInt();
      this.Cf = ((MediaDescriptionCompat)MediaDescriptionCompat.CREATOR.createFromParcel(paramParcel));
    }
    
    public int describeContents()
    {
      return 0;
    }
    
    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder("MediaItem{");
      localStringBuilder.append("mFlags=").append(this.mFlags);
      localStringBuilder.append(", mDescription=").append(this.Cf);
      localStringBuilder.append('}');
      return localStringBuilder.toString();
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      paramParcel.writeInt(this.mFlags);
      this.Cf.writeToParcel(paramParcel, paramInt);
    }
  }
  
  private static class SearchResultReceiver
    extends c
  {
    protected final void onReceiveResult(int paramInt, Bundle paramBundle)
    {
      if (paramBundle != null) {
        paramBundle.setClassLoader(MediaBrowserCompat.class.getClassLoader());
      }
      if ((paramInt != 0) || (paramBundle == null) || (!paramBundle.containsKey("search_results"))) {}
      for (;;)
      {
        return;
        paramBundle = paramBundle.getParcelableArray("search_results");
        if (paramBundle != null)
        {
          ArrayList localArrayList = new ArrayList();
          int i = paramBundle.length;
          paramInt = 0;
          while (paramInt < i)
          {
            localArrayList.add((MediaBrowserCompat.MediaItem)paramBundle[paramInt]);
            paramInt += 1;
          }
        }
      }
    }
  }
  
  public static abstract class a {}
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/media/MediaBrowserCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */