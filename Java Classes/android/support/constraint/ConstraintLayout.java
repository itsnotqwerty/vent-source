package android.support.constraint;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Build.VERSION;
import android.support.constraint.a.a.c.b;
import android.support.constraint.a.a.c.c;
import android.support.constraint.a.a.d.a;
import android.support.constraint.a.a.j;
import android.support.constraint.a.a.k;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public class ConstraintLayout
  extends ViewGroup
{
  private boolean bA = true;
  private int bB = 3;
  private c bC = null;
  private int bD = -1;
  HashMap<String, Integer> bE = new HashMap();
  private int bF = -1;
  private int bG = -1;
  int bH = -1;
  int bI = -1;
  int bJ = 0;
  int bK = 0;
  private android.support.constraint.a.f bL;
  SparseArray<View> bs = new SparseArray();
  private ArrayList<b> bt = new ArrayList(4);
  private final ArrayList<android.support.constraint.a.a.d> bu = new ArrayList(100);
  android.support.constraint.a.a.e bv = new android.support.constraint.a.a.e();
  private int bw = 0;
  private int bx = 0;
  private int by = Integer.MAX_VALUE;
  private int bz = Integer.MAX_VALUE;
  
  public ConstraintLayout(Context paramContext)
  {
    super(paramContext);
    a(null);
  }
  
  public ConstraintLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramAttributeSet);
  }
  
  public ConstraintLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramAttributeSet);
  }
  
  private void a(AttributeSet paramAttributeSet)
  {
    this.bv.gQ = this;
    this.bs.put(getId(), this);
    this.bC = null;
    int j;
    label180:
    int m;
    if (paramAttributeSet != null)
    {
      paramAttributeSet = getContext().obtainStyledAttributes(paramAttributeSet, g.b.ConstraintLayout_Layout);
      int k = paramAttributeSet.getIndexCount();
      int i = 0;
      if (i < k)
      {
        j = paramAttributeSet.getIndex(i);
        if (j == g.b.ConstraintLayout_Layout_android_minWidth) {
          this.bw = paramAttributeSet.getDimensionPixelOffset(j, this.bw);
        }
        do
        {
          for (;;)
          {
            i += 1;
            break;
            if (j == g.b.ConstraintLayout_Layout_android_minHeight)
            {
              this.bx = paramAttributeSet.getDimensionPixelOffset(j, this.bx);
            }
            else if (j == g.b.ConstraintLayout_Layout_android_maxWidth)
            {
              this.by = paramAttributeSet.getDimensionPixelOffset(j, this.by);
            }
            else if (j == g.b.ConstraintLayout_Layout_android_maxHeight)
            {
              this.bz = paramAttributeSet.getDimensionPixelOffset(j, this.bz);
            }
            else
            {
              if (j != g.b.ConstraintLayout_Layout_layout_optimizationLevel) {
                break label180;
              }
              this.bB = paramAttributeSet.getInt(j, this.bB);
            }
          }
        } while (j != g.b.ConstraintLayout_Layout_constraintSet);
        m = paramAttributeSet.getResourceId(j, 0);
      }
    }
    for (;;)
    {
      try
      {
        this.bC = new c();
        c localc = this.bC;
        localContext = getContext();
        localXmlResourceParser = localContext.getResources().getXml(m);
      }
      catch (Resources.NotFoundException localNotFoundException)
      {
        Context localContext;
        XmlResourceParser localXmlResourceParser;
        String str;
        Object localObject;
        c.a locala;
        this.bC = null;
        continue;
      }
      try
      {
        j = localXmlResourceParser.getEventType();
        break label403;
        j = localXmlResourceParser.next();
        break label403;
        localXmlResourceParser.getName();
        continue;
      }
      catch (XmlPullParserException localXmlPullParserException)
      {
        localXmlPullParserException.printStackTrace();
        this.bD = m;
        break;
        str = localXmlResourceParser.getName();
        localObject = Xml.asAttributeSet(localXmlResourceParser);
        locala = new c.a((byte)0);
        localObject = localContext.obtainStyledAttributes((AttributeSet)localObject, g.b.ConstraintSet);
        c.a(locala, (TypedArray)localObject);
        ((TypedArray)localObject).recycle();
        if (str.equalsIgnoreCase("Guideline")) {
          locala.da = true;
        }
        localXmlPullParserException.cY.put(Integer.valueOf(locala.dd), locala);
        continue;
      }
      catch (IOException localIOException)
      {
        localIOException.printStackTrace();
        continue;
      }
      paramAttributeSet.recycle();
      this.bv.bB = this.bB;
      return;
      label403:
      if (j != 1) {
        switch (j)
        {
        }
      }
    }
  }
  
  private void ai()
  {
    this.bv.aQ();
    if (this.bL != null)
    {
      android.support.constraint.a.f localf = this.bL;
      localf.eu += 1L;
    }
  }
  
  protected static a aj()
  {
    return new a();
  }
  
  private void c(Object paramObject1, Object paramObject2)
  {
    if (((paramObject1 instanceof String)) && ((paramObject2 instanceof Integer)))
    {
      if (this.bE == null) {
        this.bE = new HashMap();
      }
      String str = (String)paramObject1;
      int i = str.indexOf("/");
      paramObject1 = str;
      if (i != -1) {
        paramObject1 = str.substring(i + 1);
      }
      i = ((Integer)paramObject2).intValue();
      this.bE.put(paramObject1, Integer.valueOf(i));
    }
  }
  
  private final android.support.constraint.a.a.d d(int paramInt)
  {
    if (paramInt == 0) {
      return this.bv;
    }
    View localView = (View)this.bs.get(paramInt);
    if (localView == this) {
      return this.bv;
    }
    if (localView == null) {
      return null;
    }
    return ((a)localView.getLayoutParams()).cU;
  }
  
  public final android.support.constraint.a.a.d a(View paramView)
  {
    if (paramView == this) {
      return this.bv;
    }
    if (paramView == null) {
      return null;
    }
    return ((a)paramView.getLayoutParams()).cU;
  }
  
  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    super.addView(paramView, paramInt, paramLayoutParams);
    if (Build.VERSION.SDK_INT < 14) {
      onViewAdded(paramView);
    }
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return paramLayoutParams instanceof a;
  }
  
  public void dispatchDraw(Canvas paramCanvas)
  {
    super.dispatchDraw(paramCanvas);
    if (isInEditMode())
    {
      int j = getChildCount();
      float f1 = getWidth();
      float f2 = getHeight();
      int i = 0;
      while (i < j)
      {
        Object localObject = getChildAt(i);
        if (((View)localObject).getVisibility() != 8)
        {
          localObject = ((View)localObject).getTag();
          if ((localObject != null) && ((localObject instanceof String)))
          {
            localObject = ((String)localObject).split(",");
            if (localObject.length == 4)
            {
              int m = Integer.parseInt(localObject[0]);
              int i1 = Integer.parseInt(localObject[1]);
              int n = Integer.parseInt(localObject[2]);
              int k = Integer.parseInt(localObject[3]);
              m = (int)(m / 1080.0F * f1);
              i1 = (int)(i1 / 1920.0F * f2);
              n = (int)(n / 1080.0F * f1);
              k = (int)(k / 1920.0F * f2);
              localObject = new Paint();
              ((Paint)localObject).setColor(-65536);
              paramCanvas.drawLine(m, i1, m + n, i1, (Paint)localObject);
              paramCanvas.drawLine(m + n, i1, m + n, i1 + k, (Paint)localObject);
              paramCanvas.drawLine(m + n, i1 + k, m, i1 + k, (Paint)localObject);
              paramCanvas.drawLine(m, i1 + k, m, i1, (Paint)localObject);
              ((Paint)localObject).setColor(-16711936);
              paramCanvas.drawLine(m, i1, m + n, i1 + k, (Paint)localObject);
              paramCanvas.drawLine(m, i1 + k, m + n, i1, (Paint)localObject);
            }
          }
        }
        i += 1;
      }
    }
  }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return new a(paramLayoutParams);
  }
  
  public int getMaxHeight()
  {
    return this.bz;
  }
  
  public int getMaxWidth()
  {
    return this.by;
  }
  
  public int getMinHeight()
  {
    return this.bx;
  }
  
  public int getMinWidth()
  {
    return this.bw;
  }
  
  public int getOptimizationLevel()
  {
    return this.bv.bB;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramInt2 = getChildCount();
    paramBoolean = isInEditMode();
    paramInt1 = 0;
    while (paramInt1 < paramInt2)
    {
      View localView = getChildAt(paramInt1);
      a locala = (a)localView.getLayoutParams();
      android.support.constraint.a.a.d locald = locala.cU;
      if (((localView.getVisibility() != 8) || (locala.cH) || (locala.cI) || (paramBoolean)) && (!locala.cJ))
      {
        paramInt3 = locald.aE();
        paramInt4 = locald.aF();
        int i = locald.getWidth() + paramInt3;
        int j = locald.getHeight() + paramInt4;
        localView.layout(paramInt3, paramInt4, i, j);
        if ((localView instanceof f))
        {
          localView = ((f)localView).getContent();
          if (localView != null)
          {
            localView.setVisibility(0);
            localView.layout(paramInt3, paramInt4, i, j);
          }
        }
      }
      paramInt1 += 1;
    }
    paramInt2 = this.bt.size();
    if (paramInt2 > 0)
    {
      paramInt1 = 0;
      while (paramInt1 < paramInt2)
      {
        this.bt.get(paramInt1);
        paramInt1 += 1;
      }
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    System.currentTimeMillis();
    i = View.MeasureSpec.getMode(paramInt1);
    j = View.MeasureSpec.getSize(paramInt1);
    k = View.MeasureSpec.getMode(paramInt2);
    m = View.MeasureSpec.getSize(paramInt2);
    this.bJ = i;
    this.bK = k;
    this.bH = j;
    this.bI = m;
    int i11 = getPaddingLeft();
    int i12 = getPaddingTop();
    this.bv.setX(i11);
    this.bv.setY(i12);
    Object localObject1 = this.bv;
    i = this.by;
    ((android.support.constraint.a.a.d)localObject1).gm[0] = i;
    localObject1 = this.bv;
    i = this.bz;
    ((android.support.constraint.a.a.d)localObject1).gm[1] = i;
    boolean bool;
    int i4;
    label259:
    label299:
    int i9;
    int i10;
    if (Build.VERSION.SDK_INT >= 17)
    {
      localObject1 = this.bv;
      if (getLayoutDirection() == 1)
      {
        bool = true;
        ((android.support.constraint.a.a.e)localObject1).hm = bool;
      }
    }
    else
    {
      i3 = View.MeasureSpec.getMode(paramInt1);
      i = View.MeasureSpec.getSize(paramInt1);
      n = View.MeasureSpec.getMode(paramInt2);
      j = View.MeasureSpec.getSize(paramInt2);
      i1 = getPaddingTop();
      i2 = getPaddingBottom();
      i4 = getPaddingLeft();
      i5 = getPaddingRight();
      k = d.a.hh;
      m = d.a.hh;
      getLayoutParams();
      switch (i3)
      {
      default: 
        i = 0;
        switch (n)
        {
        default: 
          j = 0;
          this.bv.setMinWidth(0);
          this.bv.setMinHeight(0);
          this.bv.j(k);
          this.bv.setWidth(i);
          this.bv.k(m);
          this.bv.setHeight(j);
          this.bv.setMinWidth(this.bw - getPaddingLeft() - getPaddingRight());
          this.bv.setMinHeight(this.bx - getPaddingTop() - getPaddingBottom());
          i9 = this.bv.getWidth();
          i10 = this.bv.getHeight();
          if (!this.bA) {
            break label2838;
          }
          this.bA = false;
          m = getChildCount();
          k = 0;
          i = 0;
        }
        break;
      }
    }
    int i13;
    Object localObject3;
    for (;;)
    {
      j = k;
      if (i < m)
      {
        if (getChildAt(i).isLayoutRequested()) {
          j = 1;
        }
      }
      else
      {
        if (j == 0) {
          break label2838;
        }
        this.bu.clear();
        bool = isInEditMode();
        i13 = getChildCount();
        if (!bool) {
          break label682;
        }
        i = 0;
        while (i < i13)
        {
          localObject3 = getChildAt(i);
          try
          {
            localObject2 = getResources().getResourceName(((View)localObject3).getId());
            c(localObject2, Integer.valueOf(((View)localObject3).getId()));
            j = ((String)localObject2).indexOf('/');
            localObject1 = localObject2;
            if (j != -1) {
              localObject1 = ((String)localObject2).substring(j + 1);
            }
            d(((View)localObject3).getId()).gT = ((String)localObject1);
          }
          catch (Resources.NotFoundException localNotFoundException1)
          {
            for (;;)
            {
              Object localObject2;
              float f2;
              int i7;
              int i8;
              int i6;
              Object localObject4;
              continue;
              n = j;
              j = m;
              continue;
              j = k;
              continue;
              n = j;
              continue;
              m = j;
              continue;
              n = m;
              m = j;
              j = n;
              continue;
              n = m;
              continue;
              j = 0;
              continue;
              i = i2;
              j = 0;
              m = 0;
              k = i1;
              continue;
              j = 0;
              k = m;
              continue;
              k = 0;
              continue;
              float f1 = f2;
              n = i1;
              i1 = i2;
              i2 = i3;
              i = k;
              j = m;
            }
          }
          i += 1;
        }
        bool = false;
        break;
        k = d.a.hi;
        break label259;
        k = d.a.hi;
        i = 0;
        break label259;
        i = Math.min(this.by, i) - (i4 + i5);
        break label259;
        m = d.a.hi;
        break label299;
        m = d.a.hi;
        j = 0;
        break label299;
        j = Math.min(this.bz, j) - (i1 + i2);
        break label299;
      }
      i += 1;
    }
    label682:
    i = 0;
    while (i < i13)
    {
      localObject1 = a(getChildAt(i));
      if (localObject1 != null) {
        ((android.support.constraint.a.a.d)localObject1).reset();
      }
      i += 1;
    }
    if (this.bD != -1)
    {
      i = 0;
      while (i < i13)
      {
        localObject1 = getChildAt(i);
        if ((((View)localObject1).getId() == this.bD) && ((localObject1 instanceof d))) {
          this.bC = ((d)localObject1).getConstraintSet();
        }
        i += 1;
      }
    }
    if (this.bC != null) {
      this.bC.b(this);
    }
    this.bv.aX();
    j = this.bt.size();
    if (j > 0)
    {
      i = 0;
      while (i < j)
      {
        ((b)this.bt.get(i)).a(this);
        i += 1;
      }
    }
    i = 0;
    while (i < i13)
    {
      localObject1 = getChildAt(i);
      if ((localObject1 instanceof f))
      {
        localObject1 = (f)localObject1;
        if ((((f)localObject1).dF == -1) && (!((f)localObject1).isInEditMode())) {
          ((f)localObject1).setVisibility(((f)localObject1).dH);
        }
        ((f)localObject1).dG = findViewById(((f)localObject1).dF);
        if (((f)localObject1).dG != null)
        {
          ((a)((f)localObject1).dG.getLayoutParams()).cJ = true;
          ((f)localObject1).dG.setVisibility(0);
          ((f)localObject1).setVisibility(0);
        }
      }
      i += 1;
    }
    int i5 = 0;
    if (i5 < i13)
    {
      localObject3 = getChildAt(i5);
      localObject2 = a((View)localObject3);
      if (localObject2 != null)
      {
        localObject1 = (a)((View)localObject3).getLayoutParams();
        ((a)localObject1).ak();
        if (!((a)localObject1).cV) {
          break label1195;
        }
        ((a)localObject1).cV = false;
        label1042:
        ((android.support.constraint.a.a.d)localObject2).gS = ((View)localObject3).getVisibility();
        if (((a)localObject1).cJ) {
          ((android.support.constraint.a.a.d)localObject2).gS = 8;
        }
        ((android.support.constraint.a.a.d)localObject2).gQ = localObject3;
        this.bv.a((android.support.constraint.a.a.d)localObject2);
        if ((!((a)localObject1).cF) || (!((a)localObject1).cE)) {
          this.bu.add(localObject2);
        }
        if (!((a)localObject1).cH) {
          break label1299;
        }
        localObject2 = (android.support.constraint.a.a.f)localObject2;
        j = ((a)localObject1).cR;
        i = ((a)localObject1).cS;
        f1 = ((a)localObject1).cT;
        if (Build.VERSION.SDK_INT < 17)
        {
          j = ((a)localObject1).bM;
          i = ((a)localObject1).bN;
          f1 = ((a)localObject1).bO;
        }
        if (f1 == -1.0F) {
          break label1267;
        }
        ((android.support.constraint.a.a.f)localObject2).a(f1);
      }
      label1195:
      label1267:
      label1299:
      while ((((a)localObject1).bP == -1) && (((a)localObject1).bQ == -1) && (((a)localObject1).bR == -1) && (((a)localObject1).bS == -1) && (((a)localObject1).cc == -1) && (((a)localObject1).cb == -1) && (((a)localObject1).cd == -1) && (((a)localObject1).ce == -1) && (((a)localObject1).bT == -1) && (((a)localObject1).bU == -1) && (((a)localObject1).bV == -1) && (((a)localObject1).bW == -1) && (((a)localObject1).bX == -1) && (((a)localObject1).cA == -1) && (((a)localObject1).cB == -1) && (((a)localObject1).bY == -1) && (((a)localObject1).width != -1) && (((a)localObject1).height != -1)) {
        for (;;)
        {
          i5 += 1;
          break;
          if (!bool) {
            break label1042;
          }
          try
          {
            String str = getResources().getResourceName(((View)localObject3).getId());
            c(str, Integer.valueOf(((View)localObject3).getId()));
            str = str.substring(str.indexOf("id/") + 3);
            d(((View)localObject3).getId()).gT = str;
          }
          catch (Resources.NotFoundException localNotFoundException2) {}
          break label1042;
          if (j != -1) {
            ((android.support.constraint.a.a.f)localObject2).m(j);
          } else if (i != -1) {
            ((android.support.constraint.a.a.f)localObject2).n(i);
          }
        }
      }
      m = ((a)localObject1).cK;
      k = ((a)localObject1).cL;
      i3 = ((a)localObject1).cM;
      i2 = ((a)localObject1).cN;
      i4 = ((a)localObject1).cO;
      i1 = ((a)localObject1).cP;
      f2 = ((a)localObject1).cQ;
      if (Build.VERSION.SDK_INT < 17)
      {
        k = ((a)localObject1).bP;
        m = ((a)localObject1).bQ;
        i7 = ((a)localObject1).bR;
        i8 = ((a)localObject1).bS;
        i6 = ((a)localObject1).cf;
        n = ((a)localObject1).ch;
        f1 = ((a)localObject1).cl;
        i = m;
        j = k;
        if (k == -1)
        {
          i = m;
          j = k;
          if (m == -1)
          {
            if (((a)localObject1).cc == -1) {
              break label2133;
            }
            j = ((a)localObject1).cc;
            i = m;
          }
        }
        label1614:
        f2 = f1;
        i1 = n;
        i2 = i8;
        i3 = i7;
        i4 = i6;
        k = i;
        m = j;
        if (i7 == -1)
        {
          f2 = f1;
          i1 = n;
          i2 = i8;
          i3 = i7;
          i4 = i6;
          k = i;
          m = j;
          if (i8 == -1)
          {
            if (((a)localObject1).cd != -1)
            {
              i2 = ((a)localObject1).cd;
              i1 = i8;
              i4 = i6;
              label1704:
              if (((a)localObject1).bY == -1) {
                break label2218;
              }
              localObject3 = d(((a)localObject1).bY);
              if (localObject3 != null)
              {
                f1 = ((a)localObject1).ca;
                i = ((a)localObject1).bZ;
                ((android.support.constraint.a.a.d)localObject2).a(c.c.fS, (android.support.constraint.a.a.d)localObject3, c.c.fS, i, 0);
                ((android.support.constraint.a.a.d)localObject2).gn = f1;
              }
              if ((bool) && ((((a)localObject1).cA != -1) || (((a)localObject1).cB != -1))) {
                ((android.support.constraint.a.a.d)localObject2).a(((a)localObject1).cA, ((a)localObject1).cB);
              }
              if (((a)localObject1).cE) {
                break label2779;
              }
              if (((a)localObject1).width != -1) {
                break label2762;
              }
              ((android.support.constraint.a.a.d)localObject2).j(d.a.hk);
              ((android.support.constraint.a.a.d)localObject2).a(c.c.fN).fy = ((a)localObject1).leftMargin;
              ((android.support.constraint.a.a.d)localObject2).a(c.c.fP).fy = ((a)localObject1).rightMargin;
              label1859:
              if (((a)localObject1).cF) {
                break label2817;
              }
              if (((a)localObject1).height != -1) {
                break label2800;
              }
              ((android.support.constraint.a.a.d)localObject2).k(d.a.hk);
              ((android.support.constraint.a.a.d)localObject2).a(c.c.fO).fy = ((a)localObject1).topMargin;
              ((android.support.constraint.a.a.d)localObject2).a(c.c.fQ).fy = ((a)localObject1).bottomMargin;
            }
            for (;;)
            {
              if (((a)localObject1).cn != null) {
                ((android.support.constraint.a.a.d)localObject2).q(((a)localObject1).cn);
              }
              f1 = ((a)localObject1).horizontalWeight;
              ((android.support.constraint.a.a.d)localObject2).hb[0] = f1;
              f1 = ((a)localObject1).verticalWeight;
              ((android.support.constraint.a.a.d)localObject2).hb[1] = f1;
              ((android.support.constraint.a.a.d)localObject2).gX = ((a)localObject1).cq;
              ((android.support.constraint.a.a.d)localObject2).gY = ((a)localObject1).cr;
              i = ((a)localObject1).cs;
              j = ((a)localObject1).cu;
              k = ((a)localObject1).cw;
              f1 = ((a)localObject1).cy;
              ((android.support.constraint.a.a.d)localObject2).ga = i;
              ((android.support.constraint.a.a.d)localObject2).gc = j;
              ((android.support.constraint.a.a.d)localObject2).gd = k;
              ((android.support.constraint.a.a.d)localObject2).ge = f1;
              if ((f1 < 1.0F) && (((android.support.constraint.a.a.d)localObject2).ga == 0)) {
                ((android.support.constraint.a.a.d)localObject2).ga = 2;
              }
              i = ((a)localObject1).ct;
              j = ((a)localObject1).cv;
              k = ((a)localObject1).cx;
              f1 = ((a)localObject1).cz;
              ((android.support.constraint.a.a.d)localObject2).gb = i;
              ((android.support.constraint.a.a.d)localObject2).gf = j;
              ((android.support.constraint.a.a.d)localObject2).gg = k;
              ((android.support.constraint.a.a.d)localObject2).gh = f1;
              if ((f1 >= 1.0F) || (((android.support.constraint.a.a.d)localObject2).gb != 0)) {
                break;
              }
              ((android.support.constraint.a.a.d)localObject2).gb = 2;
              break;
              label2133:
              i = m;
              j = k;
              if (((a)localObject1).cb == -1) {
                break label1614;
              }
              i = ((a)localObject1).cb;
              j = k;
              break label1614;
              f2 = f1;
              i1 = n;
              i2 = i8;
              i3 = i7;
              i4 = i6;
              k = i;
              m = j;
              if (((a)localObject1).ce == -1) {
                break label5907;
              }
              i1 = ((a)localObject1).ce;
              i2 = i7;
              i4 = i6;
              break label1704;
              label2218:
              if (j != -1)
              {
                localObject3 = d(j);
                if (localObject3 != null) {
                  ((android.support.constraint.a.a.d)localObject2).a(c.c.fN, (android.support.constraint.a.a.d)localObject3, c.c.fN, ((a)localObject1).leftMargin, i4);
                }
                label2257:
                if (i2 == -1) {
                  break label2618;
                }
                localObject3 = d(i2);
                if (localObject3 != null) {
                  ((android.support.constraint.a.a.d)localObject2).a(c.c.fP, (android.support.constraint.a.a.d)localObject3, c.c.fN, ((a)localObject1).rightMargin, n);
                }
                label2296:
                if (((a)localObject1).bT == -1) {
                  break label2660;
                }
                localObject3 = d(((a)localObject1).bT);
                if (localObject3 != null) {
                  ((android.support.constraint.a.a.d)localObject2).a(c.c.fO, (android.support.constraint.a.a.d)localObject3, c.c.fO, ((a)localObject1).topMargin, ((a)localObject1).cg);
                }
                label2344:
                if (((a)localObject1).bV == -1) {
                  break label2711;
                }
                localObject3 = d(((a)localObject1).bV);
                if (localObject3 != null) {
                  ((android.support.constraint.a.a.d)localObject2).a(c.c.fQ, (android.support.constraint.a.a.d)localObject3, c.c.fO, ((a)localObject1).bottomMargin, ((a)localObject1).ci);
                }
              }
              for (;;)
              {
                if (((a)localObject1).bX != -1)
                {
                  localObject4 = (View)this.bs.get(((a)localObject1).bX);
                  localObject3 = d(((a)localObject1).bX);
                  if ((localObject3 != null) && (localObject4 != null) && ((((View)localObject4).getLayoutParams() instanceof a)))
                  {
                    localObject4 = (a)((View)localObject4).getLayoutParams();
                    ((a)localObject1).cG = true;
                    ((a)localObject4).cG = true;
                    ((android.support.constraint.a.a.d)localObject2).a(c.c.fR).a(((android.support.constraint.a.a.d)localObject3).a(c.c.fR), 0, -1, c.b.fJ, 0, true);
                    ((android.support.constraint.a.a.d)localObject2).a(c.c.fO).reset();
                    ((android.support.constraint.a.a.d)localObject2).a(c.c.fQ).reset();
                  }
                }
                if ((f1 >= 0.0F) && (f1 != 0.5F)) {
                  ((android.support.constraint.a.a.d)localObject2).gO = f1;
                }
                if ((((a)localObject1).cm < 0.0F) || (((a)localObject1).cm == 0.5F)) {
                  break;
                }
                ((android.support.constraint.a.a.d)localObject2).gP = ((a)localObject1).cm;
                break;
                if (i == -1) {
                  break label2257;
                }
                localObject3 = d(i);
                if (localObject3 == null) {
                  break label2257;
                }
                ((android.support.constraint.a.a.d)localObject2).a(c.c.fN, (android.support.constraint.a.a.d)localObject3, c.c.fP, ((a)localObject1).leftMargin, i4);
                break label2257;
                label2618:
                if (i1 == -1) {
                  break label2296;
                }
                localObject3 = d(i1);
                if (localObject3 == null) {
                  break label2296;
                }
                ((android.support.constraint.a.a.d)localObject2).a(c.c.fP, (android.support.constraint.a.a.d)localObject3, c.c.fP, ((a)localObject1).rightMargin, n);
                break label2296;
                label2660:
                if (((a)localObject1).bU == -1) {
                  break label2344;
                }
                localObject3 = d(((a)localObject1).bU);
                if (localObject3 == null) {
                  break label2344;
                }
                ((android.support.constraint.a.a.d)localObject2).a(c.c.fO, (android.support.constraint.a.a.d)localObject3, c.c.fQ, ((a)localObject1).topMargin, ((a)localObject1).cg);
                break label2344;
                label2711:
                if (((a)localObject1).bW != -1)
                {
                  localObject3 = d(((a)localObject1).bW);
                  if (localObject3 != null) {
                    ((android.support.constraint.a.a.d)localObject2).a(c.c.fQ, (android.support.constraint.a.a.d)localObject3, c.c.fQ, ((a)localObject1).bottomMargin, ((a)localObject1).ci);
                  }
                }
              }
              label2762:
              ((android.support.constraint.a.a.d)localObject2).j(d.a.hj);
              ((android.support.constraint.a.a.d)localObject2).setWidth(0);
              break label1859;
              label2779:
              ((android.support.constraint.a.a.d)localObject2).j(d.a.hh);
              ((android.support.constraint.a.a.d)localObject2).setWidth(((a)localObject1).width);
              break label1859;
              label2800:
              ((android.support.constraint.a.a.d)localObject2).k(d.a.hj);
              ((android.support.constraint.a.a.d)localObject2).setHeight(0);
              continue;
              label2817:
              ((android.support.constraint.a.a.d)localObject2).k(d.a.hh);
              ((android.support.constraint.a.a.d)localObject2).setHeight(((a)localObject1).height);
            }
          }
        }
      }
    }
    else
    {
      label2838:
      if ((this.bB & 0x8) == 8) {
        i4 = 1;
      }
      while (i4 != 0)
      {
        localObject1 = this.bv;
        ((android.support.constraint.a.a.e)localObject1).aS();
        ((android.support.constraint.a.a.e)localObject1).i(((android.support.constraint.a.a.e)localObject1).bB);
        this.bv.e(i9, i10);
        i8 = getPaddingTop() + getPaddingBottom();
        i13 = getPaddingLeft() + getPaddingRight();
        int i14 = getChildCount();
        i = 0;
        for (;;)
        {
          if (i < i14)
          {
            localObject1 = getChildAt(i);
            if (((View)localObject1).getVisibility() != 8)
            {
              localObject2 = (a)((View)localObject1).getLayoutParams();
              localObject3 = ((a)localObject2).cU;
              if ((!((a)localObject2).cH) && (!((a)localObject2).cI))
              {
                ((android.support.constraint.a.a.d)localObject3).gS = ((View)localObject1).getVisibility();
                m = ((a)localObject2).width;
                n = ((a)localObject2).height;
                if ((m != 0) && (n != 0)) {
                  break label3044;
                }
                ((android.support.constraint.a.a.d)localObject3).aC().invalidate();
                ((android.support.constraint.a.a.d)localObject3).aD().invalidate();
              }
            }
            i += 1;
            continue;
            i4 = 0;
            break;
            label3044:
            j = 0;
            k = 0;
            if (m == -2) {
              j = 1;
            }
            i1 = getChildMeasureSpec(paramInt1, i13, m);
            if (n == -2) {
              k = 1;
            }
            ((View)localObject1).measure(i1, getChildMeasureSpec(paramInt2, i8, n));
            if (this.bL != null)
            {
              localObject4 = this.bL;
              ((android.support.constraint.a.f)localObject4).es += 1L;
            }
            if (m == -2)
            {
              bool = true;
              label3130:
              ((android.support.constraint.a.a.d)localObject3).gi = bool;
              if (n != -2) {
                break label3279;
              }
            }
            label3279:
            for (bool = true;; bool = false)
            {
              ((android.support.constraint.a.a.d)localObject3).gj = bool;
              m = ((View)localObject1).getMeasuredWidth();
              n = ((View)localObject1).getMeasuredHeight();
              ((android.support.constraint.a.a.d)localObject3).setWidth(m);
              ((android.support.constraint.a.a.d)localObject3).setHeight(n);
              if (j != 0) {
                ((android.support.constraint.a.a.d)localObject3).gL = m;
              }
              if (k != 0) {
                ((android.support.constraint.a.a.d)localObject3).gM = n;
              }
              if (((a)localObject2).cG)
              {
                j = ((View)localObject1).getBaseline();
                if (j != -1) {
                  ((android.support.constraint.a.a.d)localObject3).gK = j;
                }
              }
              if ((!((a)localObject2).cE) || (!((a)localObject2).cF)) {
                break;
              }
              ((android.support.constraint.a.a.d)localObject3).aC().p(m);
              ((android.support.constraint.a.a.d)localObject3).aD().p(n);
              break;
              bool = false;
              break label3130;
            }
          }
        }
        this.bv.aR();
        i5 = 0;
        if (i5 >= i14) {
          break label4631;
        }
        localObject1 = getChildAt(i5);
        if (((View)localObject1).getVisibility() != 8)
        {
          localObject2 = (a)((View)localObject1).getLayoutParams();
          localObject3 = ((a)localObject2).cU;
          if ((!((a)localObject2).cH) && (!((a)localObject2).cI))
          {
            ((android.support.constraint.a.a.d)localObject3).gS = ((View)localObject1).getVisibility();
            n = ((a)localObject2).width;
            m = ((a)localObject2).height;
            if ((n == 0) || (m == 0))
            {
              localObject4 = ((android.support.constraint.a.a.d)localObject3).a(c.c.fN).fu;
              j localj1 = ((android.support.constraint.a.a.d)localObject3).a(c.c.fP).fu;
              if ((((android.support.constraint.a.a.d)localObject3).a(c.c.fN).fx == null) || (((android.support.constraint.a.a.d)localObject3).a(c.c.fP).fx == null)) {
                break label3941;
              }
              k = 1;
              label3444:
              j localj2 = ((android.support.constraint.a.a.d)localObject3).a(c.c.fO).fu;
              j localj3 = ((android.support.constraint.a.a.d)localObject3).a(c.c.fQ).fu;
              if ((((android.support.constraint.a.a.d)localObject3).a(c.c.fO).fx == null) || (((android.support.constraint.a.a.d)localObject3).a(c.c.fQ).fx == null)) {
                break label3947;
              }
              i6 = 1;
              label3501:
              if ((n != 0) || (m != 0) || (k == 0) || (i6 == 0))
              {
                i7 = 0;
                if (this.bv.aM() == d.a.hi) {
                  break label3953;
                }
                j = 1;
                label3540:
                if (this.bv.aN() == d.a.hi) {
                  break label3959;
                }
                i = 1;
                label3556:
                if (j == 0) {
                  ((android.support.constraint.a.a.d)localObject3).aC().invalidate();
                }
                if (i == 0) {
                  ((android.support.constraint.a.a.d)localObject3).aD().invalidate();
                }
                if (n != 0) {
                  break label3992;
                }
                if ((j == 0) || (!((android.support.constraint.a.a.d)localObject3).az()) || (k == 0) || (!((j)localObject4).aV()) || (!localj1.aV())) {
                  break label3965;
                }
                n = (int)(localj1.hQ - ((j)localObject4).hQ);
                ((android.support.constraint.a.a.d)localObject3).aC().p(n);
                k = 0;
                label3648:
                i3 = getChildMeasureSpec(paramInt1, i13, n);
                i2 = n;
                i1 = k;
                n = j;
                label3670:
                if (m != 0) {
                  break label4053;
                }
                if ((i == 0) || (!((android.support.constraint.a.a.d)localObject3).aA()) || (i6 == 0) || (!localj2.aV()) || (!localj3.aV())) {
                  break label4034;
                }
                k = (int)(localj3.hQ - localj2.hQ);
                ((android.support.constraint.a.a.d)localObject3).aD().p(k);
                j = 0;
                label3736:
                i6 = getChildMeasureSpec(paramInt2, i8, k);
                m = k;
                k = i6;
                label3754:
                ((View)localObject1).measure(i3, k);
                if (this.bL != null)
                {
                  localObject4 = this.bL;
                  ((android.support.constraint.a.f)localObject4).es += 1L;
                }
                if (i2 != -2) {
                  break label4092;
                }
                bool = true;
                label3798:
                ((android.support.constraint.a.a.d)localObject3).gi = bool;
                if (m != -2) {
                  break label4098;
                }
                bool = true;
                label3815:
                ((android.support.constraint.a.a.d)localObject3).gj = bool;
                k = ((View)localObject1).getMeasuredWidth();
                m = ((View)localObject1).getMeasuredHeight();
                ((android.support.constraint.a.a.d)localObject3).setWidth(k);
                ((android.support.constraint.a.a.d)localObject3).setHeight(m);
                if (i1 != 0) {
                  ((android.support.constraint.a.a.d)localObject3).gL = k;
                }
                if (j != 0) {
                  ((android.support.constraint.a.a.d)localObject3).gM = m;
                }
                if (n == 0) {
                  break label4104;
                }
                ((android.support.constraint.a.a.d)localObject3).aC().p(k);
                label3889:
                if (i == 0) {
                  break label4116;
                }
                ((android.support.constraint.a.a.d)localObject3).aD().p(m);
              }
            }
          }
        }
        for (;;)
        {
          if (((a)localObject2).cG)
          {
            i = ((View)localObject1).getBaseline();
            if (i != -1) {
              ((android.support.constraint.a.a.d)localObject3).gK = i;
            }
          }
          i5 += 1;
          break;
          label3941:
          k = 0;
          break label3444;
          label3947:
          i6 = 0;
          break label3501;
          label3953:
          j = 0;
          break label3540;
          label3959:
          i = 0;
          break label3556;
          label3965:
          i3 = getChildMeasureSpec(paramInt1, i13, -2);
          j = 0;
          i1 = 1;
          i2 = n;
          n = j;
          break label3670;
          label3992:
          if (n == -1)
          {
            i3 = getChildMeasureSpec(paramInt1, i13, -1);
            i1 = 0;
            i2 = n;
            n = j;
            break label3670;
          }
          if (n != -2) {
            break label5901;
          }
          k = 1;
          break label3648;
          label4034:
          k = getChildMeasureSpec(paramInt2, i8, -2);
          j = 1;
          i = 0;
          break label3754;
          label4053:
          if (m == -1)
          {
            k = getChildMeasureSpec(paramInt2, i8, -1);
            j = i7;
            break label3754;
          }
          if (m != -2) {
            break label5891;
          }
          j = 1;
          k = m;
          break label3736;
          label4092:
          bool = false;
          break label3798;
          label4098:
          bool = false;
          break label3815;
          label4104:
          ((android.support.constraint.a.a.d)localObject3).aC().state = 2;
          break label3889;
          label4116:
          ((android.support.constraint.a.a.d)localObject3).aD().state = 2;
        }
      }
      i3 = getPaddingTop() + getPaddingBottom();
      i5 = getPaddingLeft() + getPaddingRight();
      i6 = getChildCount();
      n = 0;
      if (n < i6)
      {
        localObject1 = getChildAt(n);
        if (((View)localObject1).getVisibility() != 8)
        {
          localObject2 = (a)((View)localObject1).getLayoutParams();
          localObject3 = ((a)localObject2).cU;
          if ((!((a)localObject2).cH) && (!((a)localObject2).cI))
          {
            ((android.support.constraint.a.a.d)localObject3).gS = ((View)localObject1).getVisibility();
            i1 = ((a)localObject2).width;
            i2 = ((a)localObject2).height;
            if ((!((a)localObject2).cE) && (!((a)localObject2).cF) && ((((a)localObject2).cE) || (((a)localObject2).cs != 1)) && (((a)localObject2).width != -1) && ((((a)localObject2).cF) || ((((a)localObject2).ct != 1) && (((a)localObject2).height != -1)))) {
              break label4521;
            }
            i = 1;
            label4312:
            j = 0;
            if (i == 0) {
              break label5874;
            }
            if (i1 != 0) {
              break label4527;
            }
            k = getChildMeasureSpec(paramInt1, i5, -2);
            i = 1;
            label4338:
            if (i2 != 0) {
              break label4575;
            }
            m = getChildMeasureSpec(paramInt2, i3, -2);
            j = 1;
            label4356:
            ((View)localObject1).measure(k, m);
            if (this.bL != null)
            {
              localObject4 = this.bL;
              ((android.support.constraint.a.f)localObject4).es += 1L;
            }
            if (i1 != -2) {
              break label4619;
            }
            bool = true;
            label4400:
            ((android.support.constraint.a.a.d)localObject3).gi = bool;
            if (i2 != -2) {
              break label4625;
            }
          }
        }
        label4521:
        label4527:
        label4575:
        label4619:
        label4625:
        for (bool = true;; bool = false)
        {
          ((android.support.constraint.a.a.d)localObject3).gj = bool;
          k = ((View)localObject1).getMeasuredWidth();
          i1 = ((View)localObject1).getMeasuredHeight();
          m = i;
          i = i1;
          ((android.support.constraint.a.a.d)localObject3).setWidth(k);
          ((android.support.constraint.a.a.d)localObject3).setHeight(i);
          if (m != 0) {
            ((android.support.constraint.a.a.d)localObject3).gL = k;
          }
          if (j != 0) {
            ((android.support.constraint.a.a.d)localObject3).gM = i;
          }
          if (((a)localObject2).cG)
          {
            i = ((View)localObject1).getBaseline();
            if (i != -1) {
              ((android.support.constraint.a.a.d)localObject3).gK = i;
            }
          }
          n += 1;
          break;
          i = 0;
          break label4312;
          if (i1 == -1)
          {
            k = getChildMeasureSpec(paramInt1, i5, -1);
            i = 0;
            break label4338;
          }
          i = j;
          if (i1 == -2) {
            i = 1;
          }
          k = getChildMeasureSpec(paramInt1, i5, i1);
          break label4338;
          if (i2 == -1)
          {
            m = getChildMeasureSpec(paramInt2, i3, -1);
            j = 0;
            break label4356;
          }
          if (i2 != -2) {
            break label5868;
          }
          j = 1;
          m = getChildMeasureSpec(paramInt2, i3, i2);
          break label4356;
          bool = false;
          break label4400;
        }
      }
      else
      {
        label4631:
        j = getChildCount();
        i = 0;
        while (i < j)
        {
          localObject1 = getChildAt(i);
          if ((localObject1 instanceof f))
          {
            localObject2 = (f)localObject1;
            if (((f)localObject2).dG != null)
            {
              localObject1 = (a)((f)localObject2).getLayoutParams();
              localObject2 = (a)((f)localObject2).dG.getLayoutParams();
              ((a)localObject2).cU.gS = 0;
              ((a)localObject1).cU.setWidth(((a)localObject2).cU.getWidth());
              ((a)localObject1).cU.setHeight(((a)localObject2).cU.getHeight());
              ((a)localObject2).cU.gS = 8;
            }
          }
          i += 1;
        }
        j = this.bt.size();
        if (j > 0)
        {
          i = 0;
          while (i < j)
          {
            this.bt.get(i);
            i += 1;
          }
        }
        if (getChildCount() > 0) {
          ai();
        }
        j = 0;
        i = 0;
        i6 = this.bu.size();
        i7 = i12 + getPaddingBottom();
        i8 = i11 + getPaddingRight();
        if (i6 > 0)
        {
          m = 0;
          if (this.bv.aM() == d.a.hi)
          {
            i1 = 1;
            if (this.bv.aN() != d.a.hi) {
              break label5384;
            }
            i2 = 1;
            label4888:
            j = Math.max(this.bv.getWidth(), this.bw);
            k = Math.max(this.bv.getHeight(), this.bx);
            i3 = 0;
            label4923:
            if (i3 >= i6) {
              break label5422;
            }
            localObject1 = (android.support.constraint.a.a.d)this.bu.get(i3);
            localObject2 = (View)((android.support.constraint.a.a.d)localObject1).gQ;
            if (localObject2 == null) {
              break label5861;
            }
            localObject3 = (a)((View)localObject2).getLayoutParams();
            if ((((a)localObject3).cI) || (((a)localObject3).cH) || (((View)localObject2).getVisibility() == 8) || ((i4 != 0) && (((android.support.constraint.a.a.d)localObject1).aC().aV()) && (((android.support.constraint.a.a.d)localObject1).aD().aV()))) {
              break label5861;
            }
            if ((((a)localObject3).width != -2) || (!((a)localObject3).cE)) {
              break label5390;
            }
            n = getChildMeasureSpec(paramInt1, i8, ((a)localObject3).width);
            label5053:
            if ((((a)localObject3).height != -2) || (!((a)localObject3).cF)) {
              break label5406;
            }
          }
          label5384:
          label5390:
          label5406:
          for (i5 = getChildMeasureSpec(paramInt2, i7, ((a)localObject3).height);; i5 = View.MeasureSpec.makeMeasureSpec(((android.support.constraint.a.a.d)localObject1).getHeight(), 1073741824))
          {
            ((View)localObject2).measure(n, i5);
            if (this.bL != null)
            {
              localObject4 = this.bL;
              ((android.support.constraint.a.f)localObject4).et += 1L;
            }
            n = ((View)localObject2).getMeasuredWidth();
            i5 = ((View)localObject2).getMeasuredHeight();
            if (n == ((android.support.constraint.a.a.d)localObject1).getWidth()) {
              break label5846;
            }
            ((android.support.constraint.a.a.d)localObject1).setWidth(n);
            if (i4 != 0) {
              ((android.support.constraint.a.a.d)localObject1).aC().p(n);
            }
            if ((i1 == 0) || (((android.support.constraint.a.a.d)localObject1).getRight() <= j)) {
              break label5839;
            }
            m = Math.max(j, ((android.support.constraint.a.a.d)localObject1).getRight() + ((android.support.constraint.a.a.d)localObject1).a(c.c.fP).ay());
            j = 1;
            if (i5 == ((android.support.constraint.a.a.d)localObject1).getHeight()) {
              break label5832;
            }
            ((android.support.constraint.a.a.d)localObject1).setHeight(i5);
            if (i4 != 0) {
              ((android.support.constraint.a.a.d)localObject1).aD().p(i5);
            }
            if ((i2 == 0) || (((android.support.constraint.a.a.d)localObject1).getBottom() <= k)) {
              break label5825;
            }
            j = Math.max(k, ((android.support.constraint.a.a.d)localObject1).getBottom() + ((android.support.constraint.a.a.d)localObject1).a(c.c.fQ).ay());
            n = 1;
            k = j;
            j = n;
            if (((a)localObject3).cG)
            {
              i5 = ((View)localObject2).getBaseline();
              j = n;
              if (i5 != -1)
              {
                j = n;
                if (i5 != ((android.support.constraint.a.a.d)localObject1).gK)
                {
                  ((android.support.constraint.a.a.d)localObject1).gK = i5;
                  j = 1;
                }
              }
            }
            if (Build.VERSION.SDK_INT < 11) {
              break label5814;
            }
            i = combineMeasuredStates(i, ((View)localObject2).getMeasuredState());
            n = j;
            j = m;
            i3 += 1;
            m = n;
            break label4923;
            i1 = 0;
            break;
            i2 = 0;
            break label4888;
            n = View.MeasureSpec.makeMeasureSpec(((android.support.constraint.a.a.d)localObject1).getWidth(), 1073741824);
            break label5053;
          }
          label5422:
          if (m != 0)
          {
            this.bv.setWidth(i9);
            this.bv.setHeight(i10);
            if (i4 != 0) {
              this.bv.aR();
            }
            ai();
            m = 0;
            if (this.bv.getWidth() < j)
            {
              this.bv.setWidth(j);
              m = 1;
            }
            if (this.bv.getHeight() < k)
            {
              this.bv.setHeight(k);
              m = 1;
            }
            if (m != 0) {
              ai();
            }
          }
          k = 0;
          for (;;)
          {
            j = i;
            if (k >= i6) {
              break;
            }
            localObject1 = (android.support.constraint.a.a.d)this.bu.get(k);
            localObject2 = (View)((android.support.constraint.a.a.d)localObject1).gQ;
            if ((localObject2 != null) && ((((View)localObject2).getMeasuredWidth() != ((android.support.constraint.a.a.d)localObject1).getWidth()) || (((View)localObject2).getMeasuredHeight() != ((android.support.constraint.a.a.d)localObject1).getHeight())))
            {
              ((View)localObject2).measure(View.MeasureSpec.makeMeasureSpec(((android.support.constraint.a.a.d)localObject1).getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(((android.support.constraint.a.a.d)localObject1).getHeight(), 1073741824));
              if (this.bL != null)
              {
                localObject1 = this.bL;
                ((android.support.constraint.a.f)localObject1).et += 1L;
              }
            }
            k += 1;
          }
        }
        else
        {
          i = this.bv.getWidth() + i8;
          k = this.bv.getHeight() + i7;
          if (Build.VERSION.SDK_INT >= 11)
          {
            paramInt1 = resolveSizeAndState(i, paramInt1, j);
            i = resolveSizeAndState(k, paramInt2, j << 16);
            paramInt2 = Math.min(this.by, paramInt1 & 0xFFFFFF);
            i = Math.min(this.bz, i & 0xFFFFFF);
            paramInt1 = paramInt2;
            if (this.bv.hx) {
              paramInt1 = paramInt2 | 0x1000000;
            }
            paramInt2 = i;
            if (this.bv.hy) {
              paramInt2 = i | 0x1000000;
            }
            setMeasuredDimension(paramInt1, paramInt2);
            this.bF = paramInt1;
            this.bG = paramInt2;
            return;
          }
          setMeasuredDimension(i, k);
          this.bF = i;
          this.bG = k;
          return;
        }
      }
    }
  }
  
  public void onViewAdded(View paramView)
  {
    if (Build.VERSION.SDK_INT >= 14) {
      super.onViewAdded(paramView);
    }
    Object localObject = a(paramView);
    if (((paramView instanceof e)) && (!(localObject instanceof android.support.constraint.a.a.f)))
    {
      localObject = (a)paramView.getLayoutParams();
      ((a)localObject).cU = new android.support.constraint.a.a.f();
      ((a)localObject).cH = true;
      ((android.support.constraint.a.a.f)((a)localObject).cU).setOrientation(((a)localObject).orientation);
    }
    if ((paramView instanceof b))
    {
      localObject = (b)paramView;
      ((b)localObject).ah();
      ((a)paramView.getLayoutParams()).cI = true;
      if (!this.bt.contains(localObject)) {
        this.bt.add(localObject);
      }
    }
    this.bs.put(paramView.getId(), paramView);
    this.bA = true;
  }
  
  public void onViewRemoved(View paramView)
  {
    if (Build.VERSION.SDK_INT >= 14) {
      super.onViewRemoved(paramView);
    }
    this.bs.remove(paramView.getId());
    android.support.constraint.a.a.d locald = a(paramView);
    this.bv.c(locald);
    this.bt.remove(paramView);
    this.bu.remove(locald);
    this.bA = true;
  }
  
  public void removeView(View paramView)
  {
    super.removeView(paramView);
    if (Build.VERSION.SDK_INT < 14) {
      onViewRemoved(paramView);
    }
  }
  
  public void requestLayout()
  {
    super.requestLayout();
    this.bA = true;
    this.bF = -1;
    this.bG = -1;
    this.bH = -1;
    this.bI = -1;
    this.bJ = 0;
    this.bK = 0;
  }
  
  public void setConstraintSet(c paramc)
  {
    this.bC = paramc;
  }
  
  public void setId(int paramInt)
  {
    this.bs.remove(getId());
    super.setId(paramInt);
    this.bs.put(getId(), this);
  }
  
  public void setMaxHeight(int paramInt)
  {
    if (paramInt == this.bz) {
      return;
    }
    this.bz = paramInt;
    requestLayout();
  }
  
  public void setMaxWidth(int paramInt)
  {
    if (paramInt == this.by) {
      return;
    }
    this.by = paramInt;
    requestLayout();
  }
  
  public void setMinHeight(int paramInt)
  {
    if (paramInt == this.bx) {
      return;
    }
    this.bx = paramInt;
    requestLayout();
  }
  
  public void setMinWidth(int paramInt)
  {
    if (paramInt == this.bw) {
      return;
    }
    this.bw = paramInt;
    requestLayout();
  }
  
  public void setOptimizationLevel(int paramInt)
  {
    this.bv.bB = paramInt;
  }
  
  public boolean shouldDelayChildPressedState()
  {
    return false;
  }
  
  public static class a
    extends ViewGroup.MarginLayoutParams
  {
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
    public int cA = -1;
    public int cB = -1;
    public boolean cC = false;
    public boolean cD = false;
    boolean cE = true;
    boolean cF = true;
    boolean cG = false;
    boolean cH = false;
    boolean cI = false;
    boolean cJ = false;
    int cK = -1;
    int cL = -1;
    int cM = -1;
    int cN = -1;
    int cO = -1;
    int cP = -1;
    float cQ = 0.5F;
    int cR;
    int cS;
    float cT;
    android.support.constraint.a.a.d cU = new android.support.constraint.a.a.d();
    public boolean cV = false;
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
    float co = 0.0F;
    int cp = 1;
    public int cq = 0;
    public int cr = 0;
    public int cs = 0;
    public int ct = 0;
    public int cu = 0;
    public int cv = 0;
    public int cw = 0;
    public int cx = 0;
    public float cy = 1.0F;
    public float cz = 1.0F;
    public float horizontalWeight = 0.0F;
    public int orientation = -1;
    public float verticalWeight = 0.0F;
    
    public a()
    {
      super(-2);
    }
    
    public a(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
      paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, g.b.ConstraintLayout_Layout);
      int k = paramContext.getIndexCount();
      int i = 0;
      if (i < k)
      {
        int j = paramContext.getIndex(i);
        switch (a.cW.get(j))
        {
        }
        for (;;)
        {
          i += 1;
          break;
          this.bP = paramContext.getResourceId(j, this.bP);
          if (this.bP == -1)
          {
            this.bP = paramContext.getInt(j, -1);
            continue;
            this.bQ = paramContext.getResourceId(j, this.bQ);
            if (this.bQ == -1)
            {
              this.bQ = paramContext.getInt(j, -1);
              continue;
              this.bR = paramContext.getResourceId(j, this.bR);
              if (this.bR == -1)
              {
                this.bR = paramContext.getInt(j, -1);
                continue;
                this.bS = paramContext.getResourceId(j, this.bS);
                if (this.bS == -1)
                {
                  this.bS = paramContext.getInt(j, -1);
                  continue;
                  this.bT = paramContext.getResourceId(j, this.bT);
                  if (this.bT == -1)
                  {
                    this.bT = paramContext.getInt(j, -1);
                    continue;
                    this.bU = paramContext.getResourceId(j, this.bU);
                    if (this.bU == -1)
                    {
                      this.bU = paramContext.getInt(j, -1);
                      continue;
                      this.bV = paramContext.getResourceId(j, this.bV);
                      if (this.bV == -1)
                      {
                        this.bV = paramContext.getInt(j, -1);
                        continue;
                        this.bW = paramContext.getResourceId(j, this.bW);
                        if (this.bW == -1)
                        {
                          this.bW = paramContext.getInt(j, -1);
                          continue;
                          this.bX = paramContext.getResourceId(j, this.bX);
                          if (this.bX == -1)
                          {
                            this.bX = paramContext.getInt(j, -1);
                            continue;
                            this.bY = paramContext.getResourceId(j, this.bY);
                            if (this.bY == -1)
                            {
                              this.bY = paramContext.getInt(j, -1);
                              continue;
                              this.bZ = paramContext.getDimensionPixelSize(j, this.bZ);
                              continue;
                              this.ca = (paramContext.getFloat(j, this.ca) % 360.0F);
                              if (this.ca < 0.0F)
                              {
                                this.ca = ((360.0F - this.ca) % 360.0F);
                                continue;
                                this.cA = paramContext.getDimensionPixelOffset(j, this.cA);
                                continue;
                                this.cB = paramContext.getDimensionPixelOffset(j, this.cB);
                                continue;
                                this.bM = paramContext.getDimensionPixelOffset(j, this.bM);
                                continue;
                                this.bN = paramContext.getDimensionPixelOffset(j, this.bN);
                                continue;
                                this.bO = paramContext.getFloat(j, this.bO);
                                continue;
                                this.orientation = paramContext.getInt(j, this.orientation);
                                continue;
                                this.cb = paramContext.getResourceId(j, this.cb);
                                if (this.cb == -1)
                                {
                                  this.cb = paramContext.getInt(j, -1);
                                  continue;
                                  this.cc = paramContext.getResourceId(j, this.cc);
                                  if (this.cc == -1)
                                  {
                                    this.cc = paramContext.getInt(j, -1);
                                    continue;
                                    this.cd = paramContext.getResourceId(j, this.cd);
                                    if (this.cd == -1)
                                    {
                                      this.cd = paramContext.getInt(j, -1);
                                      continue;
                                      this.ce = paramContext.getResourceId(j, this.ce);
                                      if (this.ce == -1)
                                      {
                                        this.ce = paramContext.getInt(j, -1);
                                        continue;
                                        this.cf = paramContext.getDimensionPixelSize(j, this.cf);
                                        continue;
                                        this.cg = paramContext.getDimensionPixelSize(j, this.cg);
                                        continue;
                                        this.ch = paramContext.getDimensionPixelSize(j, this.ch);
                                        continue;
                                        this.ci = paramContext.getDimensionPixelSize(j, this.ci);
                                        continue;
                                        this.cj = paramContext.getDimensionPixelSize(j, this.cj);
                                        continue;
                                        this.ck = paramContext.getDimensionPixelSize(j, this.ck);
                                        continue;
                                        this.cl = paramContext.getFloat(j, this.cl);
                                        continue;
                                        this.cm = paramContext.getFloat(j, this.cm);
                                        continue;
                                        this.cn = paramContext.getString(j);
                                        this.co = NaN.0F;
                                        this.cp = -1;
                                        if (this.cn != null)
                                        {
                                          int m = this.cn.length();
                                          j = this.cn.indexOf(',');
                                          if ((j > 0) && (j < m - 1))
                                          {
                                            paramAttributeSet = this.cn.substring(0, j);
                                            if (paramAttributeSet.equalsIgnoreCase("W"))
                                            {
                                              this.cp = 0;
                                              label1487:
                                              j += 1;
                                            }
                                          }
                                          float f1;
                                          float f2;
                                          for (;;)
                                          {
                                            int n = this.cn.indexOf(':');
                                            if ((n < 0) || (n >= m - 1)) {
                                              break label1649;
                                            }
                                            paramAttributeSet = this.cn.substring(j, n);
                                            String str = this.cn.substring(n + 1);
                                            if ((paramAttributeSet.length() <= 0) || (str.length() <= 0)) {
                                              break;
                                            }
                                            try
                                            {
                                              f1 = Float.parseFloat(paramAttributeSet);
                                              f2 = Float.parseFloat(str);
                                              if ((f1 <= 0.0F) || (f2 <= 0.0F)) {
                                                break;
                                              }
                                              if (this.cp != 1) {
                                                break label1633;
                                              }
                                              this.co = Math.abs(f2 / f1);
                                            }
                                            catch (NumberFormatException paramAttributeSet) {}
                                            break;
                                            if (!paramAttributeSet.equalsIgnoreCase("H")) {
                                              break label1487;
                                            }
                                            this.cp = 1;
                                            break label1487;
                                            j = 0;
                                          }
                                          label1633:
                                          f1 /= f2;
                                          this.co = Math.abs(f1);
                                          continue;
                                          label1649:
                                          paramAttributeSet = this.cn.substring(j);
                                          if (paramAttributeSet.length() > 0)
                                          {
                                            try
                                            {
                                              this.co = Float.parseFloat(paramAttributeSet);
                                            }
                                            catch (NumberFormatException paramAttributeSet) {}
                                            continue;
                                            this.horizontalWeight = paramContext.getFloat(j, 0.0F);
                                            continue;
                                            this.verticalWeight = paramContext.getFloat(j, 0.0F);
                                            continue;
                                            this.cq = paramContext.getInt(j, 0);
                                            continue;
                                            this.cr = paramContext.getInt(j, 0);
                                            continue;
                                            this.cC = paramContext.getBoolean(j, this.cC);
                                            continue;
                                            this.cD = paramContext.getBoolean(j, this.cD);
                                            continue;
                                            this.cs = paramContext.getInt(j, 0);
                                            if (this.cs == 1)
                                            {
                                              Log.e("ConstraintLayout", "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead.");
                                              continue;
                                              this.ct = paramContext.getInt(j, 0);
                                              if (this.ct == 1)
                                              {
                                                Log.e("ConstraintLayout", "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead.");
                                                continue;
                                                try
                                                {
                                                  this.cu = paramContext.getDimensionPixelSize(j, this.cu);
                                                }
                                                catch (Exception paramAttributeSet) {}
                                                if (paramContext.getInt(j, this.cu) == -2)
                                                {
                                                  this.cu = -2;
                                                  continue;
                                                  try
                                                  {
                                                    this.cw = paramContext.getDimensionPixelSize(j, this.cw);
                                                  }
                                                  catch (Exception paramAttributeSet) {}
                                                  if (paramContext.getInt(j, this.cw) == -2)
                                                  {
                                                    this.cw = -2;
                                                    continue;
                                                    this.cy = Math.max(0.0F, paramContext.getFloat(j, this.cy));
                                                    continue;
                                                    try
                                                    {
                                                      this.cv = paramContext.getDimensionPixelSize(j, this.cv);
                                                    }
                                                    catch (Exception paramAttributeSet) {}
                                                    if (paramContext.getInt(j, this.cv) == -2)
                                                    {
                                                      this.cv = -2;
                                                      continue;
                                                      try
                                                      {
                                                        this.cx = paramContext.getDimensionPixelSize(j, this.cx);
                                                      }
                                                      catch (Exception paramAttributeSet) {}
                                                      if (paramContext.getInt(j, this.cx) == -2)
                                                      {
                                                        this.cx = -2;
                                                        continue;
                                                        this.cz = Math.max(0.0F, paramContext.getFloat(j, this.cz));
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
      paramContext.recycle();
      ak();
    }
    
    public a(ViewGroup.LayoutParams paramLayoutParams)
    {
      super();
    }
    
    public final void ak()
    {
      this.cH = false;
      this.cE = true;
      this.cF = true;
      if ((this.width == -2) && (this.cC))
      {
        this.cE = false;
        this.cs = 1;
      }
      if ((this.height == -2) && (this.cD))
      {
        this.cF = false;
        this.ct = 1;
      }
      if ((this.width == 0) || (this.width == -1))
      {
        this.cE = false;
        if ((this.width == 0) && (this.cs == 1))
        {
          this.width = -2;
          this.cC = true;
        }
      }
      if ((this.height == 0) || (this.height == -1))
      {
        this.cF = false;
        if ((this.height == 0) && (this.ct == 1))
        {
          this.height = -2;
          this.cD = true;
        }
      }
      if ((this.bO != -1.0F) || (this.bM != -1) || (this.bN != -1))
      {
        this.cH = true;
        this.cE = true;
        this.cF = true;
        if (!(this.cU instanceof android.support.constraint.a.a.f)) {
          this.cU = new android.support.constraint.a.a.f();
        }
        ((android.support.constraint.a.a.f)this.cU).setOrientation(this.orientation);
      }
    }
    
    @TargetApi(17)
    public void resolveLayoutDirection(int paramInt)
    {
      int i = 0;
      int j = this.leftMargin;
      int k = this.rightMargin;
      super.resolveLayoutDirection(paramInt);
      this.cM = -1;
      this.cN = -1;
      this.cK = -1;
      this.cL = -1;
      this.cO = -1;
      this.cP = -1;
      this.cO = this.cf;
      this.cP = this.ch;
      this.cQ = this.cl;
      this.cR = this.bM;
      this.cS = this.bN;
      this.cT = this.bO;
      if (1 == getLayoutDirection())
      {
        paramInt = 1;
        if (paramInt == 0) {
          break label442;
        }
        if (this.cb == -1) {
          break label359;
        }
        this.cM = this.cb;
        paramInt = 1;
        label128:
        if (this.cd != -1)
        {
          this.cL = this.cd;
          paramInt = 1;
        }
        if (this.ce != -1)
        {
          this.cK = this.ce;
          paramInt = 1;
        }
        if (this.cj != -1) {
          this.cP = this.cj;
        }
        if (this.ck != -1) {
          this.cO = this.ck;
        }
        if (paramInt != 0) {
          this.cQ = (1.0F - this.cl);
        }
        if ((this.cH) && (this.orientation == 1))
        {
          if (this.bO == -1.0F) {
            break label382;
          }
          this.cT = (1.0F - this.bO);
          this.cR = -1;
          this.cS = -1;
        }
        label255:
        if ((this.cd == -1) && (this.ce == -1) && (this.cc == -1) && (this.cb == -1))
        {
          if (this.bR == -1) {
            break label541;
          }
          this.cM = this.bR;
          if ((this.rightMargin <= 0) && (k > 0)) {
            this.rightMargin = k;
          }
          label321:
          if (this.bP == -1) {
            break label578;
          }
          this.cK = this.bP;
          if ((this.leftMargin <= 0) && (j > 0)) {
            this.leftMargin = j;
          }
        }
      }
      label359:
      label382:
      label442:
      label541:
      label578:
      do
      {
        do
        {
          return;
          paramInt = 0;
          break;
          paramInt = i;
          if (this.cc == -1) {
            break label128;
          }
          this.cN = this.cc;
          paramInt = 1;
          break label128;
          if (this.bM != -1)
          {
            this.cS = this.bM;
            this.cR = -1;
            this.cT = -1.0F;
            break label255;
          }
          if (this.bN == -1) {
            break label255;
          }
          this.cR = this.bN;
          this.cS = -1;
          this.cT = -1.0F;
          break label255;
          if (this.cb != -1) {
            this.cL = this.cb;
          }
          if (this.cc != -1) {
            this.cK = this.cc;
          }
          if (this.cd != -1) {
            this.cM = this.cd;
          }
          if (this.ce != -1) {
            this.cN = this.ce;
          }
          if (this.cj != -1) {
            this.cO = this.cj;
          }
          if (this.ck == -1) {
            break label255;
          }
          this.cP = this.ck;
          break label255;
          if (this.bS == -1) {
            break label321;
          }
          this.cN = this.bS;
          if ((this.rightMargin > 0) || (k <= 0)) {
            break label321;
          }
          this.rightMargin = k;
          break label321;
        } while (this.bQ == -1);
        this.cL = this.bQ;
      } while ((this.leftMargin > 0) || (j <= 0));
      this.leftMargin = j;
    }
    
    private static final class a
    {
      public static final SparseIntArray cW;
      
      static
      {
        SparseIntArray localSparseIntArray = new SparseIntArray();
        cW = localSparseIntArray;
        localSparseIntArray.append(g.b.ConstraintLayout_Layout_layout_constraintLeft_toLeftOf, 8);
        cW.append(g.b.ConstraintLayout_Layout_layout_constraintLeft_toRightOf, 9);
        cW.append(g.b.ConstraintLayout_Layout_layout_constraintRight_toLeftOf, 10);
        cW.append(g.b.ConstraintLayout_Layout_layout_constraintRight_toRightOf, 11);
        cW.append(g.b.ConstraintLayout_Layout_layout_constraintTop_toTopOf, 12);
        cW.append(g.b.ConstraintLayout_Layout_layout_constraintTop_toBottomOf, 13);
        cW.append(g.b.ConstraintLayout_Layout_layout_constraintBottom_toTopOf, 14);
        cW.append(g.b.ConstraintLayout_Layout_layout_constraintBottom_toBottomOf, 15);
        cW.append(g.b.ConstraintLayout_Layout_layout_constraintBaseline_toBaselineOf, 16);
        cW.append(g.b.ConstraintLayout_Layout_layout_constraintCircle, 2);
        cW.append(g.b.ConstraintLayout_Layout_layout_constraintCircleRadius, 3);
        cW.append(g.b.ConstraintLayout_Layout_layout_constraintCircleAngle, 4);
        cW.append(g.b.ConstraintLayout_Layout_layout_editor_absoluteX, 49);
        cW.append(g.b.ConstraintLayout_Layout_layout_editor_absoluteY, 50);
        cW.append(g.b.ConstraintLayout_Layout_layout_constraintGuide_begin, 5);
        cW.append(g.b.ConstraintLayout_Layout_layout_constraintGuide_end, 6);
        cW.append(g.b.ConstraintLayout_Layout_layout_constraintGuide_percent, 7);
        cW.append(g.b.ConstraintLayout_Layout_android_orientation, 1);
        cW.append(g.b.ConstraintLayout_Layout_layout_constraintStart_toEndOf, 17);
        cW.append(g.b.ConstraintLayout_Layout_layout_constraintStart_toStartOf, 18);
        cW.append(g.b.ConstraintLayout_Layout_layout_constraintEnd_toStartOf, 19);
        cW.append(g.b.ConstraintLayout_Layout_layout_constraintEnd_toEndOf, 20);
        cW.append(g.b.ConstraintLayout_Layout_layout_goneMarginLeft, 21);
        cW.append(g.b.ConstraintLayout_Layout_layout_goneMarginTop, 22);
        cW.append(g.b.ConstraintLayout_Layout_layout_goneMarginRight, 23);
        cW.append(g.b.ConstraintLayout_Layout_layout_goneMarginBottom, 24);
        cW.append(g.b.ConstraintLayout_Layout_layout_goneMarginStart, 25);
        cW.append(g.b.ConstraintLayout_Layout_layout_goneMarginEnd, 26);
        cW.append(g.b.ConstraintLayout_Layout_layout_constraintHorizontal_bias, 29);
        cW.append(g.b.ConstraintLayout_Layout_layout_constraintVertical_bias, 30);
        cW.append(g.b.ConstraintLayout_Layout_layout_constraintDimensionRatio, 44);
        cW.append(g.b.ConstraintLayout_Layout_layout_constraintHorizontal_weight, 45);
        cW.append(g.b.ConstraintLayout_Layout_layout_constraintVertical_weight, 46);
        cW.append(g.b.ConstraintLayout_Layout_layout_constraintHorizontal_chainStyle, 47);
        cW.append(g.b.ConstraintLayout_Layout_layout_constraintVertical_chainStyle, 48);
        cW.append(g.b.ConstraintLayout_Layout_layout_constrainedWidth, 27);
        cW.append(g.b.ConstraintLayout_Layout_layout_constrainedHeight, 28);
        cW.append(g.b.ConstraintLayout_Layout_layout_constraintWidth_default, 31);
        cW.append(g.b.ConstraintLayout_Layout_layout_constraintHeight_default, 32);
        cW.append(g.b.ConstraintLayout_Layout_layout_constraintWidth_min, 33);
        cW.append(g.b.ConstraintLayout_Layout_layout_constraintWidth_max, 34);
        cW.append(g.b.ConstraintLayout_Layout_layout_constraintWidth_percent, 35);
        cW.append(g.b.ConstraintLayout_Layout_layout_constraintHeight_min, 36);
        cW.append(g.b.ConstraintLayout_Layout_layout_constraintHeight_max, 37);
        cW.append(g.b.ConstraintLayout_Layout_layout_constraintHeight_percent, 38);
        cW.append(g.b.ConstraintLayout_Layout_layout_constraintLeft_creator, 39);
        cW.append(g.b.ConstraintLayout_Layout_layout_constraintTop_creator, 40);
        cW.append(g.b.ConstraintLayout_Layout_layout_constraintRight_creator, 41);
        cW.append(g.b.ConstraintLayout_Layout_layout_constraintBottom_creator, 42);
        cW.append(g.b.ConstraintLayout_Layout_layout_constraintBaseline_creator, 43);
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/constraint/ConstraintLayout.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */