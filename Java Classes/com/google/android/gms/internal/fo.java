package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.location.q;
import com.google.android.gms.location.r;
import com.google.android.gms.location.t;
import com.google.android.gms.location.u;

public final class fo
  extends dr
{
  public static final Parcelable.Creator<fo> CREATOR = new fp();
  private PendingIntent aCk;
  private int aPR;
  private ez aPU;
  private fm aQo;
  private t aQp;
  private q aQq;
  
  fo(int paramInt, fm paramfm, IBinder paramIBinder1, PendingIntent paramPendingIntent, IBinder paramIBinder2, IBinder paramIBinder3)
  {
    this.aPR = paramInt;
    this.aQo = paramfm;
    if (paramIBinder1 == null)
    {
      paramfm = null;
      this.aQp = paramfm;
      this.aCk = paramPendingIntent;
      if (paramIBinder2 != null) {
        break label68;
      }
      paramfm = null;
      label41:
      this.aQq = paramfm;
      if (paramIBinder3 != null) {
        break label77;
      }
      paramfm = (fm)localObject;
    }
    for (;;)
    {
      this.aPU = paramfm;
      return;
      paramfm = u.C(paramIBinder1);
      break;
      label68:
      paramfm = r.B(paramIBinder2);
      break label41;
      label77:
      paramfm = (fm)localObject;
      if (paramIBinder3 != null)
      {
        paramfm = paramIBinder3.queryLocalInterface("com.google.android.gms.location.internal.IFusedLocationProviderCallback");
        if ((paramfm instanceof ez)) {
          paramfm = (ez)paramfm;
        } else {
          paramfm = new fb(paramIBinder3);
        }
      }
    }
  }
  
  public static fo a(q paramq)
  {
    return new fo(2, null, null, null, paramq.asBinder(), null);
  }
  
  public static fo a(t paramt, ez paramez)
  {
    IBinder localIBinder = paramt.asBinder();
    if (paramez != null) {}
    for (paramt = paramez.asBinder();; paramt = null) {
      return new fo(2, null, localIBinder, null, null, paramt);
    }
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    Object localObject2 = null;
    int i = du.l(paramParcel, 20293);
    du.d(paramParcel, 1, this.aPR);
    du.a(paramParcel, 2, this.aQo, paramInt);
    if (this.aQp == null)
    {
      localObject1 = null;
      du.a(paramParcel, 3, (IBinder)localObject1);
      du.a(paramParcel, 4, this.aCk, paramInt);
      if (this.aQq != null) {
        break label113;
      }
      localObject1 = null;
      label67:
      du.a(paramParcel, 5, (IBinder)localObject1);
      if (this.aPU != null) {
        break label127;
      }
    }
    label113:
    label127:
    for (Object localObject1 = localObject2;; localObject1 = this.aPU.asBinder())
    {
      du.a(paramParcel, 6, (IBinder)localObject1);
      du.m(paramParcel, i);
      return;
      localObject1 = this.aQp.asBinder();
      break;
      localObject1 = this.aQq.asBinder();
      break label67;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/fo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */