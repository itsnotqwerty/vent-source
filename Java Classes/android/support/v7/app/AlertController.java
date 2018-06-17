package android.support.v7.app;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.DialogInterface.OnKeyListener;
import android.content.DialogInterface.OnMultiChoiceClickListener;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.support.v4.widget.NestedScrollView;
import android.support.v4.widget.NestedScrollView.b;
import android.support.v7.a.a.a;
import android.support.v7.a.a.j;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStub;
import android.view.Window;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckedTextView;
import android.widget.CursorAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import java.lang.ref.WeakReference;

final class AlertController
{
  CharSequence Ch;
  NestedScrollView LA;
  int LB = 0;
  TextView LC;
  View LD;
  ListAdapter LE;
  int LF = -1;
  int LG;
  int LH;
  int LI;
  int LJ;
  int LK;
  int LL;
  boolean LM;
  int LN = 0;
  final View.OnClickListener LO = new View.OnClickListener()
  {
    public final void onClick(View paramAnonymousView)
    {
      if ((paramAnonymousView == AlertController.this.Lo) && (AlertController.this.Lq != null)) {
        paramAnonymousView = Message.obtain(AlertController.this.Lq);
      }
      for (;;)
      {
        if (paramAnonymousView != null) {
          paramAnonymousView.sendToTarget();
        }
        AlertController.this.mHandler.obtainMessage(1, AlertController.this.Ld).sendToTarget();
        return;
        if ((paramAnonymousView == AlertController.this.Ls) && (AlertController.this.Lu != null)) {
          paramAnonymousView = Message.obtain(AlertController.this.Lu);
        } else if ((paramAnonymousView == AlertController.this.Lw) && (AlertController.this.Ly != null)) {
          paramAnonymousView = Message.obtain(AlertController.this.Ly);
        } else {
          paramAnonymousView = null;
        }
      }
    }
  };
  final l Ld;
  final Window Le;
  final int Lf;
  CharSequence Lg;
  ListView Lh;
  int Li;
  int Lj;
  int Lk;
  int Ll;
  int Lm;
  boolean Ln = false;
  Button Lo;
  CharSequence Lp;
  Message Lq;
  Drawable Lr;
  Button Ls;
  CharSequence Lt;
  Message Lu;
  Drawable Lv;
  Button Lw;
  CharSequence Lx;
  Message Ly;
  Drawable Lz;
  TextView ix;
  final Context mContext;
  Handler mHandler;
  View mView;
  Drawable oa;
  ImageView ph;
  
  public AlertController(Context paramContext, l paraml, Window paramWindow)
  {
    this.mContext = paramContext;
    this.Ld = paraml;
    this.Le = paramWindow;
    this.mHandler = new b(paraml);
    paramContext = paramContext.obtainStyledAttributes(null, a.j.AlertDialog, a.a.alertDialogStyle, 0);
    this.LG = paramContext.getResourceId(a.j.AlertDialog_android_layout, 0);
    this.LH = paramContext.getResourceId(a.j.AlertDialog_buttonPanelSideLayout, 0);
    this.LI = paramContext.getResourceId(a.j.AlertDialog_listLayout, 0);
    this.LJ = paramContext.getResourceId(a.j.AlertDialog_multiChoiceItemLayout, 0);
    this.LK = paramContext.getResourceId(a.j.AlertDialog_singleChoiceItemLayout, 0);
    this.LL = paramContext.getResourceId(a.j.AlertDialog_listItemLayout, 0);
    this.LM = paramContext.getBoolean(a.j.AlertDialog_showTitle, true);
    this.Lf = paramContext.getDimensionPixelSize(a.j.AlertDialog_buttonIconDimen, 0);
    paramContext.recycle();
    paraml.getDelegate().requestWindowFeature(1);
  }
  
  static void a(View paramView1, View paramView2, View paramView3)
  {
    int j = 0;
    if (paramView2 != null)
    {
      if (paramView1.canScrollVertically(-1))
      {
        i = 0;
        paramView2.setVisibility(i);
      }
    }
    else if (paramView3 != null) {
      if (!paramView1.canScrollVertically(1)) {
        break label48;
      }
    }
    label48:
    for (int i = j;; i = 4)
    {
      paramView3.setVisibility(i);
      return;
      i = 4;
      break;
    }
  }
  
  static void a(Button paramButton)
  {
    LinearLayout.LayoutParams localLayoutParams = (LinearLayout.LayoutParams)paramButton.getLayoutParams();
    localLayoutParams.gravity = 1;
    localLayoutParams.weight = 0.5F;
    paramButton.setLayoutParams(localLayoutParams);
  }
  
  static boolean at(View paramView)
  {
    if (paramView.onCheckIsTextEditor()) {
      return true;
    }
    if (!(paramView instanceof ViewGroup)) {
      return false;
    }
    paramView = (ViewGroup)paramView;
    int i = paramView.getChildCount();
    while (i > 0)
    {
      int j = i - 1;
      i = j;
      if (at(paramView.getChildAt(j))) {
        return true;
      }
    }
    return false;
  }
  
  static ViewGroup c(View paramView1, View paramView2)
  {
    if (paramView1 == null) {
      if (!(paramView2 instanceof ViewStub)) {
        break label71;
      }
    }
    label71:
    for (paramView1 = ((ViewStub)paramView2).inflate();; paramView1 = paramView2)
    {
      return (ViewGroup)paramView1;
      if (paramView2 != null)
      {
        ViewParent localViewParent = paramView2.getParent();
        if ((localViewParent instanceof ViewGroup)) {
          ((ViewGroup)localViewParent).removeView(paramView2);
        }
      }
      if ((paramView1 instanceof ViewStub)) {
        paramView1 = ((ViewStub)paramView1).inflate();
      }
      for (;;)
      {
        return (ViewGroup)paramView1;
      }
    }
  }
  
  public final void a(int paramInt, CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener, Message paramMessage, Drawable paramDrawable)
  {
    if (paramOnClickListener != null) {
      paramMessage = this.mHandler.obtainMessage(paramInt, paramOnClickListener);
    }
    switch (paramInt)
    {
    default: 
      throw new IllegalArgumentException("Button does not exist");
    case -1: 
      this.Lp = paramCharSequence;
      this.Lq = paramMessage;
      this.Lr = paramDrawable;
      return;
    case -2: 
      this.Lt = paramCharSequence;
      this.Lu = paramMessage;
      this.Lv = paramDrawable;
      return;
    }
    this.Lx = paramCharSequence;
    this.Ly = paramMessage;
    this.Lz = paramDrawable;
  }
  
  public final void setIcon(int paramInt)
  {
    this.oa = null;
    this.LB = paramInt;
    if (this.ph != null)
    {
      if (paramInt != 0)
      {
        this.ph.setVisibility(0);
        this.ph.setImageResource(this.LB);
      }
    }
    else {
      return;
    }
    this.ph.setVisibility(8);
  }
  
  public final void setTitle(CharSequence paramCharSequence)
  {
    this.Ch = paramCharSequence;
    if (this.LC != null) {
      this.LC.setText(paramCharSequence);
    }
  }
  
  public static class RecycleListView
    extends ListView
  {
    final int Mw;
    final int Mx;
    
    public RecycleListView(Context paramContext)
    {
      this(paramContext, null);
    }
    
    public RecycleListView(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
      paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, a.j.RecycleListView);
      this.Mx = paramContext.getDimensionPixelOffset(a.j.RecycleListView_paddingBottomNoButtons, -1);
      this.Mw = paramContext.getDimensionPixelOffset(a.j.RecycleListView_paddingTopNoTitle, -1);
    }
  }
  
  public static final class a
  {
    public CharSequence Ch;
    public final LayoutInflater JR;
    public Cursor Jc;
    public int LB = 0;
    public View LD;
    public ListAdapter LE;
    public int LF = -1;
    public int LS = 0;
    public CharSequence LT;
    public Drawable LU;
    public DialogInterface.OnClickListener LV;
    public CharSequence LW;
    public Drawable LX;
    public DialogInterface.OnClickListener LY;
    public CharSequence LZ;
    public CharSequence Lg;
    public int Li;
    public int Lj;
    public int Lk;
    public int Ll;
    public int Lm;
    public boolean Ln = false;
    public Drawable Ma;
    public DialogInterface.OnClickListener Mb;
    public DialogInterface.OnCancelListener Mc;
    public DialogInterface.OnDismissListener Md;
    public DialogInterface.OnKeyListener Me;
    public CharSequence[] Mf;
    public DialogInterface.OnClickListener Mg;
    public boolean[] Mh;
    public boolean Mi;
    public boolean Mj;
    public DialogInterface.OnMultiChoiceClickListener Mk;
    public String Ml;
    public String Mm;
    public boolean Mn;
    public AdapterView.OnItemSelectedListener Mo;
    public boolean Mp = true;
    public final Context mContext;
    public View mView;
    public Drawable oa;
    public boolean wM;
    
    public a(Context paramContext)
    {
      this.mContext = paramContext;
      this.wM = true;
      this.JR = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
    }
  }
  
  private static final class b
    extends Handler
  {
    private WeakReference<DialogInterface> Mv;
    
    public b(DialogInterface paramDialogInterface)
    {
      this.Mv = new WeakReference(paramDialogInterface);
    }
    
    public final void handleMessage(Message paramMessage)
    {
      switch (paramMessage.what)
      {
      case 0: 
      default: 
        return;
      case -3: 
      case -2: 
      case -1: 
        ((DialogInterface.OnClickListener)paramMessage.obj).onClick((DialogInterface)this.Mv.get(), paramMessage.what);
        return;
      }
      ((DialogInterface)paramMessage.obj).dismiss();
    }
  }
  
  private static final class c
    extends ArrayAdapter<CharSequence>
  {
    public c(Context paramContext, int paramInt, CharSequence[] paramArrayOfCharSequence)
    {
      super(paramInt, 16908308, paramArrayOfCharSequence);
    }
    
    public final long getItemId(int paramInt)
    {
      return paramInt;
    }
    
    public final boolean hasStableIds()
    {
      return true;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/app/AlertController.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */