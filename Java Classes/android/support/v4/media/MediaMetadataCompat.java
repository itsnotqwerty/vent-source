package android.support.v4.media;

import android.media.MediaMetadata;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v4.g.a;

public final class MediaMetadataCompat
  implements Parcelable
{
  public static final Parcelable.Creator<MediaMetadataCompat> CREATOR = new Parcelable.Creator() {};
  static final a<String, Integer> Co;
  private static final String[] Cp;
  private static final String[] Cq;
  private static final String[] Cr;
  final Bundle Cs;
  private Object Ct;
  
  static
  {
    a locala = new a();
    Co = locala;
    locala.put("android.media.metadata.TITLE", Integer.valueOf(1));
    Co.put("android.media.metadata.ARTIST", Integer.valueOf(1));
    Co.put("android.media.metadata.DURATION", Integer.valueOf(0));
    Co.put("android.media.metadata.ALBUM", Integer.valueOf(1));
    Co.put("android.media.metadata.AUTHOR", Integer.valueOf(1));
    Co.put("android.media.metadata.WRITER", Integer.valueOf(1));
    Co.put("android.media.metadata.COMPOSER", Integer.valueOf(1));
    Co.put("android.media.metadata.COMPILATION", Integer.valueOf(1));
    Co.put("android.media.metadata.DATE", Integer.valueOf(1));
    Co.put("android.media.metadata.YEAR", Integer.valueOf(0));
    Co.put("android.media.metadata.GENRE", Integer.valueOf(1));
    Co.put("android.media.metadata.TRACK_NUMBER", Integer.valueOf(0));
    Co.put("android.media.metadata.NUM_TRACKS", Integer.valueOf(0));
    Co.put("android.media.metadata.DISC_NUMBER", Integer.valueOf(0));
    Co.put("android.media.metadata.ALBUM_ARTIST", Integer.valueOf(1));
    Co.put("android.media.metadata.ART", Integer.valueOf(2));
    Co.put("android.media.metadata.ART_URI", Integer.valueOf(1));
    Co.put("android.media.metadata.ALBUM_ART", Integer.valueOf(2));
    Co.put("android.media.metadata.ALBUM_ART_URI", Integer.valueOf(1));
    Co.put("android.media.metadata.USER_RATING", Integer.valueOf(3));
    Co.put("android.media.metadata.RATING", Integer.valueOf(3));
    Co.put("android.media.metadata.DISPLAY_TITLE", Integer.valueOf(1));
    Co.put("android.media.metadata.DISPLAY_SUBTITLE", Integer.valueOf(1));
    Co.put("android.media.metadata.DISPLAY_DESCRIPTION", Integer.valueOf(1));
    Co.put("android.media.metadata.DISPLAY_ICON", Integer.valueOf(2));
    Co.put("android.media.metadata.DISPLAY_ICON_URI", Integer.valueOf(1));
    Co.put("android.media.metadata.MEDIA_ID", Integer.valueOf(1));
    Co.put("android.media.metadata.BT_FOLDER_TYPE", Integer.valueOf(0));
    Co.put("android.media.metadata.MEDIA_URI", Integer.valueOf(1));
    Co.put("android.media.metadata.ADVERTISEMENT", Integer.valueOf(0));
    Co.put("android.media.metadata.DOWNLOAD_STATUS", Integer.valueOf(0));
    Cp = new String[] { "android.media.metadata.TITLE", "android.media.metadata.ARTIST", "android.media.metadata.ALBUM", "android.media.metadata.ALBUM_ARTIST", "android.media.metadata.WRITER", "android.media.metadata.AUTHOR", "android.media.metadata.COMPOSER" };
    Cq = new String[] { "android.media.metadata.DISPLAY_ICON", "android.media.metadata.ART", "android.media.metadata.ALBUM_ART" };
    Cr = new String[] { "android.media.metadata.DISPLAY_ICON_URI", "android.media.metadata.ART_URI", "android.media.metadata.ALBUM_ART_URI" };
  }
  
  MediaMetadataCompat(Parcel paramParcel)
  {
    this.Cs = paramParcel.readBundle();
    this.Cs.setClassLoader(MediaMetadataCompat.class.getClassLoader());
  }
  
  public static MediaMetadataCompat w(Object paramObject)
  {
    if ((paramObject != null) && (Build.VERSION.SDK_INT >= 21))
    {
      Parcel localParcel = Parcel.obtain();
      ((MediaMetadata)paramObject).writeToParcel(localParcel, 0);
      localParcel.setDataPosition(0);
      MediaMetadataCompat localMediaMetadataCompat = (MediaMetadataCompat)CREATOR.createFromParcel(localParcel);
      localParcel.recycle();
      localMediaMetadataCompat.Ct = paramObject;
      return localMediaMetadataCompat;
    }
    return null;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeBundle(this.Cs);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/media/MediaMetadataCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */