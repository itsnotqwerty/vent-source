package android.support.v4.media;

import android.graphics.Bitmap;
import android.media.MediaDescription;
import android.media.MediaDescription.Builder;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;

public final class MediaDescriptionCompat
  implements Parcelable
{
  public static final Parcelable.Creator<MediaDescriptionCompat> CREATOR = new Parcelable.Creator() {};
  private final String Cg;
  private final CharSequence Ch;
  private final CharSequence Ci;
  private final CharSequence Cj;
  private final Bitmap Ck;
  private final Uri Cl;
  private final Uri Cm;
  private Object Cn;
  private final Bundle zp;
  
  MediaDescriptionCompat(Parcel paramParcel)
  {
    this.Cg = paramParcel.readString();
    this.Ch = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
    this.Ci = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
    this.Cj = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
    this.Ck = ((Bitmap)paramParcel.readParcelable(null));
    this.Cl = ((Uri)paramParcel.readParcelable(null));
    this.zp = paramParcel.readBundle();
    this.Cm = ((Uri)paramParcel.readParcelable(null));
  }
  
  private MediaDescriptionCompat(String paramString, CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, Bitmap paramBitmap, Uri paramUri1, Bundle paramBundle, Uri paramUri2)
  {
    this.Cg = paramString;
    this.Ch = paramCharSequence1;
    this.Ci = paramCharSequence2;
    this.Cj = paramCharSequence3;
    this.Ck = paramBitmap;
    this.Cl = paramUri1;
    this.zp = paramBundle;
    this.Cm = paramUri2;
  }
  
  public static MediaDescriptionCompat v(Object paramObject)
  {
    if ((paramObject != null) && (Build.VERSION.SDK_INT >= 21))
    {
      a locala = new a();
      locala.Cg = ((MediaDescription)paramObject).getMediaId();
      locala.Ch = ((MediaDescription)paramObject).getTitle();
      locala.Ci = ((MediaDescription)paramObject).getSubtitle();
      locala.Cj = ((MediaDescription)paramObject).getDescription();
      locala.Ck = ((MediaDescription)paramObject).getIconBitmap();
      locala.Cl = ((MediaDescription)paramObject).getIconUri();
      Bundle localBundle = ((MediaDescription)paramObject).getExtras();
      Object localObject;
      if (localBundle == null)
      {
        localObject = null;
        if (localObject == null) {
          break label209;
        }
        if ((!localBundle.containsKey("android.support.v4.media.description.NULL_BUNDLE_FLAG")) || (localBundle.size() != 2)) {
          break label197;
        }
        localBundle = null;
        label123:
        locala.zp = localBundle;
        if (localObject == null) {
          break label212;
        }
        locala.Cm = ((Uri)localObject);
      }
      for (;;)
      {
        localObject = new MediaDescriptionCompat(locala.Cg, locala.Ch, locala.Ci, locala.Cj, locala.Ck, locala.Cl, locala.zp, locala.Cm);
        ((MediaDescriptionCompat)localObject).Cn = paramObject;
        return (MediaDescriptionCompat)localObject;
        localObject = (Uri)localBundle.getParcelable("android.support.v4.media.description.MEDIA_URI");
        break;
        label197:
        localBundle.remove("android.support.v4.media.description.MEDIA_URI");
        localBundle.remove("android.support.v4.media.description.NULL_BUNDLE_FLAG");
        label209:
        break label123;
        label212:
        if (Build.VERSION.SDK_INT >= 23) {
          locala.Cm = ((MediaDescription)paramObject).getMediaUri();
        }
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
    return this.Ch + ", " + this.Ci + ", " + this.Cj;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (Build.VERSION.SDK_INT < 21)
    {
      paramParcel.writeString(this.Cg);
      TextUtils.writeToParcel(this.Ch, paramParcel, paramInt);
      TextUtils.writeToParcel(this.Ci, paramParcel, paramInt);
      TextUtils.writeToParcel(this.Cj, paramParcel, paramInt);
      paramParcel.writeParcelable(this.Ck, paramInt);
      paramParcel.writeParcelable(this.Cl, paramInt);
      paramParcel.writeBundle(this.zp);
      paramParcel.writeParcelable(this.Cm, paramInt);
      return;
    }
    if ((this.Cn != null) || (Build.VERSION.SDK_INT < 21))
    {
      localObject = this.Cn;
      ((MediaDescription)localObject).writeToParcel(paramParcel, paramInt);
      return;
    }
    MediaDescription.Builder localBuilder = new MediaDescription.Builder();
    Object localObject = this.Cg;
    ((MediaDescription.Builder)localBuilder).setMediaId((String)localObject);
    localObject = this.Ch;
    ((MediaDescription.Builder)localBuilder).setTitle((CharSequence)localObject);
    localObject = this.Ci;
    ((MediaDescription.Builder)localBuilder).setSubtitle((CharSequence)localObject);
    localObject = this.Cj;
    ((MediaDescription.Builder)localBuilder).setDescription((CharSequence)localObject);
    localObject = this.Ck;
    ((MediaDescription.Builder)localBuilder).setIconBitmap((Bitmap)localObject);
    localObject = this.Cl;
    ((MediaDescription.Builder)localBuilder).setIconUri((Uri)localObject);
    Bundle localBundle = this.zp;
    if ((Build.VERSION.SDK_INT < 23) && (this.Cm != null))
    {
      localObject = localBundle;
      if (localBundle == null)
      {
        localObject = new Bundle();
        ((Bundle)localObject).putBoolean("android.support.v4.media.description.NULL_BUNDLE_FLAG", true);
      }
      ((Bundle)localObject).putParcelable("android.support.v4.media.description.MEDIA_URI", this.Cm);
    }
    for (;;)
    {
      ((MediaDescription.Builder)localBuilder).setExtras((Bundle)localObject);
      if (Build.VERSION.SDK_INT >= 23)
      {
        localObject = this.Cm;
        ((MediaDescription.Builder)localBuilder).setMediaUri((Uri)localObject);
      }
      this.Cn = ((MediaDescription.Builder)localBuilder).build();
      localObject = this.Cn;
      break;
      localObject = localBundle;
    }
  }
  
  public static final class a
  {
    String Cg;
    CharSequence Ch;
    CharSequence Ci;
    CharSequence Cj;
    Bitmap Ck;
    Uri Cl;
    Uri Cm;
    Bundle zp;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/media/MediaDescriptionCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */