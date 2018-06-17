package com.google.android.gms.internal;

import android.location.Location;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.ac;
import java.util.Arrays;
import java.util.List;

public final class nr
  extends dr
{
  public static final Parcelable.Creator<nr> CREATOR = new ns();
  public final long baB;
  public final int baC;
  public final List<String> baD;
  public final boolean baE;
  public final int baF;
  public final boolean baG;
  public final String baH;
  public final qn baI;
  public final Location baJ;
  public final String baK;
  public final Bundle baL;
  public final Bundle baM;
  public final List<String> baN;
  public final String baO;
  public final String baP;
  public final boolean baQ;
  public final Bundle extras;
  public final int versionCode;
  
  public nr(int paramInt1, long paramLong, Bundle paramBundle1, int paramInt2, List<String> paramList1, boolean paramBoolean1, int paramInt3, boolean paramBoolean2, String paramString1, qn paramqn, Location paramLocation, String paramString2, Bundle paramBundle2, Bundle paramBundle3, List<String> paramList2, String paramString3, String paramString4, boolean paramBoolean3)
  {
    this.versionCode = paramInt1;
    this.baB = paramLong;
    Bundle localBundle = paramBundle1;
    if (paramBundle1 == null) {
      localBundle = new Bundle();
    }
    this.extras = localBundle;
    this.baC = paramInt2;
    this.baD = paramList1;
    this.baE = paramBoolean1;
    this.baF = paramInt3;
    this.baG = paramBoolean2;
    this.baH = paramString1;
    this.baI = paramqn;
    this.baJ = paramLocation;
    this.baK = paramString2;
    paramBundle1 = paramBundle2;
    if (paramBundle2 == null) {
      paramBundle1 = new Bundle();
    }
    this.baL = paramBundle1;
    this.baM = paramBundle3;
    this.baN = paramList2;
    this.baO = paramString3;
    this.baP = paramString4;
    this.baQ = paramBoolean3;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof nr)) {}
    do
    {
      return false;
      paramObject = (nr)paramObject;
    } while ((this.versionCode != ((nr)paramObject).versionCode) || (this.baB != ((nr)paramObject).baB) || (!ac.equal(this.extras, ((nr)paramObject).extras)) || (this.baC != ((nr)paramObject).baC) || (!ac.equal(this.baD, ((nr)paramObject).baD)) || (this.baE != ((nr)paramObject).baE) || (this.baF != ((nr)paramObject).baF) || (this.baG != ((nr)paramObject).baG) || (!ac.equal(this.baH, ((nr)paramObject).baH)) || (!ac.equal(this.baI, ((nr)paramObject).baI)) || (!ac.equal(this.baJ, ((nr)paramObject).baJ)) || (!ac.equal(this.baK, ((nr)paramObject).baK)) || (!ac.equal(this.baL, ((nr)paramObject).baL)) || (!ac.equal(this.baM, ((nr)paramObject).baM)) || (!ac.equal(this.baN, ((nr)paramObject).baN)) || (!ac.equal(this.baO, ((nr)paramObject).baO)) || (!ac.equal(this.baP, ((nr)paramObject).baP)) || (this.baQ != ((nr)paramObject).baQ));
    return true;
  }
  
  public final int hashCode()
  {
    return Arrays.hashCode(new Object[] { Integer.valueOf(this.versionCode), Long.valueOf(this.baB), this.extras, Integer.valueOf(this.baC), this.baD, Boolean.valueOf(this.baE), Integer.valueOf(this.baF), Boolean.valueOf(this.baG), this.baH, this.baI, this.baJ, this.baK, this.baL, this.baM, this.baN, this.baO, this.baP, Boolean.valueOf(this.baQ) });
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = du.l(paramParcel, 20293);
    du.d(paramParcel, 1, this.versionCode);
    du.a(paramParcel, 2, this.baB);
    du.a(paramParcel, 3, this.extras);
    du.d(paramParcel, 4, this.baC);
    du.a(paramParcel, 5, this.baD);
    du.a(paramParcel, 6, this.baE);
    du.d(paramParcel, 7, this.baF);
    du.a(paramParcel, 8, this.baG);
    du.a(paramParcel, 9, this.baH);
    du.a(paramParcel, 10, this.baI, paramInt);
    du.a(paramParcel, 11, this.baJ, paramInt);
    du.a(paramParcel, 12, this.baK);
    du.a(paramParcel, 13, this.baL);
    du.a(paramParcel, 14, this.baM);
    du.a(paramParcel, 15, this.baN);
    du.a(paramParcel, 16, this.baO);
    du.a(paramParcel, 17, this.baP);
    du.a(paramParcel, 18, this.baQ);
    du.m(paramParcel, i);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/nr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */