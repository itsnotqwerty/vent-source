package com.vent;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.os.SystemClock;
import android.support.v4.app.i;
import android.support.v7.widget.AppCompatTextView;
import android.support.v7.widget.RecyclerView.x;
import android.support.v7.widget.ba;
import android.support.v7.widget.ba.a;
import android.support.v7.widget.r;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.vent.a.b;
import com.vent.a.g;
import com.vent.a.k;
import com.vent.a.m;
import com.vent.a.o;
import com.vent.a.x;
import com.vent.a.y;
import com.vent.a.z;
import com.vent.d.f;
import com.vent.d.f.a;
import com.vent.views.FixedTextViewTouchConsume.a;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public abstract class s
  extends l<z>
{
  private static final int[] Ub = { 2130969014 };
  private static boolean cbE;
  private static Drawable cbF;
  private static Drawable cbG;
  private static Drawable cbH;
  private static Drawable cbI;
  static int cbJ;
  static String cbK;
  static String cbL;
  private static String cbM;
  private static String cbN;
  private static String cbO;
  private static String cbP;
  static final int[] cbU = { 2131689894 };
  private static ArrayList<ArrayList<f>> cbV;
  static int cbW;
  private static ArrayList<f> cbX;
  static Handler cbY;
  private static boolean cca;
  static int selectableItemBackground;
  private d cbQ;
  m cbR;
  m cbS;
  a cbT;
  ArrayList<f> cbZ;
  
  s(a parama, am paramam, m paramm1, m paramm2)
  {
    super(parama, paramam);
    this.cbR = paramm1;
    this.cbS = paramm2;
    if (MyApplication.cgw) {
      this.cbZ = new ArrayList();
    }
  }
  
  static void CV()
  {
    if (MyApplication.cgw)
    {
      cbV = new ArrayList();
      int i = 0;
      while (i <= 0)
      {
        cbV.add(new ArrayList());
        i += 1;
      }
      cbX = new ArrayList();
      cbY = new Handler(Looper.getMainLooper());
    }
  }
  
  static void CW()
  {
    if (!com.vent.d.c.f(cbV))
    {
      Iterator localIterator1 = cbV.iterator();
      while (localIterator1.hasNext())
      {
        ArrayList localArrayList = (ArrayList)localIterator1.next();
        Iterator localIterator2 = localArrayList.iterator();
        while (localIterator2.hasNext()) {
          ((f)localIterator2.next()).CY();
        }
        localArrayList.clear();
      }
    }
  }
  
  static void a(g paramg, com.vent.a.h paramh)
  {
    Context localContext = paramg.itemView.getContext();
    boolean bool3 = MyApplication.br(localContext);
    int k;
    z localz;
    int j;
    if (paramh != null)
    {
      k = paramh.bn(bool3);
      localz = paramg.ccq;
      paramg.Da();
      if (localz != null) {
        break label78;
      }
      j = 0;
    }
    for (;;)
    {
      if (j < 6)
      {
        paramg.ccz.getChildAt(j).setVisibility(8);
        j += 1;
        continue;
        k = -8355712;
        break;
        label78:
        boolean bool4 = localz.Fl();
        int i;
        int m;
        label98:
        Object localObject1;
        boolean bool1;
        label168:
        label220:
        label233:
        label276:
        Object localObject2;
        boolean bool2;
        if (localz.ckZ == null)
        {
          i = 0;
          m = 0;
          j = i;
          if (m >= i) {
            continue;
          }
          com.vent.a.n localn = (com.vent.a.n)localz.ckZ.get(m);
          boolean bool5 = m.b(localn.cjy, o.ckx.cjy);
          localObject1 = o.e(localn.cjy);
          if ((localObject1 == null) || (!localz.f(((o)localObject1).cjy))) {
            break label554;
          }
          bool1 = true;
          if ((!bool5) && (!m.b(localn.cjy, o.cky.cjy))) {
            break label639;
          }
          j = paramg.ccA.size();
          if (j <= 0) {
            break label560;
          }
          paramh = (ImageView)paramg.ccA.remove(j - 1);
          if (!bool5) {
            break label602;
          }
          if (bool1) {
            break label595;
          }
          j = 2131230842;
          paramh.setImageResource(j);
          paramh.setPadding(0, MyApplication.cgs, 0, MyApplication.cgs);
          localObject1 = cbO;
          paramh.setColorFilter(k, PorterDuff.Mode.SRC_ATOP);
          int n = cbJ;
          if (bool5) {
            break label759;
          }
          j = -1;
          localObject2 = new LinearLayout.LayoutParams(n, j);
          if (m != 0) {
            ((ViewGroup.MarginLayoutParams)localObject2).leftMargin = MyApplication.cge;
          }
          paramh.setLayoutParams((ViewGroup.LayoutParams)localObject2);
          paramh.setId(2131296660 + m);
          if (bool5) {
            break label765;
          }
          bool2 = true;
          label325:
          paramh.setEnabled(bool2);
          if (bool5) {
            break label771;
          }
          bool2 = true;
          label339:
          paramh.setClickable(bool2);
          if (!bool5) {
            break label777;
          }
          localObject2 = com.vent.d.a.c(bool3, k, k, bool1);
          label363:
          paramh.setBackgroundDrawable((Drawable)localObject2);
          paramh.setContentDescription((CharSequence)localObject1);
          if ((bool5) && (!bool4)) {
            break label793;
          }
          j = 0;
          label387:
          paramh.setVisibility(j);
          paramg.ccy.addView(paramh, m);
          paramh = (TextView)paramg.ccz.getChildAt(m);
          localObject1 = new LinearLayout.LayoutParams(cbJ, -2);
          if (m != 0) {
            ((ViewGroup.MarginLayoutParams)localObject1).leftMargin = MyApplication.cge;
          }
          paramh.setLayoutParams((ViewGroup.LayoutParams)localObject1);
          paramh.setVisibility(0);
          paramh.setTextColor(k);
          paramh.setText(String.valueOf(localn.count));
          if (bool5) {
            break label798;
          }
          bool1 = true;
          label479:
          paramh.setEnabled(bool1);
          if (bool5) {
            break label804;
          }
          bool1 = true;
          label493:
          paramh.setClickable(bool1);
          if (bool5) {
            break label810;
          }
          paramh.setBackgroundResource(selectableItemBackground);
          label511:
          if ((bool5) && (!bool4)) {
            break label818;
          }
        }
        label554:
        label560:
        label595:
        label602:
        label639:
        label669:
        label751:
        label759:
        label765:
        label771:
        label777:
        label793:
        label798:
        label804:
        label810:
        label818:
        for (j = 0;; j = 4)
        {
          paramh.setVisibility(j);
          m += 1;
          break label98;
          i = Math.min(localz.ckZ.size(), 6);
          break;
          bool1 = false;
          break label168;
          paramh = new r(localContext);
          paramh.setScaleType(ImageView.ScaleType.CENTER);
          paramh.setFocusable(false);
          paramh.setFocusableInTouchMode(false);
          paramh.setOnClickListener(paramg);
          break label220;
          j = 2131230843;
          break label233;
          if (!bool1) {}
          for (j = 2131230887;; j = 2131230888)
          {
            paramh.setImageResource(j);
            paramh.setPadding(0, 0, 0, 0);
            localObject1 = cbP;
            break;
          }
          j = paramg.ccB.size();
          if (j > 0)
          {
            paramh = (TextView)paramg.ccB.remove(j - 1);
            paramh.setTextColor(k);
            if (localObject1 == null) {
              break label751;
            }
          }
          for (localObject1 = ((o)localObject1).getName();; localObject1 = "???")
          {
            paramh.setText((CharSequence)localObject1);
            break;
            paramh = new AppCompatTextView(localContext);
            paramh.setTypeface(com.vent.d.e.cmZ);
            paramh.setTextSize(0, MyApplication.cgr);
            paramh.setGravity(17);
            paramh.setIncludeFontPadding(false);
            paramh.setFocusable(false);
            paramh.setFocusableInTouchMode(false);
            paramh.setOnClickListener(paramg);
            break label669;
          }
          j = -2;
          break label276;
          bool2 = false;
          break label325;
          bool2 = false;
          break label339;
          localObject2 = com.vent.d.a.a(bool3, k, k, bool1);
          break label363;
          j = 4;
          break label387;
          bool1 = false;
          break label479;
          bool1 = false;
          break label493;
          paramh.setBackgroundDrawable(null);
          break label511;
        }
      }
    }
  }
  
  @SuppressLint({"SetTextI18n"})
  static void a(g paramg, z paramz, boolean paramBoolean, m paramm1, m paramm2)
  {
    Object localObject1;
    com.vent.a.h localh;
    label15:
    Object localObject2;
    Context localContext;
    int k;
    label112:
    int j;
    label126:
    boolean bool1;
    label143:
    int i;
    label164:
    label183:
    label240:
    label294:
    boolean bool2;
    if (paramz == null)
    {
      localObject1 = null;
      if (localObject1 != null) {
        break label784;
      }
      localh = null;
      if ((localObject1 == null) || (localh == null))
      {
        if (System.currentTimeMillis() - bb.ciS > 300000L) {
          bb.ciS = 0L;
        }
        localObject2 = (android.support.v7.app.d)paramg.bUM.get();
        if ((localObject2 != null) && ((localObject2 instanceof ActMain))) {
          ActMain.a((ActMain)localObject2, null);
        }
      }
      localContext = paramg.itemView.getContext();
      paramg.ccq = paramz;
      boolean bool3 = MyApplication.br(localContext);
      if (localh == null) {
        break label797;
      }
      k = localh.bm(bool3);
      if (localh == null) {
        break label804;
      }
      j = localh.bn(bool3);
      if ((paramz == null) || (!bb.c(paramz.bXE))) {
        break label811;
      }
      bool1 = true;
      if ((paramz != null) && (!bool1))
      {
        if ((paramz.flags & 0x1) == 0) {
          break label817;
        }
        i = 1;
        if ((i == 0) && (paramBoolean) && (paramz.bXE != null)) {
          break label823;
        }
      }
      i = 0;
      if (i != 0) {
        break label931;
      }
      paramg.cau.setVisibility(8);
      paramg.cam.setColorFilter(j, PorterDuff.Mode.SRC_ATOP);
      paramg.cam.setVisibility(0);
      paramg.ccs.setBackgroundColor(k);
      if ((paramz != null) && (paramz.bXE != null)) {
        break label1004;
      }
      localObject2 = null;
      com.vent.d.c.a((x)localObject2, paramg.bUF, MyApplication.cgm, MyApplication.cgo);
      TextView localTextView = paramg.bZI;
      if ((paramz == null) || (paramz.bXE == null) || (TextUtils.isEmpty(paramz.bXE.username))) {
        break label1013;
      }
      localObject2 = paramz.bXE.username;
      localTextView.setText((CharSequence)localObject2);
      if ((paramm1 != null) && ((paramz == null) || (paramz.bXE == null) || (b.a(paramz.bXE, paramm1)))) {
        break label1021;
      }
      bool2 = true;
      label330:
      paramg.bUF.setClickable(bool2);
      if (paramg.cct != null)
      {
        paramm1 = paramg.cct;
        if (!bool2) {
          break label1027;
        }
        i = 0;
        label359:
        paramm1.setVisibility(i);
      }
      paramg.bZI.setClickable(bool2);
      if (localObject1 == null) {
        break label1034;
      }
      paramm1 = ((g)localObject1).getName();
      label385:
      paramg.cbC.setText(paramm1);
      paramg.cbC.setBackgroundColor(k);
      localObject2 = paramg.cbC;
      if (localh == null) {
        break label1041;
      }
      i = localh.bo(bool3);
      label422:
      ((TextView)localObject2).setTextColor(i);
      if (localObject1 == null) {
        break label1047;
      }
      bool2 = true;
      label437:
      paramg.cbC.setClickable(bool2);
      if (paramg.ccu != null)
      {
        if (bool2) {
          paramg.ccu.setContentDescription(paramm1);
        }
        paramm1 = paramg.ccu;
        if (!bool2) {
          break label1053;
        }
        i = 0;
        label479:
        paramm1.setVisibility(i);
      }
      localObject1 = new StringBuilder();
      if (paramz != null) {
        break label1060;
      }
      paramm1 = null;
      label500:
      localObject1 = com.vent.d.e.m(paramm1) + "  •  ";
      paramm1 = (m)localObject1;
      if (paramz != null)
      {
        paramm1 = (m)localObject1;
        if (!TextUtils.isEmpty(paramz.ckY)) {
          paramm1 = (String)localObject1 + paramz.ckY + "  •  ";
        }
      }
      paramg.ccv.setText(paramm1);
      if (paramz != null) {
        break label1068;
      }
      i = 0;
      switch (i)
      {
      default: 
        label584:
        paramg.cay.setVisibility(8);
        label621:
        localObject1 = null;
        paramm1 = cbF;
        bool2 = false;
        if (paramz == null)
        {
          i = 0;
          switch (i)
          {
          default: 
            label638:
            bool1 = bool2;
          }
        }
        break;
      }
    }
    for (;;)
    {
      paramg.ccw.setText((CharSequence)localObject1);
      paramg.ccw.setCompoundDrawablesWithIntrinsicBounds(paramm1, null, null, null);
      paramg.ccw.setEnabled(bool1);
      paramg.ccw.setClickable(bool1);
      if ((paramz == null) || (!paramz.Fm())) {
        break label1256;
      }
      paramg.ccx.setVisibility(0);
      paramg.cai.setVisibility(8);
      paramg.caj.setText(2131689777);
      paramg.caj.setTextColor(j);
      paramg.caj.setVisibility(0);
      a(paramg, localh);
      return;
      localObject1 = com.vent.d.c.g(paramz.ckX);
      break;
      label784:
      localh = com.vent.d.c.h(((g)localObject1).cjy);
      break label15;
      label797:
      k = -8355712;
      break label112;
      label804:
      j = -8355712;
      break label126;
      label811:
      bool1 = false;
      break label143;
      label817:
      i = 0;
      break label164;
      label823:
      if (paramz.bXE.flags != 0)
      {
        if (paramz.bXE.isBlocked())
        {
          i = 2131230901;
          break label183;
        }
        if (paramz.bXE.EZ())
        {
          i = 2131230907;
          break label183;
        }
        if (paramz.bXE.Fh())
        {
          i = 2131230810;
          break label183;
        }
        if (paramz.bXE.Fj())
        {
          i = 2131230841;
          break label183;
        }
        if (!paramz.bXE.Ff())
        {
          i = 2131231018;
          break label183;
        }
      }
      i = 2131230891;
      break label183;
      label931:
      paramg.cam.setVisibility(8);
      paramg.cau.setVisibility(0);
      paramg.cau.setImageResource(i);
      paramg.cau.setColorFilter(j, PorterDuff.Mode.SRC_ATOP);
      localObject2 = paramg.cau;
      if (!paramz.bXE.isBlocked()) {}
      for (bool2 = true;; bool2 = false)
      {
        ((ImageButton)localObject2).setEnabled(bool2);
        break;
      }
      label1004:
      localObject2 = paramz.bXE;
      break label240;
      label1013:
      localObject2 = cbM;
      break label294;
      label1021:
      bool2 = false;
      break label330;
      label1027:
      i = 8;
      break label359;
      label1034:
      paramm1 = cbN;
      break label385;
      label1041:
      i = -1;
      break label422;
      label1047:
      bool2 = false;
      break label437;
      label1053:
      i = 8;
      break label479;
      label1060:
      paramm1 = paramz.cjA;
      break label500;
      label1068:
      i = paramz.flags >> 24;
      break label584;
      paramg.cay.setText(localContext.getString(2131689480) + "  •  ");
      paramg.cay.setVisibility(0);
      break label621;
      paramg.cay.setText(localContext.getString(2131689653) + "  •  ");
      paramg.cay.setVisibility(0);
      break label621;
      i = paramz.clc;
      break label638;
      bool1 = bool2;
      if (paramz.bYM != null)
      {
        localObject1 = paramz.bYM.getName();
        paramm1 = cbI;
        if ((paramm2 == null) || (!b.a(paramm2, paramz.bYM))) {}
        for (bool1 = true;; bool1 = false) {
          break;
        }
        localObject1 = cbK;
        paramm1 = cbG;
        continue;
        localObject1 = cbL;
        paramm1 = cbH;
      }
    }
    label1256:
    paramg.ccx.setVisibility(8);
    if ((bb.cie) && (paramz != null) && (paramz.body.startsWith("//")))
    {
      i = 1;
      label1291:
      localObject1 = paramg.bUM;
      localObject2 = paramg.caZ;
      if (paramz != null) {
        break label1427;
      }
      paramm1 = null;
      label1309:
      if (paramBoolean) {
        break label1435;
      }
      k = Integer.MAX_VALUE;
      label1318:
      if (paramz != null) {
        break label1448;
      }
      paramm2 = null;
      label1325:
      if (paramz != null) {
        break label1457;
      }
      paramz = null;
      label1331:
      paramz = com.vent.d.e.a((WeakReference)localObject1, (WeakReference)localObject2, paramm1, k, j, paramm2, paramz, true, true, 0);
      if (!paramBoolean) {
        break label1477;
      }
      paramm1 = new boolean[1];
      paramz = com.vent.d.e.a(paramz, i, paramm1);
      if (paramm1[0] == 0) {
        break label1465;
      }
      paramg.caj.setVisibility(0);
      paramg.caj.setText(2131689527);
      paramg.caj.setTextColor(j);
    }
    for (;;)
    {
      paramg.cai.setText(com.vent.d.e.a(paramz));
      paramg.cai.setVisibility(0);
      break;
      i = 5;
      break label1291;
      label1427:
      paramm1 = paramz.body;
      break label1309;
      label1435:
      k = com.vent.d.e.cng * i + 1;
      break label1318;
      label1448:
      paramm2 = paramz.cjC;
      break label1325;
      label1457:
      paramz = paramz.cjE;
      break label1331;
      label1465:
      paramg.caj.setVisibility(8);
      continue;
      label1477:
      paramg.caj.setVisibility(8);
    }
  }
  
  public static void p(Activity paramActivity)
  {
    if (cbE) {
      return;
    }
    cbE = true;
    Object localObject1 = paramActivity.getResources();
    Object localObject2 = new DisplayMetrics();
    paramActivity.getWindow().getWindowManager().getDefaultDisplay().getMetrics((DisplayMetrics)localObject2);
    int i = (((DisplayMetrics)localObject2).widthPixels - MyApplication.cgg * 4 - MyApplication.cge * 6) / 7;
    cbJ = i;
    cbJ = Math.min(i, MyApplication.cgg * 7);
    localObject2 = paramActivity.obtainStyledAttributes(Ub);
    selectableItemBackground = ((TypedArray)localObject2).getResourceId(0, 0);
    ((TypedArray)localObject2).recycle();
    i = ((Resources)localObject1).getColor(2131099760);
    localObject2 = android.support.v4.a.a.a.f(((Resources)localObject1).getDrawable(2131231024).mutate());
    cbI = (Drawable)localObject2;
    android.support.v4.a.a.a.a((Drawable)localObject2, i);
    localObject2 = android.support.v4.a.a.a.f(((Resources)localObject1).getDrawable(2131231027).mutate());
    cbF = (Drawable)localObject2;
    android.support.v4.a.a.a.a((Drawable)localObject2, i);
    localObject2 = android.support.v4.a.a.a.f(((Resources)localObject1).getDrawable(2131231025).mutate());
    cbG = (Drawable)localObject2;
    android.support.v4.a.a.a.a((Drawable)localObject2, i);
    localObject1 = android.support.v4.a.a.a.f(((Resources)localObject1).getDrawable(2131231026).mutate());
    cbH = (Drawable)localObject1;
    android.support.v4.a.a.a.a((Drawable)localObject1, i);
    cbK = paramActivity.getString(2131689703);
    cbL = paramActivity.getString(2131689662);
    cbM = paramActivity.getString(2131689804);
    cbN = paramActivity.getString(2131689565);
    cbO = paramActivity.getString(2131689516);
    cbP = paramActivity.getString(2131689580);
  }
  
  static void q(Activity paramActivity)
  {
    if (cbX != null)
    {
      int i = com.vent.d.c.bJ(paramActivity);
      boolean bool = MyApplication.br(paramActivity);
      if ((i != cbW) || (bool != cca))
      {
        Iterator localIterator = cbX.iterator();
        while (localIterator.hasNext()) {
          ((f)localIterator.next()).CY();
        }
        CW();
      }
    }
    cbE = false;
    p(paramActivity);
  }
  
  protected abstract void AZ();
  
  public final void CB()
  {
    this.cbT.bZY = 0L;
  }
  
  public final void CC()
  {
    super.CC();
    this.cbT.ccb = null;
  }
  
  final boolean CD()
  {
    return this.cbT.bZH;
  }
  
  public final Bundle CG()
  {
    Bundle localBundle = new Bundle();
    if (CU() <= 50)
    {
      Parcel localParcel = Parcel.obtain();
      localParcel.writeTypedList(this.cbT.ccb);
      int i = localParcel.dataSize();
      if ((Build.VERSION.SDK_INT < 24) || (i < 40960))
      {
        localBundle.putByteArray("vents", localParcel.marshall());
        localBundle.putBoolean("needmore", this.cbT.bZH);
        localBundle.putLong("age", this.cbT.bZY);
        localBundle.putInt("vents_per_ad", this.cbT.ccc);
        localBundle.putInt("ad_offset", this.cbT.ccd);
      }
      localParcel.recycle();
    }
    return localBundle;
  }
  
  final z CT()
  {
    if (isEmpty()) {
      return null;
    }
    return (z)this.cbT.ccb.get(this.cbT.ccb.size() - 1);
  }
  
  final int CU()
  {
    if ((this.cbT != null) && (this.cbT.ccb != null)) {
      return this.cbT.ccb.size();
    }
    return 0;
  }
  
  final int Cw()
  {
    int i = CU();
    int j = i;
    if (this.cbT.ccc > 0) {
      if (this.cbT.ccd <= 0) {
        break label59;
      }
    }
    label59:
    for (j = this.cbT.ccc - this.cbT.ccd + i;; j = i)
    {
      j = i + j / this.cbT.ccc;
      return j;
    }
  }
  
  final void aZ(boolean paramBoolean)
  {
    this.cbT.bZH = paramBoolean;
  }
  
  final int ey(int paramInt)
  {
    if (this.cbT.ccc > 0)
    {
      int j = this.cbT.ccc - this.cbT.ccd;
      int i = paramInt;
      if (this.cbT.ccd > 0) {
        i = paramInt + j;
      }
      i = i / this.cbT.ccc * (this.cbT.ccc + 1) + i % this.cbT.ccc;
      paramInt = i;
      if (this.cbT.ccd > 0) {
        paramInt = i - j;
      }
      return paramInt;
    }
    return paramInt;
  }
  
  final int ez(int paramInt)
  {
    if (this.cbT.ccc > 0)
    {
      int j = this.cbT.ccc - this.cbT.ccd;
      int i = paramInt;
      if (this.cbT.ccd > 0) {
        i = paramInt + j;
      }
      paramInt = this.cbT.ccc + 1;
      i = i % paramInt + i / paramInt * this.cbT.ccc;
      paramInt = i;
      if (this.cbT.ccd > 0) {
        paramInt = i - j;
      }
      return paramInt;
    }
    return paramInt;
  }
  
  public long getItemId(int paramInt)
  {
    switch (getItemViewType(paramInt))
    {
    case 1: 
    default: 
      return -1L;
    case 0: 
      return -2L;
    case 2: 
      return ((z)this.cbT.ccb.get(ez(paramInt))).cjy.hashCode();
    }
    return -3 - (paramInt - this.cbT.ccd) / (this.cbT.ccc + 1);
  }
  
  public int getItemViewType(int paramInt)
  {
    int j = 2;
    int i;
    if (paramInt >= Cw()) {
      i = 0;
    }
    do
    {
      do
      {
        return i;
        i = j;
      } while (this.cbT.ccc <= 0);
      i = j;
    } while ((this.cbT.ccc + paramInt - this.cbT.ccd) % (this.cbT.ccc + 1) != this.cbT.ccc);
    return 3;
  }
  
  final boolean isEmpty()
  {
    return (this.cbT == null) || (com.vent.d.c.f(this.cbT.ccb));
  }
  
  public void onBindViewHolder(RecyclerView.x paramx, int paramInt)
  {
    switch (paramx.getItemViewType())
    {
    }
    label148:
    do
    {
      do
      {
        do
        {
          do
          {
            return;
            AZ();
            return;
            int i;
            if (this.cbT.bZH)
            {
              int j = getItemCount();
              if (!this.cbd) {
                break label148;
              }
              i = 1;
              if (paramInt >= j - i) {
                AZ();
              }
            }
            paramInt = ez(paramInt);
            if ((this.cbT.ccb != null) && (paramInt >= 0) && (paramInt < this.cbT.ccb.size())) {}
            for (localObject = (z)this.cbT.ccb.get(paramInt);; localObject = null)
            {
              a((g)paramx, (z)localObject, true, this.cbR, this.cbS);
              return;
              i = 7;
              break;
            }
          } while (((ViewGroup)paramx.itemView).getChildCount() != 1);
          localObject = (Activity)this.bUM.get();
          paramx = (l.b)paramx;
        } while (!com.vent.d.c.bG((Context)localObject));
        if ((localObject != null) && (MyApplication.cgw) && (!com.vent.b.a.Fp()))
        {
          ArrayList localArrayList = (ArrayList)cbV.get(0);
          if (com.vent.d.c.f(localArrayList))
          {
            cbW = com.vent.d.c.bJ((Context)localObject);
            cca = MyApplication.br((Context)localObject);
            localArrayList.add(new f((Activity)localObject));
          }
        }
      } while (cbV == null);
      localObject = (ArrayList)cbV.get(0);
    } while (com.vent.d.c.f((Collection)localObject));
    Object localObject = (f)((ArrayList)localObject).remove(0);
    ((ViewGroup)paramx.itemView).addView(((f)localObject).ccj, 0);
    paramx.itemView.setTag(localObject);
    ((f)localObject).cco = ((ViewGroup)paramx.itemView);
    ((f)localObject).resume();
    cbX.add(localObject);
    this.cbZ.add(localObject);
  }
  
  public RecyclerView.x onCreateViewHolder(ViewGroup paramViewGroup, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return super.onCreateViewHolder(paramViewGroup, paramInt);
    case 2: 
      paramViewGroup = (ViewGroup)LayoutInflater.from(paramViewGroup.getContext()).inflate(2131427546, paramViewGroup, false);
      paramViewGroup = new g(this.bUM, this.caZ, paramViewGroup, true);
      if (this.cbQ == null) {
        this.cbQ = new e(this);
      }
      paramViewGroup.cam.setOnClickListener(new c(paramViewGroup, this.cbQ));
      paramViewGroup.cau.setOnClickListener(new b(paramViewGroup));
      return paramViewGroup;
    }
    paramViewGroup = paramViewGroup.getContext();
    LinearLayout localLinearLayout = new LinearLayout(paramViewGroup);
    localLinearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
    localLinearLayout.setOrientation(1);
    localLinearLayout.setGravity(1);
    View localView = new View(paramViewGroup);
    localView.setBackgroundColor(paramViewGroup.getResources().getColor(2131099759));
    localView.setLayoutParams(new LinearLayout.LayoutParams(-1, 1));
    localLinearLayout.addView(localView);
    return new l.b(localLinearLayout);
  }
  
  public void onViewRecycled(RecyclerView.x paramx)
  {
    switch (paramx.getItemViewType())
    {
    }
    Object localObject;
    do
    {
      do
      {
        return;
        ((g)paramx).Db();
        return;
        paramx = (l.b)paramx;
        if (((ViewGroup)paramx.itemView).getChildCount() == 2)
        {
          localObject = (com.google.android.gms.ads.e)((ViewGroup)paramx.itemView).getChildAt(0);
          ((ViewGroup)paramx.itemView).removeView((View)localObject);
        }
        localObject = (f)paramx.itemView.getTag();
      } while (localObject == null);
      paramx.itemView.setTag(null);
      ((f)localObject).cco = null;
      cbX.remove(localObject);
      this.cbZ.remove(localObject);
    } while (((f)localObject).ccj == null);
    ((f)localObject).pause();
    ((f)localObject).ccm = 0;
    paramx = (ArrayList)cbV.get(0);
    if ((paramx.size() < 2) && (!com.vent.b.a.Fp()))
    {
      paramx.add(localObject);
      return;
    }
    ((f)localObject).CY();
  }
  
  public final void t(Bundle paramBundle)
  {
    if (paramBundle != null)
    {
      byte[] arrayOfByte = paramBundle.getByteArray("vents");
      if (arrayOfByte != null)
      {
        Parcel localParcel = Parcel.obtain();
        localParcel.unmarshall(arrayOfByte, 0, arrayOfByte.length);
        localParcel.setDataPosition(0);
        this.cbT.ccb = localParcel.createTypedArrayList(z.CREATOR);
        localParcel.recycle();
        this.cbT.bZH = paramBundle.getBoolean("needmore");
        this.cbT.bZY = paramBundle.getLong("age");
        this.cbT.ccc = paramBundle.getInt("vents_per_ad");
        this.cbT.ccd = paramBundle.getInt("ad_offset");
      }
      super.g(false, false);
    }
  }
  
  static final class a
  {
    boolean bZH;
    long bZY;
    ArrayList<z> ccb;
    int ccc;
    int ccd;
  }
  
  final class b
    implements View.OnClickListener
  {
    final s.g cce;
    
    b(s.g paramg)
    {
      this.cce = paramg;
    }
    
    public final void onClick(View paramView)
    {
      switch (paramView.getId())
      {
      }
      do
      {
        return;
      } while (this.cce.ccq == null);
      f.a((android.support.v7.app.d)this.cce.bUM.get(), this.cce.ccq.bXE, new f.a()
      {
        public final void run()
        {
          if ((s.b.this.cce.ccq != null) && (s.b.this.cce.ccq.bXE != null))
          {
            s.b.this.cce.ccq.bXE = this.ceP;
            int j = s.this.CU();
            int i = 0;
            if (i < j)
            {
              z localz = (z)s.this.cbT.ccb.get(i);
              if (b.a(localz.bXE, this.ceP))
              {
                localz.bXE = this.ceP;
                if (!this.ceP.Fh()) {
                  break label155;
                }
              }
              label155:
              for (localz.flags |= 0x1;; localz.flags &= 0xFFFFFFFE)
              {
                s.this.notifyItemChanged(s.this.ey(i));
                i += 1;
                break;
              }
            }
          }
        }
      });
    }
  }
  
  static final class c
    implements ba.a, View.OnClickListener
  {
    final s.d cbQ;
    final s.g cce;
    
    c(s.g paramg, s.d paramd)
    {
      this.cce = paramg;
      this.cbQ = paramd;
    }
    
    public final void onClick(View paramView)
    {
      z localz = this.cce.ccq;
      if (localz == null) {
        return;
      }
      a locala = (a)this.cce.bUM.get();
      paramView = new ba(locala, paramView);
      android.support.v7.view.menu.h localh = paramView.Pj;
      paramView.getMenuInflater().inflate(2131492883, localh);
      if (bb.c(localz.bXE))
      {
        localh.removeItem(2131296844);
        localh.removeItem(2131296555);
        localh.removeItem(2131296551);
      }
      for (;;)
      {
        if (this.cce.ccr) {
          localh.removeItem(2131296420);
        }
        if ((this.cce.ccr) || (!localz.Fl())) {
          localh.removeItem(2131296843);
        }
        com.vent.d.c.a(this.cce.bUM, localh, localz.body, localz.cjC, localz.cjE);
        paramView.adv = this;
        paramView.adu.show();
        return;
        if ((localz.bXE == null) || (m.b(localz.bXE.cjy, com.vent.d.c.cmG)))
        {
          localh.removeItem(2131296333);
          localh.removeItem(2131296844);
        }
        localh.removeItem(2131296469);
        localh.removeItem(2131296444);
        if ((localz.bYM != null) && (localz.bYM.EY())) {}
        for (int i = 1;; i = 0)
        {
          if (i != 0) {
            break label283;
          }
          localh.removeItem(2131296555);
          localh.removeItem(2131296551);
          break;
        }
        label283:
        localh.findItem(2131296555).setTitle(com.vent.d.e.u(com.vent.d.c.cmH + " " + locala.getString(2131689721)));
        localh.findItem(2131296551).setTitle(com.vent.d.e.u(com.vent.d.c.cmH + " " + locala.getString(2131689720, new Object[] { this.cce.ccq.bXE.username })));
      }
    }
    
    public final boolean onMenuItemClick(MenuItem paramMenuItem)
    {
      boolean bool2 = true;
      final int i;
      android.support.v7.app.d locald;
      boolean bool1;
      if (this.cce.ccq != null)
      {
        i = paramMenuItem.getItemId();
        locald = (android.support.v7.app.d)this.cce.bUM.get();
        if (this.cce.caZ == null) {
          break label156;
        }
        paramMenuItem = (am)this.cce.caZ.get();
        bool1 = bool2;
      }
      switch (i)
      {
      case 5: 
      default: 
        bool1 = false;
      case 3: 
      case 4: 
      case 2131296843: 
      case 2131296469: 
      case 2131296444: 
      case 2131296555: 
      case 2131296551: 
      case 2131296844: 
        label156:
        do
        {
          return bool1;
          paramMenuItem = null;
          break;
          this.cbQ.a(this.cce, i);
          return true;
          if (!bb.ceP.Fc())
          {
            f.v(locald);
            return true;
          }
          ActVent.a(locald, paramMenuItem, this.cce.ccq);
          return true;
          f.a(locald, this.cce.ccq, new Runnable()
          {
            public final void run()
            {
              s.c.this.cbQ.a(s.c.this.cce, i);
            }
          });
          return true;
          f.a(locald, this.cce.ccq.bYM, this.cce.ccq, new Runnable()
          {
            public final void run()
            {
              s.c.this.cbQ.a(s.c.this.cce, i);
            }
          });
          return true;
          f.a(locald, this.cce.ccq.bYM, this.cce.ccq.bXE, null);
          return true;
          bool1 = bool2;
        } while (!f.a(locald, this.cce.ccq.bXE, this.cce.ccq));
        this.cbQ.a(this.cce, i);
        return true;
      }
      paramMenuItem = com.vent.d.e.a(this.cce.bUM, this.cce.caZ, this.cce.ccq.body, Integer.MAX_VALUE, 0, this.cce.ccq.cjC, this.cce.ccq.cjE, false, true, 2);
      if (paramMenuItem != null) {
        com.vent.d.c.w(locald, paramMenuItem.toString());
      }
      this.cbQ.a(this.cce, i);
      return true;
    }
  }
  
  static abstract interface d
  {
    public abstract void a(s.g paramg, int paramInt);
  }
  
  static final class e
    implements s.d
  {
    final s cci;
    
    e(s params)
    {
      this.cci = params;
    }
    
    public final void a(s.g paramg, int paramInt)
    {
      switch (paramInt)
      {
      }
      do
      {
        do
        {
          do
          {
            return;
            paramInt = paramg.getAdapterPosition();
          } while (paramInt < 0);
          this.cci.cbT.ccb.remove(this.cci.ez(paramInt));
          if (this.cci.cbT.ccc > 0) {
            break;
          }
          this.cci.notifyItemRemoved(paramInt);
          return;
          paramInt = paramg.getAdapterPosition();
        } while (paramInt < 0);
        paramInt = this.cci.ez(paramInt);
      } while (paramInt < 0);
      paramg = ((z)this.cci.cbT.ccb.get(paramInt)).bXE;
      paramInt = 0;
      while (paramInt < this.cci.cbT.ccb.size()) {
        if (b.a(((z)this.cci.cbT.ccb.get(paramInt)).bXE, paramg)) {
          this.cci.cbT.ccb.remove(paramInt);
        } else {
          paramInt += 1;
        }
      }
      this.cci.notifyDataSetChanged();
    }
  }
  
  static final class f
    extends com.google.android.gms.ads.a
    implements Runnable
  {
    com.google.android.gms.ads.e ccj;
    long cck;
    long ccl;
    int ccm;
    final int ccn = 0;
    ViewGroup cco;
    boolean ccp;
    
    f(Activity paramActivity)
    {
      Context localContext = paramActivity.getApplicationContext();
      DisplayMetrics localDisplayMetrics = new DisplayMetrics();
      paramActivity.getWindow().getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics);
      int i = (int)TypedValue.applyDimension(1, 1200.0F, localDisplayMetrics);
      if (localDisplayMetrics.widthPixels > i) {}
      for (;;)
      {
        this.ccj = new com.google.android.gms.ads.e(paramActivity);
        paramActivity = new LinearLayout.LayoutParams(i, -2);
        paramActivity.gravity = 1;
        this.ccj.setLayoutParams(paramActivity);
        this.ccj.setVisibility(8);
        this.ccj.setAdSize(com.google.android.gms.ads.d.azh);
        this.ccj.setAdUnitId(localContext.getString(s.cbU[0]));
        this.ccj.setAdListener(this);
        if (this.cco != null) {
          this.cco.addView(this.ccj, 0);
        }
        CZ();
        this.ccj.pause();
        if (this.ccm > 0) {
          resume();
        }
        return;
        i = -1;
      }
    }
    
    private void CX()
    {
      long l = 180000L - this.cck;
      if (l > 0L)
      {
        s.cbY.postDelayed(this, l);
        this.ccl = SystemClock.elapsedRealtime();
        return;
      }
      run();
    }
    
    private void CZ()
    {
      if ((this.ccj == null) || (!com.vent.d.c.bG(this.ccj.getContext()))) {
        return;
      }
      com.google.android.gms.ads.c.a locala = new com.google.android.gms.ads.c.a();
      if (bb.ciy != null) {
        locala.a(bb.ciy);
      }
      if (t.ccF)
      {
        Bundle localBundle = new Bundle();
        localBundle.putString("npa", "1");
        locala.a(AdMobAdapter.class, localBundle);
      }
      this.ccj.a(locala.ly());
    }
    
    final void CY()
    {
      if (this.ccm > 0) {
        pause();
      }
      if (this.ccj != null)
      {
        if (this.cco != null) {
          this.cco.removeView(this.ccj);
        }
        this.ccj.setAdListener(null);
        this.ccj.destroy();
        this.ccj = null;
      }
    }
    
    public final void cv(int paramInt)
    {
      this.cck = 3600000L;
      if (!this.ccp) {
        this.ccj.setVisibility(8);
      }
    }
    
    public final void lj()
    {
      this.ccp = true;
      if (this.ccj != null) {
        this.ccj.setVisibility(0);
      }
    }
    
    final void pause()
    {
      int i = this.ccm - 1;
      this.ccm = i;
      if (i == 0)
      {
        s.cbY.removeCallbacks(this);
        this.cck += SystemClock.elapsedRealtime() - this.ccl;
        if (this.ccj != null) {
          this.ccj.pause();
        }
      }
    }
    
    final void resume()
    {
      int i = this.ccm;
      this.ccm = (i + 1);
      if (i == 0)
      {
        if (this.ccj != null) {
          this.ccj.resume();
        }
        CX();
      }
    }
    
    public final void run()
    {
      CZ();
      this.cck = 0L;
      CX();
    }
  }
  
  static final class g
    extends RecyclerView.x
    implements View.OnClickListener
  {
    final CachedImageView bUF;
    final WeakReference<a> bUM;
    final TextView bZI;
    final WeakReference<am> caZ;
    final TextView cai;
    final TextView caj;
    final ImageButton cam;
    final ImageButton cau;
    final TextView cay;
    final TextView cbC;
    final List<ImageView> ccA;
    final List<TextView> ccB;
    z ccq;
    final boolean ccr;
    final View ccs;
    final View cct;
    final View ccu;
    final TextView ccv;
    final TextView ccw;
    final TextView ccx;
    final LinearLayout ccy;
    final LinearLayout ccz;
    
    g(WeakReference<a> paramWeakReference, WeakReference<am> paramWeakReference1, ViewGroup paramViewGroup, boolean paramBoolean)
    {
      super();
      this.bUM = paramWeakReference;
      this.caZ = paramWeakReference1;
      this.ccr = paramBoolean;
      this.ccA = new ArrayList(2);
      this.ccB = new ArrayList(5);
      paramViewGroup.setTag(this);
      if (paramBoolean) {
        paramViewGroup.setOnClickListener(this);
      }
      this.ccs = paramViewGroup.findViewById(2131296391);
      this.bUF = ((CachedImageView)paramViewGroup.findViewById(2131296818));
      this.bUF.aH(MyApplication.cgm, MyApplication.cgm);
      this.bUF.setDefaultImage(2131231019);
      this.bUF.setOnClickListener(this);
      this.cct = paramViewGroup.findViewById(2131296820);
      if (this.cct != null) {
        this.cct.setOnClickListener(this);
      }
      this.bZI = ((TextView)paramViewGroup.findViewById(2131296981));
      this.bZI.setOnClickListener(this);
      this.bZI.setTypeface(com.vent.d.e.cmW);
      ((TextView)paramViewGroup.findViewById(2131296646)).setTypeface(com.vent.d.e.cmZ);
      this.cbC = ((TextView)paramViewGroup.findViewById(2131296479));
      this.cbC.setTypeface(com.vent.d.e.cmU);
      this.cbC.setOnClickListener(this);
      this.ccu = paramViewGroup.findViewById(2131296487);
      if (this.ccu != null) {
        this.ccu.setOnClickListener(this);
      }
      this.ccv = ((TextView)paramViewGroup.findViewById(2131296996));
      this.ccv.setTypeface(com.vent.d.e.cmZ);
      this.cay = ((TextView)paramViewGroup.findViewById(2131296850));
      this.cay.setTypeface(com.vent.d.e.cmZ);
      this.ccw = ((TextView)paramViewGroup.findViewById(2131296545));
      this.ccw.setTypeface(com.vent.d.e.cmZ);
      this.ccw.setOnClickListener(this);
      this.ccx = ((TextView)paramViewGroup.findViewById(2131296647));
      this.cai = ((TextView)paramViewGroup.findViewById(2131296344));
      this.cai.setMovementMethod(FixedTextViewTouchConsume.a.FB());
      this.cai.setFocusable(false);
      this.cai.setFocusableInTouchMode(false);
      this.cai.setTypeface(com.vent.d.e.cmX);
      if (Build.VERSION.SDK_INT >= 23)
      {
        this.cai.setHyphenationFrequency(0);
        this.cai.setBreakStrategy(0);
      }
      this.caj = ((TextView)paramViewGroup.findViewById(2131296410));
      this.caj.setTypeface(com.vent.d.e.cmX);
      this.ccy = ((LinearLayout)paramViewGroup.findViewById(2131296586));
      this.ccz = ((LinearLayout)paramViewGroup.findViewById(2131296423));
      this.cam = ((ImageButton)paramViewGroup.findViewById(2131296723));
      this.cam.setFocusable(false);
      this.cam.setFocusableInTouchMode(false);
      this.cam.setClickable(true);
      this.cam.setTag(this);
      this.cau = ((ImageButton)paramViewGroup.findViewById(2131296523));
      this.cau.setFocusable(false);
      this.cau.setFocusableInTouchMode(false);
      this.cau.setClickable(true);
      this.cau.setTag(this);
      int i = 0;
      while (i < 6)
      {
        paramWeakReference = new AppCompatTextView(this.itemView.getContext());
        paramWeakReference.setTypeface(com.vent.d.e.cmW);
        paramWeakReference.setTextSize(0, MyApplication.cgt);
        paramWeakReference.setGravity(1);
        paramWeakReference.setIncludeFontPadding(false);
        paramWeakReference.setPadding(0, MyApplication.cgu, 0, MyApplication.cgv);
        paramWeakReference.setId(2131296650 + i);
        paramWeakReference.setOnClickListener(this);
        this.ccz.addView(paramWeakReference);
        i += 1;
      }
    }
    
    final void Da()
    {
      while (this.ccy.getChildCount() > 0)
      {
        View localView = this.ccy.getChildAt(0);
        this.ccy.removeView(localView);
        com.vent.d.a.bq(localView);
        if (localView.getLayoutParams().width == s.cbJ)
        {
          localView.setId(-1);
          if ((localView instanceof TextView)) {
            this.ccB.add((TextView)localView);
          } else if ((localView instanceof ImageView)) {
            this.ccA.add((ImageView)localView);
          }
        }
      }
    }
    
    final void Db()
    {
      this.bUF.setCachedImage(null);
      this.cai.setText(null);
      this.ccq = null;
      Da();
    }
    
    public final void onClick(final View paramView)
    {
      if ((this.ccq == null) || (bb.ceP == null)) {}
      label13:
      Object localObject1;
      label32:
      label226:
      label524:
      label610:
      label799:
      for (;;)
      {
        return;
        if (this.bUM != null)
        {
          localObject1 = (a)this.bUM.get();
          if (this.caZ == null) {
            break label226;
          }
        }
        Object localObject3;
        int i;
        for (Object localObject2 = (am)this.caZ.get();; localObject2 = null)
        {
          if ((localObject2 instanceof FrgVentsList))
          {
            localObject3 = (FrgVentsList)localObject2;
            if (((FrgVentsList)localObject3).ceE != null) {
              ((s)((FrgVentsList)localObject3).ceE).cbT.bZY = System.currentTimeMillis();
            }
          }
          localObject3 = this.itemView.getContext();
          i = paramView.getId();
          switch (i)
          {
          default: 
            if ((i < 2131296660) || (i >= 2131296666)) {
              break label610;
            }
            paramView = o.e(((com.vent.a.n)this.ccq.ckZ.get(i - 2131296660)).cjy);
            if (paramView == null) {
              break label13;
            }
            if (bb.ceP.Fc()) {
              break label524;
            }
            f.v((Activity)localObject1);
            return;
            localObject1 = null;
            break label32;
          }
        }
        if (this.ccq.bXE != null)
        {
          ActProfile.a((Activity)localObject1, (i)localObject2, this.ccq.bXE, null);
          return;
          switch (this.ccq.clc)
          {
          default: 
            return;
          case 0: 
            if (this.ccq.bYM != null)
            {
              ActGroup.a((Activity)localObject1, (i)localObject2, this.ccq.bYM);
              return;
            }
            break;
          case 1: 
            ActVentList.a((Activity)localObject1, (i)localObject2, s.cbK, "api/v2/users/" + bb.ceP.cjy.toString() + "/vents.json?q%5bprivacy_setting_eq%5d=privacy_personal", 0, null);
            return;
          case 2: 
            ActVentList.a((Activity)localObject1, (i)localObject2, s.cbL, "api/v2/users/" + bb.ceP.cjy.toString() + "/vents.json?q%5bprivacy_setting_eq%5d=privacy_mutuals", 0, null);
            return;
            localObject3 = com.vent.d.c.g(this.ccq.ckX);
            if (localObject3 != null)
            {
              if ((localObject2 != null) && ((localObject2 instanceof FrgVentsList)) && (((FrgVentsList)localObject2).cfG == 5)) {}
              for (paramView = "api/v2/my/emotions/" + ((g)localObject3).cjy + "/vents.json";; paramView = "api/v2/emotions/" + ((g)localObject3).cjy + "/latest_vents.json")
              {
                ActVentList.a((Activity)localObject1, (i)localObject2, com.vent.d.e.s(((g)localObject3).cjP), paramView, 0, "SearchEmotions");
                return;
              }
              if (!this.ccq.f(paramView.cjy)) {
                if (f.a((Activity)localObject1, this.ccq, paramView.cjy)) {
                  this.ccq.a(paramView.cjy, 1);
                }
              }
              for (;;)
              {
                s.a(this, com.vent.d.c.h(this.ccq.ckX));
                return;
                if (f.b((Activity)localObject1, this.ccq, paramView.cjy)) {
                  this.ccq.a(paramView.cjy, -1);
                }
              }
              if ((i >= 2131296650) && (i < 2131296656))
              {
                paramView = o.e(((com.vent.a.n)this.ccq.ckZ.get(i - 2131296650)).cjy);
                if (paramView != null)
                {
                  localObject2 = com.vent.d.c.h(this.ccq.ckX);
                  z localz = this.ccq;
                  if (localObject2 != null) {
                    ((com.vent.a.h)localObject2).bB((Context)localObject3);
                  }
                  ActUserListInteractions.a((Activity)localObject1, localz, paramView);
                }
              }
              else
              {
                localObject1 = (android.support.v7.app.d)this.bUM.get();
                if (this.caZ != null) {}
                for (paramView = (am)this.caZ.get();; paramView = null)
                {
                  if ((localObject1 instanceof ActVentView)) {
                    break label799;
                  }
                  if (!this.ccq.Fm()) {
                    break label801;
                  }
                  if (!com.vent.d.c.bF((Context)localObject1)) {
                    break;
                  }
                  new android.support.v7.app.c.a((Context)localObject1).setTitle(2131689571).setMessage(((android.support.v7.app.d)localObject1).getString(2131689794)).setPositiveButton(2131689750, new DialogInterface.OnClickListener()
                  {
                    public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
                    {
                      ActEditProfile.o(paramView);
                    }
                  }).setNegativeButton(17039360, null).create().show();
                  return;
                }
              }
            }
            break;
          }
        }
      }
      label801:
      ActVentView.a((Activity)localObject1, paramView, false, this.ccq);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/com/vent/s.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */