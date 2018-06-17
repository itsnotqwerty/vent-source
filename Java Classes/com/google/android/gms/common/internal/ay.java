package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.view.View;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.a;
import com.google.android.gms.internal.mb;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class ay
{
  public final Account aCI;
  public final Set<Scope> aCJ;
  private final int aCL;
  private final View aCM;
  public final String aCN;
  final String aCO;
  final Set<Scope> aIw;
  public final Map<a<?>, ba> aIx;
  public final mb aIy;
  public Integer aIz;
  
  public ay(Account paramAccount, Set<Scope> paramSet, Map<a<?>, ba> paramMap, int paramInt, View paramView, String paramString1, String paramString2, mb parammb)
  {
    this.aCI = paramAccount;
    if (paramSet == null) {}
    for (paramAccount = Collections.EMPTY_SET;; paramAccount = Collections.unmodifiableSet(paramSet))
    {
      this.aCJ = paramAccount;
      paramAccount = paramMap;
      if (paramMap == null) {
        paramAccount = Collections.EMPTY_MAP;
      }
      this.aIx = paramAccount;
      this.aCM = paramView;
      this.aCL = paramInt;
      this.aCN = paramString1;
      this.aCO = paramString2;
      this.aIy = parammb;
      paramAccount = new HashSet(this.aCJ);
      paramSet = this.aIx.values().iterator();
      while (paramSet.hasNext()) {
        paramAccount.addAll(((ba)paramSet.next()).aFx);
      }
    }
    this.aIw = Collections.unmodifiableSet(paramAccount);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/common/internal/ay.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */