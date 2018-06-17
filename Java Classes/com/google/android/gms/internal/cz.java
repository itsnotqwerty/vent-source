package com.google.android.gms.internal;

import com.google.android.gms.common.internal.ae;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

final class cz
{
  int aPb;
  ByteArrayOutputStream aPc = new ByteArrayOutputStream();
  
  public cz(cy paramcy) {}
  
  public final boolean e(cr paramcr)
  {
    ae.E(paramcr);
    if (this.aPb + 1 > ce.pQ()) {
      return false;
    }
    Object localObject = this.aPd.a(paramcr, false);
    if (localObject == null)
    {
      this.aPd.aMq.pg().a(paramcr, "Error formatting hit");
      return true;
    }
    localObject = ((String)localObject).getBytes();
    int j = localObject.length;
    if (j > ce.pM())
    {
      this.aPd.aMq.pg().a(paramcr, "Hit size exceeds the maximum size limit");
      return true;
    }
    int i = j;
    if (this.aPc.size() > 0) {
      i = j + 1;
    }
    if (this.aPc.size() + i > ((Integer)cm.aOn.aOE).intValue()) {
      return false;
    }
    try
    {
      if (this.aPc.size() > 0) {
        this.aPc.write(cy.ke());
      }
      this.aPc.write((byte[])localObject);
      this.aPb += 1;
      return true;
    }
    catch (IOException paramcr)
    {
      this.aPd.h("Failed to write payload when batching hits", paramcr);
    }
    return true;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/cz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */