package android.support.v4.media;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public final class RatingCompat
  implements Parcelable
{
  public static final Parcelable.Creator<RatingCompat> CREATOR = new Parcelable.Creator() {};
  private final int Cu;
  private final float Cv;
  
  RatingCompat(int paramInt, float paramFloat)
  {
    this.Cu = paramInt;
    this.Cv = paramFloat;
  }
  
  public final int describeContents()
  {
    return this.Cu;
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("Rating:style=").append(this.Cu).append(" rating=");
    if (this.Cv < 0.0F) {}
    for (String str = "unrated";; str = String.valueOf(this.Cv)) {
      return str;
    }
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.Cu);
    paramParcel.writeFloat(this.Cv);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/media/RatingCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */