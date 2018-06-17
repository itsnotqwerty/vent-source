package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.a;
import com.google.android.gms.internal.dr;
import com.google.android.gms.internal.du;

public final class ah
  extends dr
{
  public static final Parcelable.Creator<ah> CREATOR = new ai();
  private int aCi;
  public boolean aEj;
  public a aGN;
  private IBinder aHQ;
  public boolean aHR;
  
  ah(int paramInt, IBinder paramIBinder, a parama, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.aCi = paramInt;
    this.aHQ = paramIBinder;
    this.aGN = parama;
    this.aEj = paramBoolean1;
    this.aHR = paramBoolean2;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof ah)) {
        return false;
      }
      paramObject = (ah)paramObject;
    } while ((this.aGN.equals(((ah)paramObject).aGN)) && (oh().equals(((ah)paramObject).oh())));
    return false;
  }
  
  public final n oh()
  {
    IBinder localIBinder = this.aHQ;
    if (localIBinder == null) {
      return null;
    }
    IInterface localIInterface = localIBinder.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
    if ((localIInterface instanceof n)) {
      return (n)localIInterface;
    }
    return new p(localIBinder);
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = du.l(paramParcel, 20293);
    du.d(paramParcel, 1, this.aCi);
    du.a(paramParcel, 2, this.aHQ);
    du.a(paramParcel, 3, this.aGN, paramInt);
    du.a(paramParcel, 4, this.aEj);
    du.a(paramParcel, 5, this.aHR);
    du.m(paramParcel, i);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/internal/ah.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */