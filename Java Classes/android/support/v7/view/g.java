package android.support.v7.view;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff.Mode;
import android.support.v4.b.a.b;
import android.support.v4.view.c;
import android.support.v7.a.a.j;
import android.support.v7.view.menu.j;
import android.support.v7.view.menu.k;
import android.support.v7.widget.am;
import android.util.AttributeSet;
import android.util.Log;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.SubMenu;
import android.view.View;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public final class g
  extends MenuInflater
{
  static final Class<?>[] PC;
  static final Class<?>[] PD;
  final Object[] PE;
  final Object[] PF;
  Object PG;
  Context mContext;
  
  static
  {
    Class[] arrayOfClass = new Class[1];
    arrayOfClass[0] = Context.class;
    PC = arrayOfClass;
    PD = arrayOfClass;
  }
  
  public g(Context paramContext)
  {
    super(paramContext);
    this.mContext = paramContext;
    this.PE = new Object[] { paramContext };
    this.PF = this.PE;
  }
  
  static Object K(Object paramObject)
  {
    for (;;)
    {
      if ((paramObject instanceof Activity)) {}
      while (!(paramObject instanceof ContextWrapper)) {
        return paramObject;
      }
      paramObject = ((ContextWrapper)paramObject).getBaseContext();
    }
  }
  
  private void a(XmlPullParser paramXmlPullParser, AttributeSet paramAttributeSet, Menu paramMenu)
    throws XmlPullParserException, IOException
  {
    b localb = new b(paramMenu);
    int i = paramXmlPullParser.getEventType();
    int k = 0;
    paramMenu = null;
    Object localObject;
    label56:
    int j;
    if (i == 2)
    {
      localObject = paramXmlPullParser.getName();
      if (((String)localObject).equals("menu"))
      {
        i = paramXmlPullParser.next();
        int m = 0;
        j = k;
        k = i;
        i = m;
        label71:
        if (i != 0) {
          return;
        }
      }
    }
    switch (k)
    {
    default: 
    case 2: 
    case 3: 
      for (;;)
      {
        k = paramXmlPullParser.next();
        break label71;
        throw new RuntimeException("Expecting menu, got " + (String)localObject);
        j = paramXmlPullParser.next();
        i = j;
        if (j != 1) {
          break;
        }
        i = j;
        break label56;
        if (j == 0)
        {
          localObject = paramXmlPullParser.getName();
          if (((String)localObject).equals("group"))
          {
            localObject = localb.Qn.mContext.obtainStyledAttributes(paramAttributeSet, a.j.MenuGroup);
            localb.PJ = ((TypedArray)localObject).getResourceId(a.j.MenuGroup_android_id, 0);
            localb.PK = ((TypedArray)localObject).getInt(a.j.MenuGroup_android_menuCategory, 0);
            localb.PL = ((TypedArray)localObject).getInt(a.j.MenuGroup_android_orderInCategory, 0);
            localb.PM = ((TypedArray)localObject).getInt(a.j.MenuGroup_android_checkableBehavior, 0);
            localb.PN = ((TypedArray)localObject).getBoolean(a.j.MenuGroup_android_visible, true);
            localb.PO = ((TypedArray)localObject).getBoolean(a.j.MenuGroup_android_enabled, true);
            ((TypedArray)localObject).recycle();
          }
          else
          {
            if (((String)localObject).equals("item"))
            {
              localObject = localb.Qn.mContext.obtainStyledAttributes(paramAttributeSet, a.j.MenuItem);
              localb.PQ = ((TypedArray)localObject).getResourceId(a.j.MenuItem_android_id, 0);
              localb.PR = (((TypedArray)localObject).getInt(a.j.MenuItem_android_menuCategory, localb.PK) & 0xFFFF0000 | ((TypedArray)localObject).getInt(a.j.MenuItem_android_orderInCategory, localb.PL) & 0xFFFF);
              localb.PS = ((TypedArray)localObject).getText(a.j.MenuItem_android_title);
              localb.PT = ((TypedArray)localObject).getText(a.j.MenuItem_android_titleCondensed);
              localb.PU = ((TypedArray)localObject).getResourceId(a.j.MenuItem_android_icon, 0);
              localb.PV = b.C(((TypedArray)localObject).getString(a.j.MenuItem_android_alphabeticShortcut));
              localb.PW = ((TypedArray)localObject).getInt(a.j.MenuItem_alphabeticModifiers, 4096);
              localb.PX = b.C(((TypedArray)localObject).getString(a.j.MenuItem_android_numericShortcut));
              localb.PY = ((TypedArray)localObject).getInt(a.j.MenuItem_numericModifiers, 4096);
              if (((TypedArray)localObject).hasValue(a.j.MenuItem_android_checkable)) {
                if (((TypedArray)localObject).getBoolean(a.j.MenuItem_android_checkable, false))
                {
                  k = 1;
                  label506:
                  localb.PZ = k;
                  label513:
                  localb.Qa = ((TypedArray)localObject).getBoolean(a.j.MenuItem_android_checked, false);
                  localb.Qb = ((TypedArray)localObject).getBoolean(a.j.MenuItem_android_visible, localb.PN);
                  localb.Qc = ((TypedArray)localObject).getBoolean(a.j.MenuItem_android_enabled, localb.PO);
                  localb.Qd = ((TypedArray)localObject).getInt(a.j.MenuItem_showAsAction, -1);
                  localb.Qh = ((TypedArray)localObject).getString(a.j.MenuItem_android_onClick);
                  localb.Qe = ((TypedArray)localObject).getResourceId(a.j.MenuItem_actionLayout, 0);
                  localb.Qf = ((TypedArray)localObject).getString(a.j.MenuItem_actionViewClass);
                  localb.Qg = ((TypedArray)localObject).getString(a.j.MenuItem_actionProviderClass);
                  if (localb.Qg == null) {
                    break label807;
                  }
                  k = 1;
                  label641:
                  if ((k == 0) || (localb.Qe != 0) || (localb.Qf != null)) {
                    break label813;
                  }
                  localb.Qi = ((c)localb.a(localb.Qg, PD, localb.Qn.PF));
                  label691:
                  localb.Qj = ((TypedArray)localObject).getText(a.j.MenuItem_contentDescription);
                  localb.Qk = ((TypedArray)localObject).getText(a.j.MenuItem_tooltipText);
                  if (!((TypedArray)localObject).hasValue(a.j.MenuItem_iconTintMode)) {
                    break label837;
                  }
                  localb.Qm = am.c(((TypedArray)localObject).getInt(a.j.MenuItem_iconTintMode, -1), localb.Qm);
                  label750:
                  if (!((TypedArray)localObject).hasValue(a.j.MenuItem_iconTint)) {
                    break label846;
                  }
                }
              }
              label807:
              label813:
              label837:
              label846:
              for (localb.Ql = ((TypedArray)localObject).getColorStateList(a.j.MenuItem_iconTint);; localb.Ql = null)
              {
                ((TypedArray)localObject).recycle();
                localb.PP = false;
                break;
                k = 0;
                break label506;
                localb.PZ = localb.PM;
                break label513;
                k = 0;
                break label641;
                if (k != 0) {
                  Log.w("SupportMenuInflater", "Ignoring attribute 'actionProviderClass'. Action view already specified.");
                }
                localb.Qi = null;
                break label691;
                localb.Qm = null;
                break label750;
              }
            }
            if (((String)localObject).equals("menu"))
            {
              a(paramXmlPullParser, paramAttributeSet, localb.eR());
            }
            else
            {
              j = 1;
              paramMenu = (Menu)localObject;
              continue;
              localObject = paramXmlPullParser.getName();
              if ((j != 0) && (((String)localObject).equals(paramMenu)))
              {
                paramMenu = null;
                j = 0;
              }
              else if (((String)localObject).equals("group"))
              {
                localb.eQ();
              }
              else if (((String)localObject).equals("item"))
              {
                if (!localb.PP) {
                  if ((localb.Qi != null) && (localb.Qi.hasSubMenu()))
                  {
                    localb.eR();
                  }
                  else
                  {
                    localb.PP = true;
                    localb.a(localb.PI.add(localb.PJ, localb.PQ, localb.PR, localb.PS));
                  }
                }
              }
              else if (((String)localObject).equals("menu"))
              {
                i = 1;
              }
            }
          }
        }
      }
    }
    throw new RuntimeException("Unexpected end of document");
  }
  
  /* Error */
  public final void inflate(int paramInt, Menu paramMenu)
  {
    // Byte code:
    //   0: aload_2
    //   1: instanceof 397
    //   4: ifne +10 -> 14
    //   7: aload_0
    //   8: iload_1
    //   9: aload_2
    //   10: invokespecial 399	android/view/MenuInflater:inflate	(ILandroid/view/Menu;)V
    //   13: return
    //   14: aconst_null
    //   15: astore_3
    //   16: aconst_null
    //   17: astore 5
    //   19: aconst_null
    //   20: astore 4
    //   22: aload_0
    //   23: getfield 38	android/support/v7/view/g:mContext	Landroid/content/Context;
    //   26: invokevirtual 403	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   29: iload_1
    //   30: invokevirtual 409	android/content/res/Resources:getLayout	(I)Landroid/content/res/XmlResourceParser;
    //   33: astore 6
    //   35: aload 6
    //   37: astore 4
    //   39: aload 6
    //   41: astore_3
    //   42: aload 6
    //   44: astore 5
    //   46: aload_0
    //   47: aload 6
    //   49: aload 6
    //   51: invokestatic 415	android/util/Xml:asAttributeSet	(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;
    //   54: aload_2
    //   55: invokespecial 370	android/support/v7/view/g:a	(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    //   58: aload 6
    //   60: ifnull -47 -> 13
    //   63: aload 6
    //   65: invokeinterface 420 1 0
    //   70: return
    //   71: astore_2
    //   72: aload 4
    //   74: astore_3
    //   75: new 422	android/view/InflateException
    //   78: dup
    //   79: ldc_w 424
    //   82: aload_2
    //   83: invokespecial 427	android/view/InflateException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   86: athrow
    //   87: astore_2
    //   88: aload_3
    //   89: ifnull +9 -> 98
    //   92: aload_3
    //   93: invokeinterface 420 1 0
    //   98: aload_2
    //   99: athrow
    //   100: astore_2
    //   101: aload 5
    //   103: astore_3
    //   104: new 422	android/view/InflateException
    //   107: dup
    //   108: ldc_w 424
    //   111: aload_2
    //   112: invokespecial 427	android/view/InflateException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   115: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	116	0	this	g
    //   0	116	1	paramInt	int
    //   0	116	2	paramMenu	Menu
    //   15	89	3	localObject1	Object
    //   20	53	4	localObject2	Object
    //   17	85	5	localObject3	Object
    //   33	31	6	localXmlResourceParser	android.content.res.XmlResourceParser
    // Exception table:
    //   from	to	target	type
    //   22	35	71	org/xmlpull/v1/XmlPullParserException
    //   46	58	71	org/xmlpull/v1/XmlPullParserException
    //   22	35	87	finally
    //   46	58	87	finally
    //   75	87	87	finally
    //   104	116	87	finally
    //   22	35	100	java/io/IOException
    //   46	58	100	java/io/IOException
  }
  
  private static final class a
    implements MenuItem.OnMenuItemClickListener
  {
    private static final Class<?>[] PH = { MenuItem.class };
    private Object PG;
    private Method aw;
    
    public a(Object paramObject, String paramString)
    {
      this.PG = paramObject;
      Class localClass = paramObject.getClass();
      try
      {
        this.aw = localClass.getMethod(paramString, PH);
        return;
      }
      catch (Exception paramObject)
      {
        paramString = new InflateException("Couldn't resolve menu item onClick handler " + paramString + " in class " + localClass.getName());
        paramString.initCause((Throwable)paramObject);
        throw paramString;
      }
    }
    
    public final boolean onMenuItemClick(MenuItem paramMenuItem)
    {
      try
      {
        if (this.aw.getReturnType() == Boolean.TYPE) {
          return ((Boolean)this.aw.invoke(this.PG, new Object[] { paramMenuItem })).booleanValue();
        }
        this.aw.invoke(this.PG, new Object[] { paramMenuItem });
        return true;
      }
      catch (Exception paramMenuItem)
      {
        throw new RuntimeException(paramMenuItem);
      }
    }
  }
  
  private final class b
  {
    Menu PI;
    int PJ;
    int PK;
    int PL;
    int PM;
    boolean PN;
    boolean PO;
    boolean PP;
    int PQ;
    int PR;
    CharSequence PS;
    CharSequence PT;
    int PU;
    char PV;
    int PW;
    char PX;
    int PY;
    int PZ;
    boolean Qa;
    boolean Qb;
    boolean Qc;
    int Qd;
    int Qe;
    String Qf;
    String Qg;
    String Qh;
    c Qi;
    CharSequence Qj;
    CharSequence Qk;
    ColorStateList Ql = null;
    PorterDuff.Mode Qm = null;
    
    public b(Menu paramMenu)
    {
      this.PI = paramMenu;
      eQ();
    }
    
    static char C(String paramString)
    {
      if (paramString == null) {
        return '\000';
      }
      return paramString.charAt(0);
    }
    
    final <T> T a(String paramString, Class<?>[] paramArrayOfClass, Object[] paramArrayOfObject)
    {
      try
      {
        paramArrayOfClass = g.this.mContext.getClassLoader().loadClass(paramString).getConstructor(paramArrayOfClass);
        paramArrayOfClass.setAccessible(true);
        paramArrayOfClass = paramArrayOfClass.newInstance(paramArrayOfObject);
        return paramArrayOfClass;
      }
      catch (Exception paramArrayOfClass)
      {
        Log.w("SupportMenuInflater", "Cannot instantiate class: " + paramString, paramArrayOfClass);
      }
      return null;
    }
    
    final void a(MenuItem paramMenuItem)
    {
      int i = 1;
      Object localObject = paramMenuItem.setChecked(this.Qa).setVisible(this.Qb).setEnabled(this.Qc);
      if (this.PZ > 0) {}
      for (boolean bool = true;; bool = false)
      {
        ((MenuItem)localObject).setCheckable(bool).setTitleCondensed(this.PT).setIcon(this.PU);
        if (this.Qd >= 0) {
          paramMenuItem.setShowAsAction(this.Qd);
        }
        if (this.Qh == null) {
          break label170;
        }
        if (!g.this.mContext.isRestricted()) {
          break;
        }
        throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
      }
      localObject = g.this;
      if (((g)localObject).PG == null) {
        ((g)localObject).PG = g.K(((g)localObject).mContext);
      }
      paramMenuItem.setOnMenuItemClickListener(new g.a(((g)localObject).PG, this.Qh));
      label170:
      if (this.PZ >= 2)
      {
        if ((paramMenuItem instanceof j)) {
          ((j)paramMenuItem).K(true);
        }
      }
      else
      {
        if (this.Qf == null) {
          break label447;
        }
        paramMenuItem.setActionView((View)a(this.Qf, g.PC, g.this.PE));
      }
      for (;;)
      {
        if (this.Qe > 0)
        {
          if (i != 0) {
            break label435;
          }
          paramMenuItem.setActionView(this.Qe);
        }
        for (;;)
        {
          if (this.Qi != null) {
            android.support.v4.view.g.a(paramMenuItem, this.Qi);
          }
          android.support.v4.view.g.a(paramMenuItem, this.Qj);
          android.support.v4.view.g.b(paramMenuItem, this.Qk);
          android.support.v4.view.g.b(paramMenuItem, this.PV, this.PW);
          android.support.v4.view.g.a(paramMenuItem, this.PX, this.PY);
          if (this.Qm != null) {
            android.support.v4.view.g.a(paramMenuItem, this.Qm);
          }
          if (this.Ql != null) {
            android.support.v4.view.g.a(paramMenuItem, this.Ql);
          }
          return;
          if (!(paramMenuItem instanceof k)) {
            break;
          }
          localObject = (k)paramMenuItem;
          try
          {
            if (((k)localObject).SL == null) {
              ((k)localObject).SL = ((b)((k)localObject).Ra).getClass().getDeclaredMethod("setExclusiveCheckable", new Class[] { Boolean.TYPE });
            }
            ((k)localObject).SL.invoke(((k)localObject).Ra, new Object[] { Boolean.valueOf(true) });
          }
          catch (Exception localException)
          {
            Log.w("MenuItemWrapper", "Error while calling setExclusiveCheckable", localException);
          }
          break;
          label435:
          Log.w("SupportMenuInflater", "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
        }
        label447:
        i = 0;
      }
    }
    
    public final void eQ()
    {
      this.PJ = 0;
      this.PK = 0;
      this.PL = 0;
      this.PM = 0;
      this.PN = true;
      this.PO = true;
    }
    
    public final SubMenu eR()
    {
      this.PP = true;
      SubMenu localSubMenu = this.PI.addSubMenu(this.PJ, this.PQ, this.PR, this.PS);
      a(localSubMenu.getItem());
      return localSubMenu;
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/view/g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */