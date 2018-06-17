package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.internal.dr;
import com.google.android.gms.internal.du;

public final class af
  extends dr
{
  public static final Parcelable.Creator<af> CREATOR = new ag();
  private final Account aCI;
  private int aCi;
  private final int aHO;
  private final GoogleSignInAccount aHP;
  
  af(int paramInt1, Account paramAccount, int paramInt2, GoogleSignInAccount paramGoogleSignInAccount)
  {
    this.aCi = paramInt1;
    this.aCI = paramAccount;
    this.aHO = paramInt2;
    this.aHP = paramGoogleSignInAccount;
  }
  
  public af(Account paramAccount, int paramInt, GoogleSignInAccount paramGoogleSignInAccount)
  {
    this(2, paramAccount, paramInt, paramGoogleSignInAccount);
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = du.l(paramParcel, 20293);
    du.d(paramParcel, 1, this.aCi);
    du.a(paramParcel, 2, this.aCI, paramInt);
    du.d(paramParcel, 3, this.aHO);
    du.a(paramParcel, 4, this.aHP, paramInt);
    du.m(paramParcel, i);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/internal/af.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */