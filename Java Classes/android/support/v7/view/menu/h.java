package android.support.v7.view.menu;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.view.c;
import android.support.v7.a.a.b;
import android.util.SparseArray;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.KeyCharacterMap.KeyData;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public class h
  implements android.support.v4.b.a.a
{
  private static final int[] RY = { 1, 4, 5, 3, 2, 0 };
  ArrayList<j> Gj;
  private boolean RZ;
  private boolean Sa;
  public a Sb;
  private ArrayList<j> Sc;
  private boolean Sd;
  public ArrayList<j> Se;
  private ArrayList<j> Sf;
  private boolean Sg;
  public int Sh = 0;
  private ContextMenu.ContextMenuInfo Si;
  CharSequence Sj;
  Drawable Sk;
  View Sl;
  private boolean Sm = false;
  private boolean Sn = false;
  private boolean So = false;
  boolean Sp = false;
  private boolean Sq = false;
  private ArrayList<j> Sr = new ArrayList();
  private CopyOnWriteArrayList<WeakReference<o>> Ss = new CopyOnWriteArrayList();
  j St;
  public boolean Su;
  final Context mContext;
  private final Resources mResources;
  
  public h(Context paramContext)
  {
    this.mContext = paramContext;
    this.mResources = paramContext.getResources();
    this.Gj = new ArrayList();
    this.Sc = new ArrayList();
    this.Sd = true;
    this.Se = new ArrayList();
    this.Sf = new ArrayList();
    this.Sg = true;
    if ((this.mResources.getConfiguration().keyboard != 1) && (this.mResources.getBoolean(a.b.abc_config_showMenuShortcutsWhenKeyboardPresent))) {}
    for (;;)
    {
      this.Sa = bool;
      return;
      bool = false;
    }
  }
  
  private j a(int paramInt, KeyEvent paramKeyEvent)
  {
    ArrayList localArrayList = this.Sr;
    localArrayList.clear();
    a(localArrayList, paramInt, paramKeyEvent);
    if (localArrayList.isEmpty())
    {
      paramKeyEvent = null;
      return paramKeyEvent;
    }
    int k = paramKeyEvent.getMetaState();
    KeyCharacterMap.KeyData localKeyData = new KeyCharacterMap.KeyData();
    paramKeyEvent.getKeyData(localKeyData);
    int m = localArrayList.size();
    if (m == 1) {
      return (j)localArrayList.get(0);
    }
    boolean bool = fh();
    int i = 0;
    label84:
    if (i < m)
    {
      j localj = (j)localArrayList.get(i);
      if (bool) {}
      for (int j = localj.getAlphabeticShortcut();; j = localj.getNumericShortcut())
      {
        if (j == localKeyData.meta[0])
        {
          paramKeyEvent = localj;
          if ((k & 0x2) == 0) {
            break;
          }
        }
        if (j == localKeyData.meta[2])
        {
          paramKeyEvent = localj;
          if ((k & 0x2) != 0) {
            break;
          }
        }
        if ((bool) && (j == 8))
        {
          paramKeyEvent = localj;
          if (paramInt == 67) {
            break;
          }
        }
        i += 1;
        break label84;
      }
    }
    return null;
  }
  
  private MenuItem a(int paramInt1, int paramInt2, int paramInt3, CharSequence paramCharSequence)
  {
    int i = (0xFFFF0000 & paramInt3) >> 16;
    if ((i < 0) || (i >= RY.length)) {
      throw new IllegalArgumentException("order does not contain a valid category.");
    }
    i = RY[i] << 16 | 0xFFFF & paramInt3;
    paramCharSequence = new j(this, paramInt1, paramInt2, paramInt3, i, paramCharSequence, this.Sh);
    if (this.Si != null) {
      paramCharSequence.SF = this.Si;
    }
    this.Gj.add(b(this.Gj, i), paramCharSequence);
    J(true);
    return paramCharSequence;
  }
  
  private void a(List<j> paramList, int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool = fh();
    int m = paramKeyEvent.getModifiers();
    KeyCharacterMap.KeyData localKeyData = new KeyCharacterMap.KeyData();
    if ((!paramKeyEvent.getKeyData(localKeyData)) && (paramInt != 67)) {
      return;
    }
    int n = this.Gj.size();
    int i = 0;
    label49:
    j localj;
    int j;
    if (i < n)
    {
      localj = (j)this.Gj.get(i);
      if (localj.hasSubMenu()) {
        ((h)localj.getSubMenu()).a(paramList, paramInt, paramKeyEvent);
      }
      if (!bool) {
        break label210;
      }
      j = localj.getAlphabeticShortcut();
      label104:
      if (!bool) {
        break label220;
      }
      k = localj.getAlphabeticModifiers();
      label116:
      if ((m & 0x1100F) != (k & 0x1100F)) {
        break label230;
      }
    }
    label210:
    label220:
    label230:
    for (int k = 1;; k = 0)
    {
      if ((k != 0) && (j != 0) && ((j == localKeyData.meta[0]) || (j == localKeyData.meta[2]) || ((bool) && (j == 8) && (paramInt == 67))) && (localj.isEnabled())) {
        paramList.add(localj);
      }
      i += 1;
      break label49;
      break;
      j = localj.getNumericShortcut();
      break label104;
      k = localj.getNumericModifiers();
      break label116;
    }
  }
  
  private static int b(ArrayList<j> paramArrayList, int paramInt)
  {
    int i = paramArrayList.size() - 1;
    while (i >= 0)
    {
      if (((j)paramArrayList.get(i)).Qw <= paramInt) {
        return i + 1;
      }
      i -= 1;
    }
    return 0;
  }
  
  private void e(int paramInt, boolean paramBoolean)
  {
    if ((paramInt < 0) || (paramInt >= this.Gj.size())) {}
    do
    {
      return;
      this.Gj.remove(paramInt);
    } while (!paramBoolean);
    J(true);
  }
  
  public final void I(boolean paramBoolean)
  {
    if (this.Sq) {
      return;
    }
    this.Sq = true;
    Iterator localIterator = this.Ss.iterator();
    while (localIterator.hasNext())
    {
      WeakReference localWeakReference = (WeakReference)localIterator.next();
      o localo = (o)localWeakReference.get();
      if (localo == null) {
        this.Ss.remove(localWeakReference);
      } else {
        localo.a(this, paramBoolean);
      }
    }
    this.Sq = false;
  }
  
  public final void J(boolean paramBoolean)
  {
    if (!this.Sm)
    {
      if (paramBoolean)
      {
        this.Sd = true;
        this.Sg = true;
      }
      if (!this.Ss.isEmpty())
      {
        fj();
        Iterator localIterator = this.Ss.iterator();
        while (localIterator.hasNext())
        {
          WeakReference localWeakReference = (WeakReference)localIterator.next();
          o localo = (o)localWeakReference.get();
          if (localo == null) {
            this.Ss.remove(localWeakReference);
          } else {
            localo.G(paramBoolean);
          }
        }
        fk();
      }
    }
    do
    {
      return;
      this.Sn = true;
    } while (!paramBoolean);
    this.So = true;
  }
  
  final void a(int paramInt1, CharSequence paramCharSequence, int paramInt2, Drawable paramDrawable, View paramView)
  {
    Resources localResources = this.mResources;
    if (paramView != null)
    {
      this.Sl = paramView;
      this.Sj = null;
      this.Sk = null;
      J(false);
      return;
    }
    if (paramInt1 > 0)
    {
      this.Sj = localResources.getText(paramInt1);
      label47:
      if (paramInt2 <= 0) {
        break label83;
      }
      this.Sk = android.support.v4.content.a.a(this.mContext, paramInt2);
    }
    for (;;)
    {
      this.Sl = null;
      break;
      if (paramCharSequence == null) {
        break label47;
      }
      this.Sj = paramCharSequence;
      break label47;
      label83:
      if (paramDrawable != null) {
        this.Sk = paramDrawable;
      }
    }
  }
  
  public void a(a parama)
  {
    this.Sb = parama;
  }
  
  public final void a(o paramo)
  {
    a(paramo, this.mContext);
  }
  
  public final void a(o paramo, Context paramContext)
  {
    this.Ss.add(new WeakReference(paramo));
    paramo.a(paramContext, this);
    this.Sg = true;
  }
  
  public final boolean a(MenuItem paramMenuItem, o paramo, int paramInt)
  {
    boolean bool2 = false;
    boolean bool1 = false;
    paramMenuItem = (j)paramMenuItem;
    if ((paramMenuItem == null) || (!paramMenuItem.isEnabled())) {
      bool1 = false;
    }
    boolean bool3;
    Object localObject;
    label95:
    do
    {
      return bool1;
      bool3 = paramMenuItem.fr();
      localObject = paramMenuItem.SC;
      if ((localObject != null) && (((c)localObject).hasSubMenu())) {}
      for (int i = 1;; i = 0)
      {
        if (!paramMenuItem.fy()) {
          break label95;
        }
        bool2 = paramMenuItem.expandActionView() | bool3;
        bool1 = bool2;
        if (!bool2) {
          break;
        }
        I(true);
        return bool2;
      }
      if ((!paramMenuItem.hasSubMenu()) && (i == 0)) {
        break label289;
      }
      if ((paramInt & 0x4) == 0) {
        I(false);
      }
      if (!paramMenuItem.hasSubMenu()) {
        paramMenuItem.b(new u(this.mContext, this, paramMenuItem));
      }
      paramMenuItem = (u)paramMenuItem.getSubMenu();
      if (i != 0) {
        ((c)localObject).onPrepareSubMenu(paramMenuItem);
      }
      if (!this.Ss.isEmpty()) {
        break;
      }
      bool2 = bool3 | bool1;
      bool1 = bool2;
    } while (bool2);
    I(true);
    return bool2;
    bool1 = bool2;
    if (paramo != null) {
      bool1 = paramo.a(paramMenuItem);
    }
    paramo = this.Ss.iterator();
    label220:
    while (paramo.hasNext())
    {
      localObject = (WeakReference)paramo.next();
      o localo = (o)((WeakReference)localObject).get();
      if (localo == null)
      {
        this.Ss.remove(localObject);
      }
      else
      {
        if (bool1) {
          break label303;
        }
        bool1 = localo.a(paramMenuItem);
      }
    }
    label289:
    label303:
    for (;;)
    {
      break label220;
      break;
      if ((paramInt & 0x1) == 0) {
        I(true);
      }
      return bool3;
    }
  }
  
  public MenuItem add(int paramInt)
  {
    return a(0, 0, 0, this.mResources.getString(paramInt));
  }
  
  public MenuItem add(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return a(paramInt1, paramInt2, paramInt3, this.mResources.getString(paramInt4));
  }
  
  public MenuItem add(int paramInt1, int paramInt2, int paramInt3, CharSequence paramCharSequence)
  {
    return a(paramInt1, paramInt2, paramInt3, paramCharSequence);
  }
  
  public MenuItem add(CharSequence paramCharSequence)
  {
    return a(0, 0, 0, paramCharSequence);
  }
  
  public int addIntentOptions(int paramInt1, int paramInt2, int paramInt3, ComponentName paramComponentName, Intent[] paramArrayOfIntent, Intent paramIntent, int paramInt4, MenuItem[] paramArrayOfMenuItem)
  {
    PackageManager localPackageManager = this.mContext.getPackageManager();
    List localList = localPackageManager.queryIntentActivityOptions(paramComponentName, paramArrayOfIntent, paramIntent, 0);
    int i;
    label52:
    ResolveInfo localResolveInfo;
    if (localList != null)
    {
      i = localList.size();
      if ((paramInt4 & 0x1) == 0) {
        removeGroup(paramInt1);
      }
      paramInt4 = 0;
      if (paramInt4 >= i) {
        break label214;
      }
      localResolveInfo = (ResolveInfo)localList.get(paramInt4);
      if (localResolveInfo.specificIndex >= 0) {
        break label201;
      }
    }
    label201:
    for (paramComponentName = paramIntent;; paramComponentName = paramArrayOfIntent[localResolveInfo.specificIndex])
    {
      paramComponentName = new Intent(paramComponentName);
      paramComponentName.setComponent(new ComponentName(localResolveInfo.activityInfo.applicationInfo.packageName, localResolveInfo.activityInfo.name));
      paramComponentName = add(paramInt1, paramInt2, paramInt3, localResolveInfo.loadLabel(localPackageManager)).setIcon(localResolveInfo.loadIcon(localPackageManager)).setIntent(paramComponentName);
      if ((paramArrayOfMenuItem != null) && (localResolveInfo.specificIndex >= 0)) {
        paramArrayOfMenuItem[localResolveInfo.specificIndex] = paramComponentName;
      }
      paramInt4 += 1;
      break label52;
      i = 0;
      break;
    }
    label214:
    return i;
  }
  
  public SubMenu addSubMenu(int paramInt)
  {
    return addSubMenu(0, 0, 0, this.mResources.getString(paramInt));
  }
  
  public SubMenu addSubMenu(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return addSubMenu(paramInt1, paramInt2, paramInt3, this.mResources.getString(paramInt4));
  }
  
  public SubMenu addSubMenu(int paramInt1, int paramInt2, int paramInt3, CharSequence paramCharSequence)
  {
    paramCharSequence = (j)a(paramInt1, paramInt2, paramInt3, paramCharSequence);
    u localu = new u(this.mContext, this, paramCharSequence);
    paramCharSequence.b(localu);
    return localu;
  }
  
  public SubMenu addSubMenu(CharSequence paramCharSequence)
  {
    return addSubMenu(0, 0, 0, paramCharSequence);
  }
  
  public final void b(Bundle paramBundle)
  {
    Object localObject1 = null;
    int j = size();
    int i = 0;
    while (i < j)
    {
      MenuItem localMenuItem = getItem(i);
      View localView = localMenuItem.getActionView();
      Object localObject3 = localObject1;
      if (localView != null)
      {
        localObject3 = localObject1;
        if (localView.getId() != -1)
        {
          Object localObject2 = localObject1;
          if (localObject1 == null) {
            localObject2 = new SparseArray();
          }
          localView.saveHierarchyState((SparseArray)localObject2);
          localObject3 = localObject2;
          if (localMenuItem.isActionViewExpanded())
          {
            paramBundle.putInt("android:menu:expandedactionview", localMenuItem.getItemId());
            localObject3 = localObject2;
          }
        }
      }
      if (localMenuItem.hasSubMenu()) {
        ((u)localMenuItem.getSubMenu()).b(paramBundle);
      }
      i += 1;
      localObject1 = localObject3;
    }
    if (localObject1 != null) {
      paramBundle.putSparseParcelableArray(fg(), (SparseArray)localObject1);
    }
  }
  
  public final void b(o paramo)
  {
    Iterator localIterator = this.Ss.iterator();
    while (localIterator.hasNext())
    {
      WeakReference localWeakReference = (WeakReference)localIterator.next();
      o localo = (o)localWeakReference.get();
      if ((localo == null) || (localo == paramo)) {
        this.Ss.remove(localWeakReference);
      }
    }
  }
  
  public final void c(Bundle paramBundle)
  {
    if (paramBundle == null) {}
    do
    {
      int i;
      do
      {
        return;
        SparseArray localSparseArray = paramBundle.getSparseParcelableArray(fg());
        int j = size();
        i = 0;
        while (i < j)
        {
          MenuItem localMenuItem = getItem(i);
          View localView = localMenuItem.getActionView();
          if ((localView != null) && (localView.getId() != -1)) {
            localView.restoreHierarchyState(localSparseArray);
          }
          if (localMenuItem.hasSubMenu()) {
            ((u)localMenuItem.getSubMenu()).c(paramBundle);
          }
          i += 1;
        }
        i = paramBundle.getInt("android:menu:expandedactionview");
      } while (i <= 0);
      paramBundle = findItem(i);
    } while (paramBundle == null);
    paramBundle.expandActionView();
  }
  
  public void clear()
  {
    if (this.St != null) {
      g(this.St);
    }
    this.Gj.clear();
    J(true);
  }
  
  public void clearHeader()
  {
    this.Sk = null;
    this.Sj = null;
    this.Sl = null;
    J(false);
  }
  
  public void close()
  {
    I(true);
  }
  
  boolean d(h paramh, MenuItem paramMenuItem)
  {
    return (this.Sb != null) && (this.Sb.a(paramh, paramMenuItem));
  }
  
  public boolean f(j paramj)
  {
    boolean bool2 = false;
    if (this.Ss.isEmpty()) {
      return bool2;
    }
    fj();
    Iterator localIterator = this.Ss.iterator();
    boolean bool1 = false;
    for (;;)
    {
      label29:
      if (localIterator.hasNext())
      {
        WeakReference localWeakReference = (WeakReference)localIterator.next();
        o localo = (o)localWeakReference.get();
        if (localo == null)
        {
          this.Ss.remove(localWeakReference);
        }
        else
        {
          bool1 = localo.c(paramj);
          if (!bool1) {
            break;
          }
        }
      }
    }
    for (;;)
    {
      fk();
      bool2 = bool1;
      if (!bool1) {
        break;
      }
      this.St = paramj;
      return bool1;
      break label29;
    }
  }
  
  protected String fg()
  {
    return "android:menu:actionviewstates";
  }
  
  boolean fh()
  {
    return this.RZ;
  }
  
  public boolean fi()
  {
    return this.Sa;
  }
  
  public MenuItem findItem(int paramInt)
  {
    int j = size();
    int i = 0;
    while (i < j)
    {
      Object localObject = (j)this.Gj.get(i);
      if (((j)localObject).getItemId() == paramInt) {}
      MenuItem localMenuItem;
      do
      {
        return (MenuItem)localObject;
        if (!((j)localObject).hasSubMenu()) {
          break;
        }
        localMenuItem = ((j)localObject).getSubMenu().findItem(paramInt);
        localObject = localMenuItem;
      } while (localMenuItem != null);
      i += 1;
    }
    return null;
  }
  
  public final void fj()
  {
    if (!this.Sm)
    {
      this.Sm = true;
      this.Sn = false;
      this.So = false;
    }
  }
  
  public final void fk()
  {
    this.Sm = false;
    if (this.Sn)
    {
      this.Sn = false;
      J(this.So);
    }
  }
  
  final void fl()
  {
    this.Sd = true;
    J(true);
  }
  
  final void fm()
  {
    this.Sg = true;
    J(true);
  }
  
  public final ArrayList<j> fn()
  {
    if (!this.Sd) {
      return this.Sc;
    }
    this.Sc.clear();
    int j = this.Gj.size();
    int i = 0;
    while (i < j)
    {
      j localj = (j)this.Gj.get(i);
      if (localj.isVisible()) {
        this.Sc.add(localj);
      }
      i += 1;
    }
    this.Sd = false;
    this.Sg = true;
    return this.Sc;
  }
  
  public final void fo()
  {
    ArrayList localArrayList = fn();
    if (!this.Sg) {
      return;
    }
    Object localObject = this.Ss.iterator();
    int i = 0;
    while (((Iterator)localObject).hasNext())
    {
      WeakReference localWeakReference = (WeakReference)((Iterator)localObject).next();
      o localo = (o)localWeakReference.get();
      if (localo == null) {
        this.Ss.remove(localWeakReference);
      } else {
        i = localo.fa() | i;
      }
    }
    if (i != 0)
    {
      this.Se.clear();
      this.Sf.clear();
      int k = localArrayList.size();
      i = 0;
      if (i < k)
      {
        localObject = (j)localArrayList.get(i);
        if (((j)localObject).fv()) {
          this.Se.add(localObject);
        }
        for (;;)
        {
          int j;
          i += 1;
          break;
          this.Sf.add(localObject);
        }
      }
    }
    else
    {
      this.Se.clear();
      this.Sf.clear();
      this.Sf.addAll(fn());
    }
    this.Sg = false;
  }
  
  public final ArrayList<j> fp()
  {
    fo();
    return this.Sf;
  }
  
  public h fq()
  {
    return this;
  }
  
  public boolean g(j paramj)
  {
    boolean bool1 = false;
    boolean bool2 = bool1;
    if (!this.Ss.isEmpty())
    {
      if (this.St != paramj) {
        bool2 = bool1;
      }
    }
    else {
      return bool2;
    }
    fj();
    Iterator localIterator = this.Ss.iterator();
    bool1 = false;
    for (;;)
    {
      label41:
      if (localIterator.hasNext())
      {
        WeakReference localWeakReference = (WeakReference)localIterator.next();
        o localo = (o)localWeakReference.get();
        if (localo == null)
        {
          this.Ss.remove(localWeakReference);
        }
        else
        {
          bool1 = localo.d(paramj);
          if (!bool1) {
            break;
          }
        }
      }
    }
    for (;;)
    {
      fk();
      bool2 = bool1;
      if (!bool1) {
        break;
      }
      this.St = null;
      return bool1;
      break label41;
    }
  }
  
  public MenuItem getItem(int paramInt)
  {
    return (MenuItem)this.Gj.get(paramInt);
  }
  
  public boolean hasVisibleItems()
  {
    if (this.Su) {
      return true;
    }
    int j = size();
    int i = 0;
    while (i < j)
    {
      if (((j)this.Gj.get(i)).isVisible()) {
        return true;
      }
      i += 1;
    }
    return false;
  }
  
  public boolean isShortcutKey(int paramInt, KeyEvent paramKeyEvent)
  {
    return a(paramInt, paramKeyEvent) != null;
  }
  
  public boolean performIdentifierAction(int paramInt1, int paramInt2)
  {
    return a(findItem(paramInt1), null, paramInt2);
  }
  
  public boolean performShortcut(int paramInt1, KeyEvent paramKeyEvent, int paramInt2)
  {
    paramKeyEvent = a(paramInt1, paramKeyEvent);
    boolean bool = false;
    if (paramKeyEvent != null) {
      bool = a(paramKeyEvent, null, paramInt2);
    }
    if ((paramInt2 & 0x2) != 0) {
      I(true);
    }
    return bool;
  }
  
  public void removeGroup(int paramInt)
  {
    int j = size();
    int i = 0;
    if (i < j) {
      if (((j)this.Gj.get(i)).getGroupId() != paramInt) {}
    }
    for (;;)
    {
      label30:
      if (i >= 0)
      {
        int k = this.Gj.size();
        j = 0;
        for (;;)
        {
          if ((j < k - i) && (((j)this.Gj.get(i)).getGroupId() == paramInt))
          {
            e(i, false);
            j += 1;
            continue;
            i += 1;
            break;
            i = -1;
            break label30;
          }
        }
        J(true);
      }
    }
  }
  
  public void removeItem(int paramInt)
  {
    int j = size();
    int i = 0;
    if (i < j) {
      if (((j)this.Gj.get(i)).getItemId() != paramInt) {}
    }
    for (;;)
    {
      e(i, true);
      return;
      i += 1;
      break;
      i = -1;
    }
  }
  
  public void setGroupCheckable(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    int j = this.Gj.size();
    int i = 0;
    while (i < j)
    {
      j localj = (j)this.Gj.get(i);
      if (localj.getGroupId() == paramInt)
      {
        localj.K(paramBoolean2);
        localj.setCheckable(paramBoolean1);
      }
      i += 1;
    }
  }
  
  public void setGroupEnabled(int paramInt, boolean paramBoolean)
  {
    int j = this.Gj.size();
    int i = 0;
    while (i < j)
    {
      j localj = (j)this.Gj.get(i);
      if (localj.getGroupId() == paramInt) {
        localj.setEnabled(paramBoolean);
      }
      i += 1;
    }
  }
  
  public void setGroupVisible(int paramInt, boolean paramBoolean)
  {
    int k = this.Gj.size();
    int j = 0;
    int i = 0;
    if (j < k)
    {
      j localj = (j)this.Gj.get(j);
      if ((localj.getGroupId() != paramInt) || (!localj.M(paramBoolean))) {
        break label74;
      }
      i = 1;
    }
    label74:
    for (;;)
    {
      j += 1;
      break;
      if (i != 0) {
        J(true);
      }
      return;
    }
  }
  
  public void setQwertyMode(boolean paramBoolean)
  {
    this.RZ = paramBoolean;
    J(false);
  }
  
  public int size()
  {
    return this.Gj.size();
  }
  
  public static abstract interface a
  {
    public abstract boolean a(h paramh, MenuItem paramMenuItem);
    
    public abstract void b(h paramh);
  }
  
  public static abstract interface b
  {
    public abstract boolean e(j paramj);
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v7/view/menu/h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */