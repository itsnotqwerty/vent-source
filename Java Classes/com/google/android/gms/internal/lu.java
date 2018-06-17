package com.google.android.gms.internal;

import java.io.IOException;

public final class lu
  extends mx<lu>
{
  private static volatile lu[] aYn;
  public String aQB = null;
  public String aQF = null;
  public String aQH = null;
  public String aQX = null;
  public String aQx = null;
  public String aQy = null;
  public String aQz = null;
  public String aRE = null;
  public Long aYA = null;
  public Long aYB = null;
  public String aYC = null;
  public Boolean aYD = null;
  public Long aYE = null;
  public Integer aYF = null;
  public Boolean aYG = null;
  public lq[] aYH = lq.sz();
  public Integer aYI = null;
  private Integer aYJ = null;
  private Integer aYK = null;
  public String aYL = null;
  public Long aYM = null;
  public Long aYN = null;
  public String aYO = null;
  public Integer aYo = null;
  public lr[] aYp = lr.sA();
  public lw[] aYq = lw.sD();
  public Long aYr = null;
  public Long aYs = null;
  public Long aYt = null;
  public Long aYu = null;
  public Long aYv = null;
  public String aYw = null;
  public String aYx = null;
  public String aYy = null;
  public Integer aYz = null;
  
  public lu()
  {
    this.aZO = null;
    this.aZY = -1;
  }
  
  public static lu[] sC()
  {
    if (aYn == null) {}
    synchronized (nb.aZX)
    {
      if (aYn == null) {
        aYn = new lu[0];
      }
      return aYn;
    }
  }
  
  public final void a(mv parammv)
    throws IOException
  {
    int j = 0;
    if (this.aYo != null) {
      parammv.aw(1, this.aYo.intValue());
    }
    int i;
    Object localObject;
    if ((this.aYp != null) && (this.aYp.length > 0))
    {
      i = 0;
      while (i < this.aYp.length)
      {
        localObject = this.aYp[i];
        if (localObject != null) {
          parammv.a(2, (nd)localObject);
        }
        i += 1;
      }
    }
    if ((this.aYq != null) && (this.aYq.length > 0))
    {
      i = 0;
      while (i < this.aYq.length)
      {
        localObject = this.aYq[i];
        if (localObject != null) {
          parammv.a(3, (nd)localObject);
        }
        i += 1;
      }
    }
    if (this.aYr != null) {
      parammv.e(4, this.aYr.longValue());
    }
    if (this.aYs != null) {
      parammv.e(5, this.aYs.longValue());
    }
    if (this.aYt != null) {
      parammv.e(6, this.aYt.longValue());
    }
    if (this.aYv != null) {
      parammv.e(7, this.aYv.longValue());
    }
    if (this.aYw != null) {
      parammv.d(8, this.aYw);
    }
    if (this.aYx != null) {
      parammv.d(9, this.aYx);
    }
    if (this.aYy != null) {
      parammv.d(10, this.aYy);
    }
    if (this.aRE != null) {
      parammv.d(11, this.aRE);
    }
    if (this.aYz != null) {
      parammv.aw(12, this.aYz.intValue());
    }
    if (this.aQH != null) {
      parammv.d(13, this.aQH);
    }
    if (this.aQx != null) {
      parammv.d(14, this.aQx);
    }
    if (this.aQF != null) {
      parammv.d(16, this.aQF);
    }
    if (this.aYA != null) {
      parammv.e(17, this.aYA.longValue());
    }
    if (this.aYB != null) {
      parammv.e(18, this.aYB.longValue());
    }
    if (this.aYC != null) {
      parammv.d(19, this.aYC);
    }
    if (this.aYD != null) {
      parammv.i(20, this.aYD.booleanValue());
    }
    if (this.aQy != null) {
      parammv.d(21, this.aQy);
    }
    if (this.aYE != null) {
      parammv.e(22, this.aYE.longValue());
    }
    if (this.aYF != null) {
      parammv.aw(23, this.aYF.intValue());
    }
    if (this.aQX != null) {
      parammv.d(24, this.aQX);
    }
    if (this.aQz != null) {
      parammv.d(25, this.aQz);
    }
    if (this.aYu != null) {
      parammv.e(26, this.aYu.longValue());
    }
    if (this.aYG != null) {
      parammv.i(28, this.aYG.booleanValue());
    }
    if ((this.aYH != null) && (this.aYH.length > 0))
    {
      i = j;
      while (i < this.aYH.length)
      {
        localObject = this.aYH[i];
        if (localObject != null) {
          parammv.a(29, (nd)localObject);
        }
        i += 1;
      }
    }
    if (this.aQB != null) {
      parammv.d(30, this.aQB);
    }
    if (this.aYI != null) {
      parammv.aw(31, this.aYI.intValue());
    }
    if (this.aYJ != null) {
      parammv.aw(32, this.aYJ.intValue());
    }
    if (this.aYK != null) {
      parammv.aw(33, this.aYK.intValue());
    }
    if (this.aYL != null) {
      parammv.d(34, this.aYL);
    }
    if (this.aYM != null) {
      parammv.e(35, this.aYM.longValue());
    }
    if (this.aYN != null) {
      parammv.e(36, this.aYN.longValue());
    }
    if (this.aYO != null) {
      parammv.d(37, this.aYO);
    }
    super.a(parammv);
  }
  
  public final boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof lu)) {
        return false;
      }
      paramObject = (lu)paramObject;
      if (this.aYo == null)
      {
        if (((lu)paramObject).aYo != null) {
          return false;
        }
      }
      else if (!this.aYo.equals(((lu)paramObject).aYo)) {
        return false;
      }
      if (!nb.equals(this.aYp, ((lu)paramObject).aYp)) {
        return false;
      }
      if (!nb.equals(this.aYq, ((lu)paramObject).aYq)) {
        return false;
      }
      if (this.aYr == null)
      {
        if (((lu)paramObject).aYr != null) {
          return false;
        }
      }
      else if (!this.aYr.equals(((lu)paramObject).aYr)) {
        return false;
      }
      if (this.aYs == null)
      {
        if (((lu)paramObject).aYs != null) {
          return false;
        }
      }
      else if (!this.aYs.equals(((lu)paramObject).aYs)) {
        return false;
      }
      if (this.aYt == null)
      {
        if (((lu)paramObject).aYt != null) {
          return false;
        }
      }
      else if (!this.aYt.equals(((lu)paramObject).aYt)) {
        return false;
      }
      if (this.aYu == null)
      {
        if (((lu)paramObject).aYu != null) {
          return false;
        }
      }
      else if (!this.aYu.equals(((lu)paramObject).aYu)) {
        return false;
      }
      if (this.aYv == null)
      {
        if (((lu)paramObject).aYv != null) {
          return false;
        }
      }
      else if (!this.aYv.equals(((lu)paramObject).aYv)) {
        return false;
      }
      if (this.aYw == null)
      {
        if (((lu)paramObject).aYw != null) {
          return false;
        }
      }
      else if (!this.aYw.equals(((lu)paramObject).aYw)) {
        return false;
      }
      if (this.aYx == null)
      {
        if (((lu)paramObject).aYx != null) {
          return false;
        }
      }
      else if (!this.aYx.equals(((lu)paramObject).aYx)) {
        return false;
      }
      if (this.aYy == null)
      {
        if (((lu)paramObject).aYy != null) {
          return false;
        }
      }
      else if (!this.aYy.equals(((lu)paramObject).aYy)) {
        return false;
      }
      if (this.aRE == null)
      {
        if (((lu)paramObject).aRE != null) {
          return false;
        }
      }
      else if (!this.aRE.equals(((lu)paramObject).aRE)) {
        return false;
      }
      if (this.aYz == null)
      {
        if (((lu)paramObject).aYz != null) {
          return false;
        }
      }
      else if (!this.aYz.equals(((lu)paramObject).aYz)) {
        return false;
      }
      if (this.aQH == null)
      {
        if (((lu)paramObject).aQH != null) {
          return false;
        }
      }
      else if (!this.aQH.equals(((lu)paramObject).aQH)) {
        return false;
      }
      if (this.aQx == null)
      {
        if (((lu)paramObject).aQx != null) {
          return false;
        }
      }
      else if (!this.aQx.equals(((lu)paramObject).aQx)) {
        return false;
      }
      if (this.aQF == null)
      {
        if (((lu)paramObject).aQF != null) {
          return false;
        }
      }
      else if (!this.aQF.equals(((lu)paramObject).aQF)) {
        return false;
      }
      if (this.aYA == null)
      {
        if (((lu)paramObject).aYA != null) {
          return false;
        }
      }
      else if (!this.aYA.equals(((lu)paramObject).aYA)) {
        return false;
      }
      if (this.aYB == null)
      {
        if (((lu)paramObject).aYB != null) {
          return false;
        }
      }
      else if (!this.aYB.equals(((lu)paramObject).aYB)) {
        return false;
      }
      if (this.aYC == null)
      {
        if (((lu)paramObject).aYC != null) {
          return false;
        }
      }
      else if (!this.aYC.equals(((lu)paramObject).aYC)) {
        return false;
      }
      if (this.aYD == null)
      {
        if (((lu)paramObject).aYD != null) {
          return false;
        }
      }
      else if (!this.aYD.equals(((lu)paramObject).aYD)) {
        return false;
      }
      if (this.aQy == null)
      {
        if (((lu)paramObject).aQy != null) {
          return false;
        }
      }
      else if (!this.aQy.equals(((lu)paramObject).aQy)) {
        return false;
      }
      if (this.aYE == null)
      {
        if (((lu)paramObject).aYE != null) {
          return false;
        }
      }
      else if (!this.aYE.equals(((lu)paramObject).aYE)) {
        return false;
      }
      if (this.aYF == null)
      {
        if (((lu)paramObject).aYF != null) {
          return false;
        }
      }
      else if (!this.aYF.equals(((lu)paramObject).aYF)) {
        return false;
      }
      if (this.aQX == null)
      {
        if (((lu)paramObject).aQX != null) {
          return false;
        }
      }
      else if (!this.aQX.equals(((lu)paramObject).aQX)) {
        return false;
      }
      if (this.aQz == null)
      {
        if (((lu)paramObject).aQz != null) {
          return false;
        }
      }
      else if (!this.aQz.equals(((lu)paramObject).aQz)) {
        return false;
      }
      if (this.aYG == null)
      {
        if (((lu)paramObject).aYG != null) {
          return false;
        }
      }
      else if (!this.aYG.equals(((lu)paramObject).aYG)) {
        return false;
      }
      if (!nb.equals(this.aYH, ((lu)paramObject).aYH)) {
        return false;
      }
      if (this.aQB == null)
      {
        if (((lu)paramObject).aQB != null) {
          return false;
        }
      }
      else if (!this.aQB.equals(((lu)paramObject).aQB)) {
        return false;
      }
      if (this.aYI == null)
      {
        if (((lu)paramObject).aYI != null) {
          return false;
        }
      }
      else if (!this.aYI.equals(((lu)paramObject).aYI)) {
        return false;
      }
      if (this.aYJ == null)
      {
        if (((lu)paramObject).aYJ != null) {
          return false;
        }
      }
      else if (!this.aYJ.equals(((lu)paramObject).aYJ)) {
        return false;
      }
      if (this.aYK == null)
      {
        if (((lu)paramObject).aYK != null) {
          return false;
        }
      }
      else if (!this.aYK.equals(((lu)paramObject).aYK)) {
        return false;
      }
      if (this.aYL == null)
      {
        if (((lu)paramObject).aYL != null) {
          return false;
        }
      }
      else if (!this.aYL.equals(((lu)paramObject).aYL)) {
        return false;
      }
      if (this.aYM == null)
      {
        if (((lu)paramObject).aYM != null) {
          return false;
        }
      }
      else if (!this.aYM.equals(((lu)paramObject).aYM)) {
        return false;
      }
      if (this.aYN == null)
      {
        if (((lu)paramObject).aYN != null) {
          return false;
        }
      }
      else if (!this.aYN.equals(((lu)paramObject).aYN)) {
        return false;
      }
      if (this.aYO == null)
      {
        if (((lu)paramObject).aYO != null) {
          return false;
        }
      }
      else if (!this.aYO.equals(((lu)paramObject).aYO)) {
        return false;
      }
      if ((this.aZO != null) && (!this.aZO.isEmpty())) {
        break;
      }
    } while ((((lu)paramObject).aZO == null) || (((lu)paramObject).aZO.isEmpty()));
    return false;
    return this.aZO.equals(((lu)paramObject).aZO);
  }
  
  public final int hashCode()
  {
    int i29 = 0;
    int i30 = getClass().getName().hashCode();
    int i;
    int i31;
    int i32;
    int j;
    label51:
    int k;
    label60:
    int m;
    label70:
    int n;
    label80:
    int i1;
    label90:
    int i2;
    label100:
    int i3;
    label110:
    int i4;
    label120:
    int i5;
    label130:
    int i6;
    label140:
    int i7;
    label150:
    int i8;
    label160:
    int i9;
    label170:
    int i10;
    label180:
    int i11;
    label190:
    int i12;
    label200:
    int i13;
    label210:
    int i14;
    label220:
    int i15;
    label230:
    int i16;
    label240:
    int i17;
    label250:
    int i18;
    label260:
    int i19;
    label270:
    int i33;
    int i20;
    label289:
    int i21;
    label299:
    int i22;
    label309:
    int i23;
    label319:
    int i24;
    label329:
    int i25;
    label339:
    int i26;
    label349:
    int i27;
    if (this.aYo == null)
    {
      i = 0;
      i31 = nb.hashCode(this.aYp);
      i32 = nb.hashCode(this.aYq);
      if (this.aYr != null) {
        break label615;
      }
      j = 0;
      if (this.aYs != null) {
        break label626;
      }
      k = 0;
      if (this.aYt != null) {
        break label637;
      }
      m = 0;
      if (this.aYu != null) {
        break label649;
      }
      n = 0;
      if (this.aYv != null) {
        break label661;
      }
      i1 = 0;
      if (this.aYw != null) {
        break label673;
      }
      i2 = 0;
      if (this.aYx != null) {
        break label685;
      }
      i3 = 0;
      if (this.aYy != null) {
        break label697;
      }
      i4 = 0;
      if (this.aRE != null) {
        break label709;
      }
      i5 = 0;
      if (this.aYz != null) {
        break label721;
      }
      i6 = 0;
      if (this.aQH != null) {
        break label733;
      }
      i7 = 0;
      if (this.aQx != null) {
        break label745;
      }
      i8 = 0;
      if (this.aQF != null) {
        break label757;
      }
      i9 = 0;
      if (this.aYA != null) {
        break label769;
      }
      i10 = 0;
      if (this.aYB != null) {
        break label781;
      }
      i11 = 0;
      if (this.aYC != null) {
        break label793;
      }
      i12 = 0;
      if (this.aYD != null) {
        break label805;
      }
      i13 = 0;
      if (this.aQy != null) {
        break label817;
      }
      i14 = 0;
      if (this.aYE != null) {
        break label829;
      }
      i15 = 0;
      if (this.aYF != null) {
        break label841;
      }
      i16 = 0;
      if (this.aQX != null) {
        break label853;
      }
      i17 = 0;
      if (this.aQz != null) {
        break label865;
      }
      i18 = 0;
      if (this.aYG != null) {
        break label877;
      }
      i19 = 0;
      i33 = nb.hashCode(this.aYH);
      if (this.aQB != null) {
        break label889;
      }
      i20 = 0;
      if (this.aYI != null) {
        break label901;
      }
      i21 = 0;
      if (this.aYJ != null) {
        break label913;
      }
      i22 = 0;
      if (this.aYK != null) {
        break label925;
      }
      i23 = 0;
      if (this.aYL != null) {
        break label937;
      }
      i24 = 0;
      if (this.aYM != null) {
        break label949;
      }
      i25 = 0;
      if (this.aYN != null) {
        break label961;
      }
      i26 = 0;
      if (this.aYO != null) {
        break label973;
      }
      i27 = 0;
      label359:
      i28 = i29;
      if (this.aZO != null) {
        if (!this.aZO.isEmpty()) {
          break label985;
        }
      }
    }
    label615:
    label626:
    label637:
    label649:
    label661:
    label673:
    label685:
    label697:
    label709:
    label721:
    label733:
    label745:
    label757:
    label769:
    label781:
    label793:
    label805:
    label817:
    label829:
    label841:
    label853:
    label865:
    label877:
    label889:
    label901:
    label913:
    label925:
    label937:
    label949:
    label961:
    label973:
    label985:
    for (int i28 = i29;; i28 = this.aZO.hashCode())
    {
      return (i27 + (i26 + (i25 + (i24 + (i23 + (i22 + (i21 + (i20 + ((i19 + (i18 + (i17 + (i16 + (i15 + (i14 + (i13 + (i12 + (i11 + (i10 + (i9 + (i8 + (i7 + (i6 + (i5 + (i4 + (i3 + (i2 + (i1 + (n + (m + (k + (j + (((i + (i30 + 527) * 31) * 31 + i31) * 31 + i32) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31 + i33) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31 + i28;
      i = this.aYo.hashCode();
      break;
      j = this.aYr.hashCode();
      break label51;
      k = this.aYs.hashCode();
      break label60;
      m = this.aYt.hashCode();
      break label70;
      n = this.aYu.hashCode();
      break label80;
      i1 = this.aYv.hashCode();
      break label90;
      i2 = this.aYw.hashCode();
      break label100;
      i3 = this.aYx.hashCode();
      break label110;
      i4 = this.aYy.hashCode();
      break label120;
      i5 = this.aRE.hashCode();
      break label130;
      i6 = this.aYz.hashCode();
      break label140;
      i7 = this.aQH.hashCode();
      break label150;
      i8 = this.aQx.hashCode();
      break label160;
      i9 = this.aQF.hashCode();
      break label170;
      i10 = this.aYA.hashCode();
      break label180;
      i11 = this.aYB.hashCode();
      break label190;
      i12 = this.aYC.hashCode();
      break label200;
      i13 = this.aYD.hashCode();
      break label210;
      i14 = this.aQy.hashCode();
      break label220;
      i15 = this.aYE.hashCode();
      break label230;
      i16 = this.aYF.hashCode();
      break label240;
      i17 = this.aQX.hashCode();
      break label250;
      i18 = this.aQz.hashCode();
      break label260;
      i19 = this.aYG.hashCode();
      break label270;
      i20 = this.aQB.hashCode();
      break label289;
      i21 = this.aYI.hashCode();
      break label299;
      i22 = this.aYJ.hashCode();
      break label309;
      i23 = this.aYK.hashCode();
      break label319;
      i24 = this.aYL.hashCode();
      break label329;
      i25 = this.aYM.hashCode();
      break label339;
      i26 = this.aYN.hashCode();
      break label349;
      i27 = this.aYO.hashCode();
      break label359;
    }
  }
  
  protected final int st()
  {
    int m = 0;
    int j = super.st();
    int i = j;
    if (this.aYo != null) {
      i = j + mv.ax(1, this.aYo.intValue());
    }
    j = i;
    Object localObject;
    if (this.aYp != null)
    {
      j = i;
      if (this.aYp.length > 0)
      {
        j = 0;
        while (j < this.aYp.length)
        {
          localObject = this.aYp[j];
          k = i;
          if (localObject != null) {
            k = i + mv.b(2, (nd)localObject);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    i = j;
    if (this.aYq != null)
    {
      i = j;
      if (this.aYq.length > 0)
      {
        k = 0;
        i = j;
        j = k;
        while (j < this.aYq.length)
        {
          localObject = this.aYq[j];
          k = i;
          if (localObject != null) {
            k = i + mv.b(3, (nd)localObject);
          }
          j += 1;
          i = k;
        }
      }
    }
    j = i;
    if (this.aYr != null) {
      j = i + mv.f(4, this.aYr.longValue());
    }
    i = j;
    if (this.aYs != null) {
      i = j + mv.f(5, this.aYs.longValue());
    }
    j = i;
    if (this.aYt != null) {
      j = i + mv.f(6, this.aYt.longValue());
    }
    i = j;
    if (this.aYv != null) {
      i = j + mv.f(7, this.aYv.longValue());
    }
    j = i;
    if (this.aYw != null) {
      j = i + mv.e(8, this.aYw);
    }
    i = j;
    if (this.aYx != null) {
      i = j + mv.e(9, this.aYx);
    }
    j = i;
    if (this.aYy != null) {
      j = i + mv.e(10, this.aYy);
    }
    i = j;
    if (this.aRE != null) {
      i = j + mv.e(11, this.aRE);
    }
    j = i;
    if (this.aYz != null) {
      j = i + mv.ax(12, this.aYz.intValue());
    }
    i = j;
    if (this.aQH != null) {
      i = j + mv.e(13, this.aQH);
    }
    j = i;
    if (this.aQx != null) {
      j = i + mv.e(14, this.aQx);
    }
    i = j;
    if (this.aQF != null) {
      i = j + mv.e(16, this.aQF);
    }
    j = i;
    if (this.aYA != null) {
      j = i + mv.f(17, this.aYA.longValue());
    }
    i = j;
    if (this.aYB != null) {
      i = j + mv.f(18, this.aYB.longValue());
    }
    j = i;
    if (this.aYC != null) {
      j = i + mv.e(19, this.aYC);
    }
    i = j;
    if (this.aYD != null)
    {
      this.aYD.booleanValue();
      i = j + (mv.db(160) + 1);
    }
    j = i;
    if (this.aQy != null) {
      j = i + mv.e(21, this.aQy);
    }
    i = j;
    if (this.aYE != null) {
      i = j + mv.f(22, this.aYE.longValue());
    }
    j = i;
    if (this.aYF != null) {
      j = i + mv.ax(23, this.aYF.intValue());
    }
    i = j;
    if (this.aQX != null) {
      i = j + mv.e(24, this.aQX);
    }
    j = i;
    if (this.aQz != null) {
      j = i + mv.e(25, this.aQz);
    }
    int k = j;
    if (this.aYu != null) {
      k = j + mv.f(26, this.aYu.longValue());
    }
    i = k;
    if (this.aYG != null)
    {
      this.aYG.booleanValue();
      i = k + (mv.db(224) + 1);
    }
    j = i;
    if (this.aYH != null)
    {
      j = i;
      if (this.aYH.length > 0)
      {
        k = m;
        for (;;)
        {
          j = i;
          if (k >= this.aYH.length) {
            break;
          }
          localObject = this.aYH[k];
          j = i;
          if (localObject != null) {
            j = i + mv.b(29, (nd)localObject);
          }
          k += 1;
          i = j;
        }
      }
    }
    i = j;
    if (this.aQB != null) {
      i = j + mv.e(30, this.aQB);
    }
    j = i;
    if (this.aYI != null) {
      j = i + mv.ax(31, this.aYI.intValue());
    }
    i = j;
    if (this.aYJ != null) {
      i = j + mv.ax(32, this.aYJ.intValue());
    }
    j = i;
    if (this.aYK != null) {
      j = i + mv.ax(33, this.aYK.intValue());
    }
    i = j;
    if (this.aYL != null) {
      i = j + mv.e(34, this.aYL);
    }
    j = i;
    if (this.aYM != null) {
      j = i + mv.f(35, this.aYM.longValue());
    }
    i = j;
    if (this.aYN != null) {
      i = j + mv.f(36, this.aYN.longValue());
    }
    j = i;
    if (this.aYO != null) {
      j = i + mv.e(37, this.aYO);
    }
    return j;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/google/android/gms/internal/lu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */