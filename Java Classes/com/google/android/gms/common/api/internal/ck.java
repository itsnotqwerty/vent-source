package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.app.Dialog;
import com.google.android.gms.common.a;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.c;
import com.google.android.gms.common.m;

final class ck
  implements Runnable
{
  private final cj aGO;
  
  ck(ci paramci, cj paramcj)
  {
    this.aGO = paramcj;
  }
  
  public final void run()
  {
    if (!this.aGP.uY) {
      return;
    }
    Object localObject = this.aGO.aGN;
    if (((a)localObject).mP())
    {
      this.aGP.aDx.startActivityForResult(GoogleApiActivity.a(this.aGP.getActivity(), ((a)localObject).aCk, this.aGO.aGM, false), 1);
      return;
    }
    if (this.aGP.aCU.cC(((a)localObject).aCj))
    {
      c.a(this.aGP.getActivity(), this.aGP.aDx, ((a)localObject).aCj, this.aGP);
      return;
    }
    if (((a)localObject).aCj == 18)
    {
      localObject = c.a(this.aGP.getActivity(), this.aGP);
      c.a(this.aGP.getActivity().getApplicationContext(), new cl(this, (Dialog)localObject));
      return;
    }
    this.aGP.a((a)localObject, this.aGO.aGM);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/api/internal/ck.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */