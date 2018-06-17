package android.support.design.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.graphics.drawable.DrawableContainer;
import android.os.Build.VERSION;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.ClassLoaderCreator;
import android.os.Parcelable.Creator;
import android.support.design.a.f;
import android.support.design.a.h;
import android.support.design.a.j;
import android.support.design.a.k;
import android.support.v4.view.r;
import android.support.v4.widget.Space;
import android.support.v4.widget.o;
import android.support.v7.a.a.c;
import android.support.v7.widget.AppCompatTextView;
import android.support.v7.widget.am;
import android.support.v7.widget.bo;
import android.support.v7.widget.bx;
import android.support.v7.widget.m;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewPropertyAnimator;
import android.view.ViewStructure;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.AccelerateInterpolator;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import java.util.List;

public class TextInputLayout
  extends LinearLayout
  implements bx
{
  private final Rect lg = new Rect();
  final e lh = new e(this);
  private ValueAnimator nO;
  private TextView pA;
  private int pB;
  private int pC;
  private int pD;
  private boolean pE;
  private boolean pF;
  private Drawable pG;
  private CharSequence pH;
  private CheckableImageButton pI;
  private boolean pJ;
  private Drawable pK;
  private Drawable pL;
  private ColorStateList pM;
  private boolean pN;
  private PorterDuff.Mode pO;
  private boolean pP;
  private ColorStateList pQ;
  private ColorStateList pR;
  private boolean pS;
  private boolean pT;
  private boolean pU;
  private boolean pV;
  private boolean pW;
  private final FrameLayout pl;
  EditText pm;
  private CharSequence pn;
  private boolean po;
  private CharSequence pp;
  private Paint pq;
  private LinearLayout pr;
  private int ps;
  private Typeface pt;
  private boolean pu;
  TextView pv;
  private int pw;
  private boolean px;
  private CharSequence py;
  boolean pz;
  
  public TextInputLayout(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public TextInputLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public TextInputLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet);
    p.d(paramContext);
    setOrientation(1);
    setWillNotDraw(false);
    setAddStatesFromChildren(true);
    this.pl = new FrameLayout(paramContext);
    this.pl.setAddStatesFromChildren(true);
    addView(this.pl);
    this.lh.a(a.iB);
    e locale = this.lh;
    locale.kN = new AccelerateInterpolator();
    locale.bt();
    this.lh.A(8388659);
    paramContext = bo.a(paramContext, paramAttributeSet, a.k.TextInputLayout, paramInt, a.j.Widget_Design_TextInputLayout);
    this.po = paramContext.getBoolean(a.k.TextInputLayout_hintEnabled, true);
    setHint(paramContext.getText(a.k.TextInputLayout_android_hint));
    this.pT = paramContext.getBoolean(a.k.TextInputLayout_hintAnimationEnabled, true);
    if (paramContext.hasValue(a.k.TextInputLayout_android_textColorHint))
    {
      paramAttributeSet = paramContext.getColorStateList(a.k.TextInputLayout_android_textColorHint);
      this.pR = paramAttributeSet;
      this.pQ = paramAttributeSet;
    }
    if (paramContext.getResourceId(a.k.TextInputLayout_hintTextAppearance, -1) != -1) {
      setHintTextAppearance(paramContext.getResourceId(a.k.TextInputLayout_hintTextAppearance, 0));
    }
    this.pw = paramContext.getResourceId(a.k.TextInputLayout_errorTextAppearance, 0);
    boolean bool1 = paramContext.getBoolean(a.k.TextInputLayout_errorEnabled, false);
    boolean bool2 = paramContext.getBoolean(a.k.TextInputLayout_counterEnabled, false);
    setCounterMaxLength(paramContext.getInt(a.k.TextInputLayout_counterMaxLength, -1));
    this.pC = paramContext.getResourceId(a.k.TextInputLayout_counterTextAppearance, 0);
    this.pD = paramContext.getResourceId(a.k.TextInputLayout_counterOverflowTextAppearance, 0);
    this.pF = paramContext.getBoolean(a.k.TextInputLayout_passwordToggleEnabled, false);
    this.pG = paramContext.getDrawable(a.k.TextInputLayout_passwordToggleDrawable);
    this.pH = paramContext.getText(a.k.TextInputLayout_passwordToggleContentDescription);
    if (paramContext.hasValue(a.k.TextInputLayout_passwordToggleTint))
    {
      this.pN = true;
      this.pM = paramContext.getColorStateList(a.k.TextInputLayout_passwordToggleTint);
    }
    if (paramContext.hasValue(a.k.TextInputLayout_passwordToggleTintMode))
    {
      this.pP = true;
      this.pO = s.S(paramContext.getInt(a.k.TextInputLayout_passwordToggleTintMode, -1));
    }
    paramContext.ajT.recycle();
    setErrorEnabled(bool1);
    setCounterEnabled(bool2);
    cb();
    if (r.J(this) == 0) {
      r.l(this, 1);
    }
    r.a(this, new b());
  }
  
  private static void a(ViewGroup paramViewGroup, boolean paramBoolean)
  {
    int j = paramViewGroup.getChildCount();
    int i = 0;
    while (i < j)
    {
      View localView = paramViewGroup.getChildAt(i);
      localView.setEnabled(paramBoolean);
      if ((localView instanceof ViewGroup)) {
        a((ViewGroup)localView, paramBoolean);
      }
      i += 1;
    }
  }
  
  private void a(TextView paramTextView)
  {
    if (this.pr != null)
    {
      this.pr.removeView(paramTextView);
      int i = this.ps - 1;
      this.ps = i;
      if (i == 0) {
        this.pr.setVisibility(8);
      }
    }
  }
  
  private void a(TextView paramTextView, int paramInt)
  {
    if (this.pr == null)
    {
      this.pr = new LinearLayout(getContext());
      this.pr.setOrientation(0);
      addView(this.pr, -1, -2);
      Space localSpace = new Space(getContext());
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(0, 0, 1.0F);
      this.pr.addView(localSpace, localLayoutParams);
      if (this.pm != null) {
        bX();
      }
    }
    this.pr.setVisibility(0);
    this.pr.addView(paramTextView, paramInt);
    this.ps += 1;
  }
  
  private void bW()
  {
    LinearLayout.LayoutParams localLayoutParams = (LinearLayout.LayoutParams)this.pl.getLayoutParams();
    if (this.po)
    {
      if (this.pq == null) {
        this.pq = new Paint();
      }
      this.pq.setTypeface(this.lh.bq());
      this.pq.setTextSize(this.lh.kp);
    }
    for (int i = (int)-this.pq.ascent();; i = 0)
    {
      if (i != localLayoutParams.topMargin)
      {
        localLayoutParams.topMargin = i;
        this.pl.requestLayout();
      }
      return;
    }
  }
  
  private void bX()
  {
    r.c(this.pr, r.M(this.pm), 0, r.N(this.pm), this.pm.getPaddingBottom());
  }
  
  private void bY()
  {
    if (this.pm == null) {}
    Drawable localDrawable1;
    do
    {
      return;
      localDrawable1 = this.pm.getBackground();
    } while (localDrawable1 == null);
    int i = Build.VERSION.SDK_INT;
    if ((i == 21) || (i == 22))
    {
      Drawable localDrawable2 = this.pm.getBackground();
      if ((localDrawable2 != null) && (!this.pU))
      {
        Drawable localDrawable3 = localDrawable2.getConstantState().newDrawable();
        if ((localDrawable2 instanceof DrawableContainer)) {
          this.pU = f.a((DrawableContainer)localDrawable2, localDrawable3.getConstantState());
        }
        if (!this.pU)
        {
          r.setBackground(this.pm, localDrawable3);
          this.pU = true;
        }
      }
    }
    if (am.m(localDrawable1)) {
      localDrawable1 = localDrawable1.mutate();
    }
    for (;;)
    {
      if ((this.px) && (this.pv != null))
      {
        localDrawable1.setColorFilter(m.a(this.pv.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
        return;
      }
      if ((this.pE) && (this.pA != null))
      {
        localDrawable1.setColorFilter(m.a(this.pA.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
        return;
      }
      android.support.v4.a.a.a.e(localDrawable1);
      this.pm.refreshDrawableState();
      return;
    }
  }
  
  private void bZ()
  {
    if (this.pm == null) {}
    Drawable[] arrayOfDrawable;
    do
    {
      do
      {
        return;
        if ((this.pF) && ((ca()) || (this.pJ))) {}
        for (int i = 1; i != 0; i = 0)
        {
          if (this.pI == null)
          {
            this.pI = ((CheckableImageButton)LayoutInflater.from(getContext()).inflate(a.h.design_text_input_password_icon, this.pl, false));
            this.pI.setImageDrawable(this.pG);
            this.pI.setContentDescription(this.pH);
            this.pl.addView(this.pI);
            this.pI.setOnClickListener(new View.OnClickListener()
            {
              public final void onClick(View paramAnonymousView)
              {
                TextInputLayout.b(TextInputLayout.this);
              }
            });
          }
          if ((this.pm != null) && (r.R(this.pm) <= 0)) {
            this.pm.setMinimumHeight(r.R(this.pI));
          }
          this.pI.setVisibility(0);
          this.pI.setChecked(this.pJ);
          if (this.pK == null) {
            this.pK = new ColorDrawable();
          }
          this.pK.setBounds(0, 0, this.pI.getMeasuredWidth(), 1);
          arrayOfDrawable = o.c(this.pm);
          if (arrayOfDrawable[2] != this.pK) {
            this.pL = arrayOfDrawable[2];
          }
          o.a(this.pm, arrayOfDrawable[0], arrayOfDrawable[1], this.pK, arrayOfDrawable[3]);
          this.pI.setPadding(this.pm.getPaddingLeft(), this.pm.getPaddingTop(), this.pm.getPaddingRight(), this.pm.getPaddingBottom());
          return;
        }
        if ((this.pI != null) && (this.pI.getVisibility() == 0)) {
          this.pI.setVisibility(8);
        }
      } while (this.pK == null);
      arrayOfDrawable = o.c(this.pm);
    } while (arrayOfDrawable[2] != this.pK);
    o.a(this.pm, arrayOfDrawable[0], arrayOfDrawable[1], this.pL, arrayOfDrawable[3]);
    this.pK = null;
  }
  
  private boolean ca()
  {
    return (this.pm != null) && ((this.pm.getTransformationMethod() instanceof PasswordTransformationMethod));
  }
  
  private void cb()
  {
    if ((this.pG != null) && ((this.pN) || (this.pP)))
    {
      this.pG = android.support.v4.a.a.a.f(this.pG).mutate();
      if (this.pN) {
        android.support.v4.a.a.a.a(this.pG, this.pM);
      }
      if (this.pP) {
        android.support.v4.a.a.a.a(this.pG, this.pO);
      }
      if ((this.pI != null) && (this.pI.getDrawable() != this.pG)) {
        this.pI.setImageDrawable(this.pG);
      }
    }
  }
  
  private void i(float paramFloat)
  {
    if (this.lh.ki == paramFloat) {
      return;
    }
    if (this.nO == null)
    {
      this.nO = new ValueAnimator();
      this.nO.setInterpolator(a.iA);
      this.nO.setDuration(200L);
      this.nO.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
      {
        public final void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
        {
          TextInputLayout.this.lh.b(((Float)paramAnonymousValueAnimator.getAnimatedValue()).floatValue());
        }
      });
    }
    this.nO.setFloatValues(new float[] { this.lh.ki, paramFloat });
    this.nO.start();
  }
  
  private void j(boolean paramBoolean)
  {
    int i;
    if (this.pF)
    {
      i = this.pm.getSelectionEnd();
      if (!ca()) {
        break label66;
      }
      this.pm.setTransformationMethod(null);
    }
    for (this.pJ = true;; this.pJ = false)
    {
      this.pI.setChecked(this.pJ);
      if (paramBoolean) {
        this.pI.jumpDrawablesToCurrentState();
      }
      this.pm.setSelection(i);
      return;
      label66:
      this.pm.setTransformationMethod(PasswordTransformationMethod.getInstance());
    }
  }
  
  private void setEditText(EditText paramEditText)
  {
    if (this.pm != null) {
      throw new IllegalArgumentException("We already have an EditText, can only have one");
    }
    if (!(paramEditText instanceof TextInputEditText)) {
      Log.i("TextInputLayout", "EditText added is not a TextInputEditText. Please switch to using that class instead.");
    }
    this.pm = paramEditText;
    if (!ca()) {
      this.lh.a(this.pm.getTypeface());
    }
    paramEditText = this.lh;
    float f = this.pm.getTextSize();
    if (paramEditText.ko != f)
    {
      paramEditText.ko = f;
      paramEditText.bt();
    }
    int i = this.pm.getGravity();
    this.lh.A(i & 0xFFFFFF8F | 0x30);
    this.lh.z(i);
    this.pm.addTextChangedListener(new TextWatcher()
    {
      public final void afterTextChanged(Editable paramAnonymousEditable)
      {
        TextInputLayout localTextInputLayout = TextInputLayout.this;
        if (!TextInputLayout.a(TextInputLayout.this)) {}
        for (boolean bool = true;; bool = false)
        {
          localTextInputLayout.b(bool, false);
          if (TextInputLayout.this.pz) {
            TextInputLayout.this.R(paramAnonymousEditable.length());
          }
          return;
        }
      }
      
      public final void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      
      public final void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    });
    if (this.pQ == null) {
      this.pQ = this.pm.getHintTextColors();
    }
    if ((this.po) && (TextUtils.isEmpty(this.pp)))
    {
      this.pn = this.pm.getHint();
      setHint(this.pn);
      this.pm.setHint(null);
    }
    if (this.pA != null) {
      R(this.pm.getText().length());
    }
    if (this.pr != null) {
      bX();
    }
    bZ();
    b(false, true);
  }
  
  private void setHintInternal(CharSequence paramCharSequence)
  {
    this.pp = paramCharSequence;
    this.lh.setText(paramCharSequence);
  }
  
  final void R(int paramInt)
  {
    boolean bool2 = this.pE;
    if (this.pB == -1)
    {
      this.pA.setText(String.valueOf(paramInt));
      this.pE = false;
      if ((this.pm != null) && (bool2 != this.pE))
      {
        b(false, false);
        bY();
      }
      return;
    }
    boolean bool1;
    label67:
    TextView localTextView;
    if (paramInt > this.pB)
    {
      bool1 = true;
      this.pE = bool1;
      if (bool2 != this.pE)
      {
        localTextView = this.pA;
        if (!this.pE) {
          break label151;
        }
      }
    }
    label151:
    for (int i = this.pD;; i = this.pC)
    {
      o.b(localTextView, i);
      this.pA.setText(getContext().getString(android.support.design.a.i.character_counter_pattern, new Object[] { Integer.valueOf(paramInt), Integer.valueOf(this.pB) }));
      break;
      bool1 = false;
      break label67;
    }
  }
  
  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramView instanceof EditText))
    {
      FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(paramLayoutParams);
      localLayoutParams.gravity = (localLayoutParams.gravity & 0xFFFFFF8F | 0x10);
      this.pl.addView(paramView, localLayoutParams);
      this.pl.setLayoutParams(paramLayoutParams);
      bW();
      setEditText((EditText)paramView);
      return;
    }
    super.addView(paramView, paramInt, paramLayoutParams);
  }
  
  final void b(boolean paramBoolean1, boolean paramBoolean2)
  {
    boolean bool = isEnabled();
    int i;
    int k;
    int j;
    if ((this.pm != null) && (!TextUtils.isEmpty(this.pm.getText())))
    {
      i = 1;
      int[] arrayOfInt = getDrawableState();
      k = arrayOfInt.length;
      j = 0;
      label42:
      if (j >= k) {
        break label219;
      }
      if (arrayOfInt[j] != 16842908) {
        break label210;
      }
      j = 1;
      label63:
      if (TextUtils.isEmpty(getError())) {
        break label225;
      }
      k = 1;
      label76:
      if (this.pQ != null) {
        this.lh.c(this.pQ);
      }
      if ((!bool) || (!this.pE) || (this.pA == null)) {
        break label231;
      }
      this.lh.b(this.pA.getTextColors());
      label127:
      if ((i == 0) && ((!isEnabled()) || ((j == 0) && (k == 0)))) {
        break label294;
      }
      if ((paramBoolean2) || (this.pS))
      {
        if ((this.nO != null) && (this.nO.isRunning())) {
          this.nO.cancel();
        }
        if ((!paramBoolean1) || (!this.pT)) {
          break label283;
        }
        i(1.0F);
        this.pS = false;
      }
    }
    label210:
    label219:
    label225:
    label231:
    label283:
    label294:
    while ((!paramBoolean2) && (this.pS)) {
      for (;;)
      {
        return;
        i = 0;
        break;
        j += 1;
        break label42;
        j = 0;
        break label63;
        k = 0;
        break label76;
        if ((bool) && (j != 0) && (this.pR != null))
        {
          this.lh.b(this.pR);
          break label127;
        }
        if (this.pQ == null) {
          break label127;
        }
        this.lh.b(this.pQ);
        break label127;
        this.lh.b(1.0F);
      }
    }
    if ((this.nO != null) && (this.nO.isRunning())) {
      this.nO.cancel();
    }
    if ((paramBoolean1) && (this.pT)) {
      i(0.0F);
    }
    for (;;)
    {
      this.pS = true;
      return;
      this.lh.b(0.0F);
    }
  }
  
  public void dispatchProvideAutofillStructure(ViewStructure paramViewStructure, int paramInt)
  {
    if ((this.pn == null) || (this.pm == null))
    {
      super.dispatchProvideAutofillStructure(paramViewStructure, paramInt);
      return;
    }
    CharSequence localCharSequence = this.pm.getHint();
    this.pm.setHint(this.pn);
    try
    {
      super.dispatchProvideAutofillStructure(paramViewStructure, paramInt);
      return;
    }
    finally
    {
      this.pm.setHint(localCharSequence);
    }
  }
  
  protected void dispatchRestoreInstanceState(SparseArray<Parcelable> paramSparseArray)
  {
    this.pW = true;
    super.dispatchRestoreInstanceState(paramSparseArray);
    this.pW = false;
  }
  
  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    if (this.po) {
      this.lh.draw(paramCanvas);
    }
  }
  
  protected void drawableStateChanged()
  {
    boolean bool2 = true;
    if (this.pV) {
      return;
    }
    this.pV = true;
    super.drawableStateChanged();
    int[] arrayOfInt = getDrawableState();
    if ((r.ae(this)) && (isEnabled()))
    {
      b(bool2, false);
      bY();
      if (this.lh == null) {
        break label85;
      }
    }
    label85:
    for (boolean bool1 = this.lh.setState(arrayOfInt) | false;; bool1 = false)
    {
      if (bool1) {
        invalidate();
      }
      this.pV = false;
      return;
      bool2 = false;
      break;
    }
  }
  
  public int getCounterMaxLength()
  {
    return this.pB;
  }
  
  public EditText getEditText()
  {
    return this.pm;
  }
  
  public CharSequence getError()
  {
    if (this.pu) {
      return this.py;
    }
    return null;
  }
  
  public CharSequence getHint()
  {
    if (this.po) {
      return this.pp;
    }
    return null;
  }
  
  public CharSequence getPasswordVisibilityToggleContentDescription()
  {
    return this.pH;
  }
  
  public Drawable getPasswordVisibilityToggleDrawable()
  {
    return this.pG;
  }
  
  public Typeface getTypeface()
  {
    return this.pt;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if ((this.po) && (this.pm != null))
    {
      Rect localRect = this.lg;
      android.support.v4.widget.s.a(this, this.pm, localRect);
      paramInt1 = localRect.left + this.pm.getCompoundPaddingLeft();
      paramInt3 = localRect.right - this.pm.getCompoundPaddingRight();
      this.lh.a(paramInt1, localRect.top + this.pm.getCompoundPaddingTop(), paramInt3, localRect.bottom - this.pm.getCompoundPaddingBottom());
      this.lh.b(paramInt1, getPaddingTop(), paramInt3, paramInt4 - paramInt2 - getPaddingBottom());
      this.lh.bt();
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    bZ();
    super.onMeasure(paramInt1, paramInt2);
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof a))
    {
      super.onRestoreInstanceState(paramParcelable);
      return;
    }
    paramParcelable = (a)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.EV);
    setError(paramParcelable.pZ);
    if (paramParcelable.qa) {
      j(true);
    }
    requestLayout();
  }
  
  public Parcelable onSaveInstanceState()
  {
    a locala = new a(super.onSaveInstanceState());
    if (this.px) {
      locala.pZ = getError();
    }
    locala.qa = this.pJ;
    return locala;
  }
  
  public void setCounterEnabled(boolean paramBoolean)
  {
    if (this.pz != paramBoolean)
    {
      if (!paramBoolean) {
        break label151;
      }
      this.pA = new AppCompatTextView(getContext());
      this.pA.setId(a.f.textinput_counter);
      if (this.pt != null) {
        this.pA.setTypeface(this.pt);
      }
      this.pA.setMaxLines(1);
    }
    for (;;)
    {
      try
      {
        o.b(this.pA, this.pC);
        a(this.pA, -1);
        if (this.pm == null)
        {
          R(0);
          this.pz = paramBoolean;
          return;
        }
      }
      catch (Exception localException)
      {
        o.b(this.pA, android.support.v7.a.a.i.TextAppearance_AppCompat_Caption);
        this.pA.setTextColor(android.support.v4.content.a.c(getContext(), a.c.error_color_material));
        continue;
        R(this.pm.getText().length());
        continue;
      }
      label151:
      a(this.pA);
      this.pA = null;
    }
  }
  
  public void setCounterMaxLength(int paramInt)
  {
    if (this.pB != paramInt)
    {
      if (paramInt <= 0) {
        break label39;
      }
      this.pB = paramInt;
      if (this.pz) {
        if (this.pm != null) {
          break label47;
        }
      }
    }
    label39:
    label47:
    for (paramInt = 0;; paramInt = this.pm.getText().length())
    {
      R(paramInt);
      return;
      this.pB = -1;
      break;
    }
  }
  
  public void setEnabled(boolean paramBoolean)
  {
    a(this, paramBoolean);
    super.setEnabled(paramBoolean);
  }
  
  public void setError(final CharSequence paramCharSequence)
  {
    boolean bool2 = true;
    boolean bool1;
    if ((r.ae(this)) && (isEnabled()) && ((this.pv == null) || (!TextUtils.equals(this.pv.getText(), paramCharSequence))))
    {
      bool1 = true;
      this.py = paramCharSequence;
      if (!this.pu)
      {
        if (!TextUtils.isEmpty(paramCharSequence)) {
          setErrorEnabled(true);
        }
      }
      else
      {
        if (TextUtils.isEmpty(paramCharSequence)) {
          break label185;
        }
        label70:
        this.px = bool2;
        this.pv.animate().cancel();
        if (!this.px) {
          break label201;
        }
        this.pv.setText(paramCharSequence);
        this.pv.setVisibility(0);
        if (!bool1) {
          break label190;
        }
        if (this.pv.getAlpha() == 1.0F) {
          this.pv.setAlpha(0.0F);
        }
        this.pv.animate().alpha(1.0F).setDuration(200L).setInterpolator(a.iD).setListener(new AnimatorListenerAdapter()
        {
          public final void onAnimationStart(Animator paramAnonymousAnimator)
          {
            TextInputLayout.this.pv.setVisibility(0);
          }
        }).start();
      }
    }
    for (;;)
    {
      bY();
      b(bool1, false);
      return;
      bool1 = false;
      break;
      label185:
      bool2 = false;
      break label70;
      label190:
      this.pv.setAlpha(1.0F);
      continue;
      label201:
      if (this.pv.getVisibility() == 0) {
        if (bool1)
        {
          this.pv.animate().alpha(0.0F).setDuration(200L).setInterpolator(a.iC).setListener(new AnimatorListenerAdapter()
          {
            public final void onAnimationEnd(Animator paramAnonymousAnimator)
            {
              TextInputLayout.this.pv.setText(paramCharSequence);
              TextInputLayout.this.pv.setVisibility(4);
            }
          }).start();
        }
        else
        {
          this.pv.setText(paramCharSequence);
          this.pv.setVisibility(4);
        }
      }
    }
  }
  
  public void setErrorEnabled(boolean paramBoolean)
  {
    i = 1;
    if (this.pu != paramBoolean)
    {
      if (this.pv != null) {
        this.pv.animate().cancel();
      }
      if (!paramBoolean) {
        break label172;
      }
      this.pv = new AppCompatTextView(getContext());
      this.pv.setId(a.f.textinput_error);
      if (this.pt != null) {
        this.pv.setTypeface(this.pt);
      }
    }
    try
    {
      o.b(this.pv, this.pw);
      if (Build.VERSION.SDK_INT < 23) {
        break label202;
      }
      int j = this.pv.getTextColors().getDefaultColor();
      if (j != -65281) {
        break label202;
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        continue;
        i = 0;
      }
    }
    if (i != 0)
    {
      o.b(this.pv, android.support.v7.a.a.i.TextAppearance_AppCompat_Caption);
      this.pv.setTextColor(android.support.v4.content.a.c(getContext(), a.c.error_color_material));
    }
    this.pv.setVisibility(4);
    r.L(this.pv);
    a(this.pv, 0);
    for (;;)
    {
      this.pu = paramBoolean;
      return;
      label172:
      this.px = false;
      bY();
      a(this.pv);
      this.pv = null;
    }
  }
  
  public void setErrorTextAppearance(int paramInt)
  {
    this.pw = paramInt;
    if (this.pv != null) {
      o.b(this.pv, paramInt);
    }
  }
  
  public void setHint(CharSequence paramCharSequence)
  {
    if (this.po)
    {
      setHintInternal(paramCharSequence);
      sendAccessibilityEvent(2048);
    }
  }
  
  public void setHintAnimationEnabled(boolean paramBoolean)
  {
    this.pT = paramBoolean;
  }
  
  public void setHintEnabled(boolean paramBoolean)
  {
    CharSequence localCharSequence;
    if (paramBoolean != this.po)
    {
      this.po = paramBoolean;
      localCharSequence = this.pm.getHint();
      if (this.po) {
        break label73;
      }
      if ((!TextUtils.isEmpty(this.pp)) && (TextUtils.isEmpty(localCharSequence))) {
        this.pm.setHint(this.pp);
      }
      setHintInternal(null);
    }
    for (;;)
    {
      if (this.pm != null) {
        bW();
      }
      return;
      label73:
      if (!TextUtils.isEmpty(localCharSequence))
      {
        if (TextUtils.isEmpty(this.pp)) {
          setHint(localCharSequence);
        }
        this.pm.setHint(null);
      }
    }
  }
  
  public void setHintTextAppearance(int paramInt)
  {
    this.lh.B(paramInt);
    this.pR = this.lh.kr;
    if (this.pm != null)
    {
      b(false, false);
      bW();
    }
  }
  
  public void setPasswordVisibilityToggleContentDescription(int paramInt)
  {
    if (paramInt != 0) {}
    for (CharSequence localCharSequence = getResources().getText(paramInt);; localCharSequence = null)
    {
      setPasswordVisibilityToggleContentDescription(localCharSequence);
      return;
    }
  }
  
  public void setPasswordVisibilityToggleContentDescription(CharSequence paramCharSequence)
  {
    this.pH = paramCharSequence;
    if (this.pI != null) {
      this.pI.setContentDescription(paramCharSequence);
    }
  }
  
  public void setPasswordVisibilityToggleDrawable(int paramInt)
  {
    if (paramInt != 0) {}
    for (Drawable localDrawable = android.support.v7.c.a.b.a(getContext(), paramInt);; localDrawable = null)
    {
      setPasswordVisibilityToggleDrawable(localDrawable);
      return;
    }
  }
  
  public void setPasswordVisibilityToggleDrawable(Drawable paramDrawable)
  {
    this.pG = paramDrawable;
    if (this.pI != null) {
      this.pI.setImageDrawable(paramDrawable);
    }
  }
  
  public void setPasswordVisibilityToggleEnabled(boolean paramBoolean)
  {
    if (this.pF != paramBoolean)
    {
      this.pF = paramBoolean;
      if ((!paramBoolean) && (this.pJ) && (this.pm != null)) {
        this.pm.setTransformationMethod(PasswordTransformationMethod.getInstance());
      }
      this.pJ = false;
      bZ();
    }
  }
  
  public void setPasswordVisibilityToggleTintList(ColorStateList paramColorStateList)
  {
    this.pM = paramColorStateList;
    this.pN = true;
    cb();
  }
  
  public void setPasswordVisibilityToggleTintMode(PorterDuff.Mode paramMode)
  {
    this.pO = paramMode;
    this.pP = true;
    cb();
  }
  
  public void setTypeface(Typeface paramTypeface)
  {
    if (((this.pt != null) && (!this.pt.equals(paramTypeface))) || ((this.pt == null) && (paramTypeface != null)))
    {
      this.pt = paramTypeface;
      this.lh.a(paramTypeface);
      if (this.pA != null) {
        this.pA.setTypeface(paramTypeface);
      }
      if (this.pv != null) {
        this.pv.setTypeface(paramTypeface);
      }
    }
  }
  
  static final class a
    extends android.support.v4.view.a
  {
    public static final Parcelable.Creator<a> CREATOR = new Parcelable.ClassLoaderCreator() {};
    CharSequence pZ;
    boolean qa;
    
    a(Parcel paramParcel, ClassLoader paramClassLoader)
    {
      super(paramClassLoader);
      this.pZ = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
      if (paramParcel.readInt() == 1) {}
      for (boolean bool = true;; bool = false)
      {
        this.qa = bool;
        return;
      }
    }
    
    a(Parcelable paramParcelable)
    {
      super();
    }
    
    public final String toString()
    {
      return "TextInputLayout.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " error=" + this.pZ + "}";
    }
    
    public final void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      TextUtils.writeToParcel(this.pZ, paramParcel, paramInt);
      if (this.qa) {}
      for (paramInt = 1;; paramInt = 0)
      {
        paramParcel.writeInt(paramInt);
        return;
      }
    }
  }
  
  private final class b
    extends android.support.v4.view.b
  {
    b() {}
    
    public final void a(View paramView, android.support.v4.view.a.a parama)
    {
      super.a(paramView, parama);
      parama.setClassName(TextInputLayout.class.getSimpleName());
      paramView = TextInputLayout.this.lh.kB;
      if (!TextUtils.isEmpty(paramView)) {
        parama.HB.setText(paramView);
      }
      if (TextInputLayout.this.pm != null)
      {
        paramView = TextInputLayout.this.pm;
        if (Build.VERSION.SDK_INT >= 17) {
          parama.HB.setLabelFor(paramView);
        }
      }
      if (TextInputLayout.this.pv != null) {}
      for (paramView = TextInputLayout.this.pv.getText();; paramView = null)
      {
        if (!TextUtils.isEmpty(paramView))
        {
          if (Build.VERSION.SDK_INT >= 19) {
            parama.HB.setContentInvalid(true);
          }
          if (Build.VERSION.SDK_INT >= 21) {
            parama.HB.setError(paramView);
          }
        }
        return;
      }
    }
    
    public final void onInitializeAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
    {
      super.onInitializeAccessibilityEvent(paramView, paramAccessibilityEvent);
      paramAccessibilityEvent.setClassName(TextInputLayout.class.getSimpleName());
    }
    
    public final void onPopulateAccessibilityEvent(View paramView, AccessibilityEvent paramAccessibilityEvent)
    {
      super.onPopulateAccessibilityEvent(paramView, paramAccessibilityEvent);
      paramView = TextInputLayout.this.lh.kB;
      if (!TextUtils.isEmpty(paramView)) {
        paramAccessibilityEvent.getText().add(paramView);
      }
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/design/widget/TextInputLayout.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */