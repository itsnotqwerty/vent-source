package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.k;
import com.google.android.gms.common.m;
import com.google.android.gms.internal.dr;
import com.google.android.gms.internal.du;

public final class bf
  extends dr
{
  public static final Parcelable.Creator<bf> CREATOR = new b();
  private int aIE;
  private int aIF;
  String aIG;
  IBinder aIH;
  Scope[] aII;
  Bundle aIJ;
  Account aIK;
  k[] aIL;
  private int version;
  
  public bf(int paramInt)
  {
    this.version = 3;
    this.aIF = m.aCp;
    this.aIE = paramInt;
  }
  
  bf(int paramInt1, int paramInt2, int paramInt3, String paramString, IBinder paramIBinder, Scope[] paramArrayOfScope, Bundle paramBundle, Account paramAccount, k[] paramArrayOfk)
  {
    this.version = paramInt1;
    this.aIE = paramInt2;
    this.aIF = paramInt3;
    if ("com.google.android.gms".equals(paramString))
    {
      this.aIG = "com.google.android.gms";
      if (paramInt1 >= 2) {
        break label148;
      }
      paramString = (String)localObject2;
      if (paramIBinder != null)
      {
        if (paramIBinder != null) {
          break label105;
        }
        paramString = (String)localObject1;
        label64:
        paramString = a.a(paramString);
      }
    }
    for (this.aIK = paramString;; this.aIK = paramAccount)
    {
      this.aII = paramArrayOfScope;
      this.aIJ = paramBundle;
      this.aIL = paramArrayOfk;
      return;
      this.aIG = paramString;
      break;
      label105:
      paramString = paramIBinder.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
      if ((paramString instanceof n))
      {
        paramString = (n)paramString;
        break label64;
      }
      paramString = new p(paramIBinder);
      break label64;
      label148:
      this.aIH = paramIBinder;
    }
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = du.l(paramParcel, 20293);
    du.d(paramParcel, 1, this.version);
    du.d(paramParcel, 2, this.aIE);
    du.d(paramParcel, 3, this.aIF);
    du.a(paramParcel, 4, this.aIG);
    du.a(paramParcel, 5, this.aIH);
    du.a(paramParcel, 6, this.aII, paramInt);
    du.a(paramParcel, 7, this.aIJ);
    du.a(paramParcel, 8, this.aIK, paramInt);
    du.a(paramParcel, 10, this.aIL, paramInt);
    du.m(paramParcel, i);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/internal/bf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */