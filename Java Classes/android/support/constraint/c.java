package android.support.constraint;

import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.util.Log;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

public final class c
{
  private static final int[] cX = { 0, 4, 8 };
  private static SparseIntArray cZ;
  HashMap<Integer, a> cY = new HashMap();
  
  static
  {
    SparseIntArray localSparseIntArray = new SparseIntArray();
    cZ = localSparseIntArray;
    localSparseIntArray.append(g.b.ConstraintSet_layout_constraintLeft_toLeftOf, 25);
    cZ.append(g.b.ConstraintSet_layout_constraintLeft_toRightOf, 26);
    cZ.append(g.b.ConstraintSet_layout_constraintRight_toLeftOf, 29);
    cZ.append(g.b.ConstraintSet_layout_constraintRight_toRightOf, 30);
    cZ.append(g.b.ConstraintSet_layout_constraintTop_toTopOf, 36);
    cZ.append(g.b.ConstraintSet_layout_constraintTop_toBottomOf, 35);
    cZ.append(g.b.ConstraintSet_layout_constraintBottom_toTopOf, 4);
    cZ.append(g.b.ConstraintSet_layout_constraintBottom_toBottomOf, 3);
    cZ.append(g.b.ConstraintSet_layout_constraintBaseline_toBaselineOf, 1);
    cZ.append(g.b.ConstraintSet_layout_editor_absoluteX, 6);
    cZ.append(g.b.ConstraintSet_layout_editor_absoluteY, 7);
    cZ.append(g.b.ConstraintSet_layout_constraintGuide_begin, 17);
    cZ.append(g.b.ConstraintSet_layout_constraintGuide_end, 18);
    cZ.append(g.b.ConstraintSet_layout_constraintGuide_percent, 19);
    cZ.append(g.b.ConstraintSet_android_orientation, 27);
    cZ.append(g.b.ConstraintSet_layout_constraintStart_toEndOf, 32);
    cZ.append(g.b.ConstraintSet_layout_constraintStart_toStartOf, 33);
    cZ.append(g.b.ConstraintSet_layout_constraintEnd_toStartOf, 10);
    cZ.append(g.b.ConstraintSet_layout_constraintEnd_toEndOf, 9);
    cZ.append(g.b.ConstraintSet_layout_goneMarginLeft, 13);
    cZ.append(g.b.ConstraintSet_layout_goneMarginTop, 16);
    cZ.append(g.b.ConstraintSet_layout_goneMarginRight, 14);
    cZ.append(g.b.ConstraintSet_layout_goneMarginBottom, 11);
    cZ.append(g.b.ConstraintSet_layout_goneMarginStart, 15);
    cZ.append(g.b.ConstraintSet_layout_goneMarginEnd, 12);
    cZ.append(g.b.ConstraintSet_layout_constraintVertical_weight, 40);
    cZ.append(g.b.ConstraintSet_layout_constraintHorizontal_weight, 39);
    cZ.append(g.b.ConstraintSet_layout_constraintHorizontal_chainStyle, 41);
    cZ.append(g.b.ConstraintSet_layout_constraintVertical_chainStyle, 42);
    cZ.append(g.b.ConstraintSet_layout_constraintHorizontal_bias, 20);
    cZ.append(g.b.ConstraintSet_layout_constraintVertical_bias, 37);
    cZ.append(g.b.ConstraintSet_layout_constraintDimensionRatio, 5);
    cZ.append(g.b.ConstraintSet_layout_constraintLeft_creator, 64);
    cZ.append(g.b.ConstraintSet_layout_constraintTop_creator, 64);
    cZ.append(g.b.ConstraintSet_layout_constraintRight_creator, 64);
    cZ.append(g.b.ConstraintSet_layout_constraintBottom_creator, 64);
    cZ.append(g.b.ConstraintSet_layout_constraintBaseline_creator, 64);
    cZ.append(g.b.ConstraintSet_android_layout_marginLeft, 24);
    cZ.append(g.b.ConstraintSet_android_layout_marginRight, 28);
    cZ.append(g.b.ConstraintSet_android_layout_marginStart, 31);
    cZ.append(g.b.ConstraintSet_android_layout_marginEnd, 8);
    cZ.append(g.b.ConstraintSet_android_layout_marginTop, 34);
    cZ.append(g.b.ConstraintSet_android_layout_marginBottom, 2);
    cZ.append(g.b.ConstraintSet_android_layout_width, 23);
    cZ.append(g.b.ConstraintSet_android_layout_height, 21);
    cZ.append(g.b.ConstraintSet_android_visibility, 22);
    cZ.append(g.b.ConstraintSet_android_alpha, 43);
    cZ.append(g.b.ConstraintSet_android_elevation, 44);
    cZ.append(g.b.ConstraintSet_android_rotationX, 45);
    cZ.append(g.b.ConstraintSet_android_rotationY, 46);
    cZ.append(g.b.ConstraintSet_android_rotation, 60);
    cZ.append(g.b.ConstraintSet_android_scaleX, 47);
    cZ.append(g.b.ConstraintSet_android_scaleY, 48);
    cZ.append(g.b.ConstraintSet_android_transformPivotX, 49);
    cZ.append(g.b.ConstraintSet_android_transformPivotY, 50);
    cZ.append(g.b.ConstraintSet_android_translationX, 51);
    cZ.append(g.b.ConstraintSet_android_translationY, 52);
    cZ.append(g.b.ConstraintSet_android_translationZ, 53);
    cZ.append(g.b.ConstraintSet_layout_constraintWidth_default, 54);
    cZ.append(g.b.ConstraintSet_layout_constraintHeight_default, 55);
    cZ.append(g.b.ConstraintSet_layout_constraintWidth_max, 56);
    cZ.append(g.b.ConstraintSet_layout_constraintHeight_max, 57);
    cZ.append(g.b.ConstraintSet_layout_constraintWidth_min, 58);
    cZ.append(g.b.ConstraintSet_layout_constraintHeight_min, 59);
    cZ.append(g.b.ConstraintSet_layout_constraintCircle, 61);
    cZ.append(g.b.ConstraintSet_layout_constraintCircleRadius, 62);
    cZ.append(g.b.ConstraintSet_layout_constraintCircleAngle, 63);
    cZ.append(g.b.ConstraintSet_android_id, 38);
  }
  
  private static int a(TypedArray paramTypedArray, int paramInt1, int paramInt2)
  {
    int i = paramTypedArray.getResourceId(paramInt1, paramInt2);
    paramInt2 = i;
    if (i == -1) {
      paramInt2 = paramTypedArray.getInt(paramInt1, -1);
    }
    return paramInt2;
  }
  
  static void a(a parama, TypedArray paramTypedArray)
  {
    int j = paramTypedArray.getIndexCount();
    int i = 0;
    if (i < j)
    {
      int k = paramTypedArray.getIndex(i);
      switch (cZ.get(k))
      {
      case 54: 
      case 55: 
      case 56: 
      case 57: 
      case 58: 
      case 59: 
      default: 
        Log.w("ConstraintSet", "Unknown attribute 0x" + Integer.toHexString(k) + "   " + cZ.get(k));
      }
      for (;;)
      {
        i += 1;
        break;
        parama.bP = a(paramTypedArray, k, parama.bP);
        continue;
        parama.bQ = a(paramTypedArray, k, parama.bQ);
        continue;
        parama.bR = a(paramTypedArray, k, parama.bR);
        continue;
        parama.bS = a(paramTypedArray, k, parama.bS);
        continue;
        parama.bT = a(paramTypedArray, k, parama.bT);
        continue;
        parama.bU = a(paramTypedArray, k, parama.bU);
        continue;
        parama.bV = a(paramTypedArray, k, parama.bV);
        continue;
        parama.bW = a(paramTypedArray, k, parama.bW);
        continue;
        parama.bX = a(paramTypedArray, k, parama.bX);
        continue;
        parama.cA = paramTypedArray.getDimensionPixelOffset(k, parama.cA);
        continue;
        parama.cB = paramTypedArray.getDimensionPixelOffset(k, parama.cB);
        continue;
        parama.bM = paramTypedArray.getDimensionPixelOffset(k, parama.bM);
        continue;
        parama.bN = paramTypedArray.getDimensionPixelOffset(k, parama.bN);
        continue;
        parama.bO = paramTypedArray.getFloat(k, parama.bO);
        continue;
        parama.orientation = paramTypedArray.getInt(k, parama.orientation);
        continue;
        parama.cb = a(paramTypedArray, k, parama.cb);
        continue;
        parama.cc = a(paramTypedArray, k, parama.cc);
        continue;
        parama.cd = a(paramTypedArray, k, parama.cd);
        continue;
        parama.ce = a(paramTypedArray, k, parama.ce);
        continue;
        parama.bY = a(paramTypedArray, k, parama.bY);
        continue;
        parama.bZ = paramTypedArray.getDimensionPixelSize(k, parama.bZ);
        continue;
        parama.ca = paramTypedArray.getFloat(k, parama.ca);
        continue;
        parama.cf = paramTypedArray.getDimensionPixelSize(k, parama.cf);
        continue;
        parama.cg = paramTypedArray.getDimensionPixelSize(k, parama.cg);
        continue;
        parama.ch = paramTypedArray.getDimensionPixelSize(k, parama.ch);
        continue;
        parama.ci = paramTypedArray.getDimensionPixelSize(k, parama.ci);
        continue;
        parama.cj = paramTypedArray.getDimensionPixelSize(k, parama.cj);
        continue;
        parama.ck = paramTypedArray.getDimensionPixelSize(k, parama.ck);
        continue;
        parama.cl = paramTypedArray.getFloat(k, parama.cl);
        continue;
        parama.cm = paramTypedArray.getFloat(k, parama.cm);
        continue;
        parama.leftMargin = paramTypedArray.getDimensionPixelSize(k, parama.leftMargin);
        continue;
        parama.rightMargin = paramTypedArray.getDimensionPixelSize(k, parama.rightMargin);
        continue;
        parama.df = paramTypedArray.getDimensionPixelSize(k, parama.df);
        continue;
        parama.de = paramTypedArray.getDimensionPixelSize(k, parama.de);
        continue;
        parama.topMargin = paramTypedArray.getDimensionPixelSize(k, parama.topMargin);
        continue;
        parama.bottomMargin = paramTypedArray.getDimensionPixelSize(k, parama.bottomMargin);
        continue;
        parama.db = paramTypedArray.getLayoutDimension(k, parama.db);
        continue;
        parama.dc = paramTypedArray.getLayoutDimension(k, parama.dc);
        continue;
        parama.visibility = paramTypedArray.getInt(k, parama.visibility);
        parama.visibility = cX[parama.visibility];
        continue;
        parama.alpha = paramTypedArray.getFloat(k, parama.alpha);
        continue;
        parama.dg = true;
        parama.dh = paramTypedArray.getDimension(k, parama.dh);
        continue;
        parama.di = paramTypedArray.getFloat(k, parama.di);
        continue;
        parama.dj = paramTypedArray.getFloat(k, parama.dj);
        continue;
        parama.dk = paramTypedArray.getFloat(k, parama.dk);
        continue;
        parama.dl = paramTypedArray.getFloat(k, parama.dl);
        continue;
        parama.dm = paramTypedArray.getFloat(k, parama.dm);
        continue;
        parama.jdField_do = paramTypedArray.getFloat(k, parama.jdField_do);
        continue;
        parama.dp = paramTypedArray.getFloat(k, parama.dp);
        continue;
        parama.dq = paramTypedArray.getDimension(k, parama.dq);
        continue;
        parama.dr = paramTypedArray.getDimension(k, parama.dr);
        continue;
        parama.ds = paramTypedArray.getDimension(k, parama.ds);
        continue;
        parama.verticalWeight = paramTypedArray.getFloat(k, parama.verticalWeight);
        continue;
        parama.horizontalWeight = paramTypedArray.getFloat(k, parama.horizontalWeight);
        continue;
        parama.cr = paramTypedArray.getInt(k, parama.cr);
        continue;
        parama.cq = paramTypedArray.getInt(k, parama.cq);
        continue;
        parama.dd = paramTypedArray.getResourceId(k, parama.dd);
        continue;
        parama.cn = paramTypedArray.getString(k);
        continue;
        Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(k) + "   " + cZ.get(k));
      }
    }
  }
  
  final void b(ConstraintLayout paramConstraintLayout)
  {
    int j = paramConstraintLayout.getChildCount();
    Object localObject1 = new HashSet(this.cY.keySet());
    int i = 0;
    Object localObject2;
    Object localObject3;
    Object localObject4;
    if (i < j)
    {
      localObject2 = paramConstraintLayout.getChildAt(i);
      int k = ((View)localObject2).getId();
      if (k == -1) {
        throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
      }
      if (this.cY.containsKey(Integer.valueOf(k)))
      {
        ((HashSet)localObject1).remove(Integer.valueOf(k));
        localObject3 = (a)this.cY.get(Integer.valueOf(k));
        if (((a)localObject3).dC != -1) {
          switch (((a)localObject3).dC)
          {
          }
        }
      }
      for (;;)
      {
        localObject4 = (ConstraintLayout.a)((View)localObject2).getLayoutParams();
        ((a)localObject3).a((ConstraintLayout.a)localObject4);
        ((View)localObject2).setLayoutParams((ViewGroup.LayoutParams)localObject4);
        ((View)localObject2).setVisibility(((a)localObject3).visibility);
        if (Build.VERSION.SDK_INT >= 17)
        {
          ((View)localObject2).setAlpha(((a)localObject3).alpha);
          ((View)localObject2).setRotation(((a)localObject3).di);
          ((View)localObject2).setRotationX(((a)localObject3).dj);
          ((View)localObject2).setRotationY(((a)localObject3).dk);
          ((View)localObject2).setScaleX(((a)localObject3).dl);
          ((View)localObject2).setScaleY(((a)localObject3).dm);
          if (!Float.isNaN(((a)localObject3).jdField_do)) {
            ((View)localObject2).setPivotX(((a)localObject3).jdField_do);
          }
          if (!Float.isNaN(((a)localObject3).dp)) {
            ((View)localObject2).setPivotY(((a)localObject3).dp);
          }
          ((View)localObject2).setTranslationX(((a)localObject3).dq);
          ((View)localObject2).setTranslationY(((a)localObject3).dr);
          if (Build.VERSION.SDK_INT >= 21)
          {
            ((View)localObject2).setTranslationZ(((a)localObject3).ds);
            if (((a)localObject3).dg) {
              ((View)localObject2).setElevation(((a)localObject3).dh);
            }
          }
        }
        i += 1;
        break;
        localObject4 = (a)localObject2;
        ((a)localObject4).setId(k);
        ((a)localObject4).setReferencedIds(((a)localObject3).dD);
        ((a)localObject4).setType(((a)localObject3).dB);
        ((a)localObject3).a(ConstraintLayout.aj());
      }
    }
    localObject1 = ((HashSet)localObject1).iterator();
    label582:
    while (((Iterator)localObject1).hasNext())
    {
      localObject3 = (Integer)((Iterator)localObject1).next();
      localObject2 = (a)this.cY.get(localObject3);
      if (((a)localObject2).dC != -1) {
        switch (((a)localObject2).dC)
        {
        }
      }
      for (;;)
      {
        if (!((a)localObject2).da) {
          break label582;
        }
        localObject4 = new e(paramConstraintLayout.getContext());
        ((e)localObject4).setId(((Integer)localObject3).intValue());
        localObject3 = ConstraintLayout.aj();
        ((a)localObject2).a((ConstraintLayout.a)localObject3);
        paramConstraintLayout.addView((View)localObject4, (ViewGroup.LayoutParams)localObject3);
        break;
        localObject4 = new a(paramConstraintLayout.getContext());
        ((a)localObject4).setId(((Integer)localObject3).intValue());
        ((a)localObject4).setReferencedIds(((a)localObject2).dD);
        ((a)localObject4).setType(((a)localObject2).dB);
        ConstraintLayout.a locala = ConstraintLayout.aj();
        ((a)localObject2).a(locala);
        paramConstraintLayout.addView((View)localObject4, locala);
      }
    }
  }
  
  private static final class a
  {
    public float alpha = 1.0F;
    public int bM = -1;
    public int bN = -1;
    public float bO = -1.0F;
    public int bP = -1;
    public int bQ = -1;
    public int bR = -1;
    public int bS = -1;
    public int bT = -1;
    public int bU = -1;
    public int bV = -1;
    public int bW = -1;
    public int bX = -1;
    public int bY = -1;
    public int bZ = 0;
    public int bottomMargin = -1;
    public int cA = -1;
    public int cB = -1;
    public boolean cC = false;
    public boolean cD = false;
    public float ca = 0.0F;
    public int cb = -1;
    public int cc = -1;
    public int cd = -1;
    public int ce = -1;
    public int cf = -1;
    public int cg = -1;
    public int ch = -1;
    public int ci = -1;
    public int cj = -1;
    public int ck = -1;
    public float cl = 0.5F;
    public float cm = 0.5F;
    public String cn = null;
    public int cq = 0;
    public int cr = 0;
    public float dA = 1.0F;
    public int dB = -1;
    public int dC = -1;
    public int[] dD;
    boolean da = false;
    public int db;
    public int dc;
    int dd;
    public int de = -1;
    public int df = -1;
    public boolean dg = false;
    public float dh = 0.0F;
    public float di = 0.0F;
    public float dj = 0.0F;
    public float dk = 0.0F;
    public float dl = 1.0F;
    public float dm = 1.0F;
    public float jdField_do = NaN.0F;
    public float dp = NaN.0F;
    public float dq = 0.0F;
    public float dr = 0.0F;
    public float ds = 0.0F;
    public int dt = -1;
    public int du = -1;
    public int dv = -1;
    public int dw = -1;
    public int dx = -1;
    public int dy = -1;
    public float dz = 1.0F;
    public float horizontalWeight = 0.0F;
    public int leftMargin = -1;
    public int orientation = -1;
    public int rightMargin = -1;
    public int topMargin = -1;
    public float verticalWeight = 0.0F;
    public int visibility = 0;
    
    final void a(int paramInt, d.a parama)
    {
      this.dd = paramInt;
      this.bP = parama.bP;
      this.bQ = parama.bQ;
      this.bR = parama.bR;
      this.bS = parama.bS;
      this.bT = parama.bT;
      this.bU = parama.bU;
      this.bV = parama.bV;
      this.bW = parama.bW;
      this.bX = parama.bX;
      this.cb = parama.cb;
      this.cc = parama.cc;
      this.cd = parama.cd;
      this.ce = parama.ce;
      this.cl = parama.cl;
      this.cm = parama.cm;
      this.cn = parama.cn;
      this.bY = parama.bY;
      this.bZ = parama.bZ;
      this.ca = parama.ca;
      this.cA = parama.cA;
      this.cB = parama.cB;
      this.orientation = parama.orientation;
      this.bO = parama.bO;
      this.bM = parama.bM;
      this.bN = parama.bN;
      this.db = parama.width;
      this.dc = parama.height;
      this.leftMargin = parama.leftMargin;
      this.rightMargin = parama.rightMargin;
      this.topMargin = parama.topMargin;
      this.bottomMargin = parama.bottomMargin;
      this.verticalWeight = parama.verticalWeight;
      this.horizontalWeight = parama.horizontalWeight;
      this.cr = parama.cr;
      this.cq = parama.cq;
      this.cC = parama.cC;
      this.cD = parama.cD;
      this.dt = parama.cs;
      this.du = parama.ct;
      this.cC = parama.cC;
      this.dv = parama.cw;
      this.dw = parama.cx;
      this.dx = parama.cu;
      this.dy = parama.cv;
      this.dz = parama.cy;
      this.dA = parama.cz;
      if (Build.VERSION.SDK_INT >= 17)
      {
        this.de = parama.getMarginEnd();
        this.df = parama.getMarginStart();
      }
      this.alpha = parama.alpha;
      this.di = parama.di;
      this.dj = parama.dj;
      this.dk = parama.dk;
      this.dl = parama.dl;
      this.dm = parama.dm;
      this.jdField_do = parama.jdField_do;
      this.dp = parama.dp;
      this.dq = parama.dq;
      this.dr = parama.dr;
      this.ds = parama.ds;
      this.dh = parama.dh;
      this.dg = parama.dg;
    }
    
    public final void a(ConstraintLayout.a parama)
    {
      parama.bP = this.bP;
      parama.bQ = this.bQ;
      parama.bR = this.bR;
      parama.bS = this.bS;
      parama.bT = this.bT;
      parama.bU = this.bU;
      parama.bV = this.bV;
      parama.bW = this.bW;
      parama.bX = this.bX;
      parama.cb = this.cb;
      parama.cc = this.cc;
      parama.cd = this.cd;
      parama.ce = this.ce;
      parama.leftMargin = this.leftMargin;
      parama.rightMargin = this.rightMargin;
      parama.topMargin = this.topMargin;
      parama.bottomMargin = this.bottomMargin;
      parama.cj = this.cj;
      parama.ck = this.ck;
      parama.cl = this.cl;
      parama.cm = this.cm;
      parama.bY = this.bY;
      parama.bZ = this.bZ;
      parama.ca = this.ca;
      parama.cn = this.cn;
      parama.cA = this.cA;
      parama.cB = this.cB;
      parama.verticalWeight = this.verticalWeight;
      parama.horizontalWeight = this.horizontalWeight;
      parama.cr = this.cr;
      parama.cq = this.cq;
      parama.cC = this.cC;
      parama.cD = this.cD;
      parama.cs = this.dt;
      parama.ct = this.du;
      parama.cw = this.dv;
      parama.cx = this.dw;
      parama.cu = this.dx;
      parama.cv = this.dy;
      parama.cy = this.dz;
      parama.cz = this.dA;
      parama.orientation = this.orientation;
      parama.bO = this.bO;
      parama.bM = this.bM;
      parama.bN = this.bN;
      parama.width = this.db;
      parama.height = this.dc;
      if (Build.VERSION.SDK_INT >= 17)
      {
        parama.setMarginStart(this.df);
        parama.setMarginEnd(this.de);
      }
      parama.ak();
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/constraint/c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */