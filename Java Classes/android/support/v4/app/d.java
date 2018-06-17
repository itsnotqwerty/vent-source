package android.support.v4.app;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import java.util.ArrayList;

final class d
  implements Parcelable
{
  public static final Parcelable.Creator<d> CREATOR = new Parcelable.Creator() {};
  final int mIndex;
  final String mName;
  final boolean wA;
  final int[] wI;
  final int wp;
  final int wq;
  final int wu;
  final CharSequence wv;
  final int ww;
  final CharSequence wx;
  final ArrayList<String> wy;
  final ArrayList<String> wz;
  
  public d(Parcel paramParcel)
  {
    this.wI = paramParcel.createIntArray();
    this.wp = paramParcel.readInt();
    this.wq = paramParcel.readInt();
    this.mName = paramParcel.readString();
    this.mIndex = paramParcel.readInt();
    this.wu = paramParcel.readInt();
    this.wv = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
    this.ww = paramParcel.readInt();
    this.wx = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
    this.wy = paramParcel.createStringArrayList();
    this.wz = paramParcel.createStringArrayList();
    if (paramParcel.readInt() != 0) {}
    for (boolean bool = true;; bool = false)
    {
      this.wA = bool;
      return;
    }
  }
  
  public d(c paramc)
  {
    int k = paramc.wk.size();
    this.wI = new int[k * 6];
    if (!paramc.wr) {
      throw new IllegalStateException("Not on back stack");
    }
    int i = 0;
    int j = 0;
    if (i < k)
    {
      c.a locala = (c.a)paramc.wk.get(i);
      int[] arrayOfInt = this.wI;
      int m = j + 1;
      arrayOfInt[j] = locala.wC;
      arrayOfInt = this.wI;
      int n = m + 1;
      if (locala.wD != null) {}
      for (j = locala.wD.mIndex;; j = -1)
      {
        arrayOfInt[m] = j;
        arrayOfInt = this.wI;
        j = n + 1;
        arrayOfInt[n] = locala.wE;
        arrayOfInt = this.wI;
        m = j + 1;
        arrayOfInt[j] = locala.wF;
        arrayOfInt = this.wI;
        n = m + 1;
        arrayOfInt[m] = locala.wG;
        arrayOfInt = this.wI;
        j = n + 1;
        arrayOfInt[n] = locala.wH;
        i += 1;
        break;
      }
    }
    this.wp = paramc.wp;
    this.wq = paramc.wq;
    this.mName = paramc.mName;
    this.mIndex = paramc.mIndex;
    this.wu = paramc.wu;
    this.wv = paramc.wv;
    this.ww = paramc.ww;
    this.wx = paramc.wx;
    this.wy = paramc.wy;
    this.wz = paramc.wz;
    this.wA = paramc.wA;
  }
  
  public final c a(o paramo)
  {
    c localc = new c(paramo);
    int i = 0;
    int j = 0;
    if (j < this.wI.length)
    {
      c.a locala = new c.a();
      int[] arrayOfInt = this.wI;
      int k = j + 1;
      locala.wC = arrayOfInt[j];
      if (o.DEBUG) {
        Log.v("FragmentManager", "Instantiate " + localc + " op #" + i + " base fragment #" + this.wI[k]);
      }
      arrayOfInt = this.wI;
      j = k + 1;
      k = arrayOfInt[k];
      if (k >= 0) {}
      for (locala.wD = ((i)paramo.xy.get(k));; locala.wD = null)
      {
        arrayOfInt = this.wI;
        k = j + 1;
        locala.wE = arrayOfInt[j];
        arrayOfInt = this.wI;
        j = k + 1;
        locala.wF = arrayOfInt[k];
        arrayOfInt = this.wI;
        k = j + 1;
        locala.wG = arrayOfInt[j];
        arrayOfInt = this.wI;
        j = k + 1;
        locala.wH = arrayOfInt[k];
        localc.wl = locala.wE;
        localc.wm = locala.wF;
        localc.wn = locala.wG;
        localc.wo = locala.wH;
        localc.a(locala);
        i += 1;
        break;
      }
    }
    localc.wp = this.wp;
    localc.wq = this.wq;
    localc.mName = this.mName;
    localc.mIndex = this.mIndex;
    localc.wr = true;
    localc.wu = this.wu;
    localc.wv = this.wv;
    localc.ww = this.ww;
    localc.wx = this.wx;
    localc.wy = this.wy;
    localc.wz = this.wz;
    localc.wA = this.wA;
    localc.V(1);
    return localc;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramInt = 0;
    paramParcel.writeIntArray(this.wI);
    paramParcel.writeInt(this.wp);
    paramParcel.writeInt(this.wq);
    paramParcel.writeString(this.mName);
    paramParcel.writeInt(this.mIndex);
    paramParcel.writeInt(this.wu);
    TextUtils.writeToParcel(this.wv, paramParcel, 0);
    paramParcel.writeInt(this.ww);
    TextUtils.writeToParcel(this.wx, paramParcel, 0);
    paramParcel.writeStringList(this.wy);
    paramParcel.writeStringList(this.wz);
    if (this.wA) {
      paramInt = 1;
    }
    paramParcel.writeInt(paramInt);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/app/d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */