package android.support.v4.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

final class q
  implements Parcelable
{
  public static final Parcelable.Creator<q> CREATOR = new Parcelable.Creator() {};
  int xw;
  s[] yv;
  int[] yw;
  d[] yx;
  int yy = -1;
  
  public q() {}
  
  public q(Parcel paramParcel)
  {
    this.yv = ((s[])paramParcel.createTypedArray(s.CREATOR));
    this.yw = paramParcel.createIntArray();
    this.yx = ((d[])paramParcel.createTypedArray(d.CREATOR));
    this.yy = paramParcel.readInt();
    this.xw = paramParcel.readInt();
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeTypedArray(this.yv, paramInt);
    paramParcel.writeIntArray(this.yw);
    paramParcel.writeTypedArray(this.yx, paramInt);
    paramParcel.writeInt(this.yy);
    paramParcel.writeInt(this.xw);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/app/q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */