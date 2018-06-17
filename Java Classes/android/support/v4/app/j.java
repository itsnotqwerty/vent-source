package android.support.v4.app;

import android.arch.lifecycle.c.b;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.IntentSender.SendIntentException;
import android.content.res.Configuration;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Collection;
import java.util.Iterator;

public class j
  extends f
  implements a.a, a.c
{
  static final String ALLOCATED_REQUEST_INDICIES_TAG = "android:support:request_indicies";
  static final String FRAGMENTS_TAG = "android:support:fragments";
  static final int MAX_NUM_PENDING_FRAGMENT_ACTIVITY_RESULTS = 65534;
  static final int MSG_REALLY_STOPPED = 1;
  static final int MSG_RESUME_PENDING = 2;
  static final String NEXT_CANDIDATE_REQUEST_INDEX_TAG = "android:support:next_request_index";
  static final String REQUEST_FRAGMENT_WHO_TAG = "android:support:request_fragment_who";
  private static final String TAG = "FragmentActivity";
  boolean mCreated;
  final l mFragments = new l(new a());
  final Handler mHandler = new Handler()
  {
    public final void handleMessage(Message paramAnonymousMessage)
    {
      switch (paramAnonymousMessage.what)
      {
      default: 
        super.handleMessage(paramAnonymousMessage);
      case 1: 
        do
        {
          return;
        } while (!j.this.mStopped);
        j.this.doReallyStop(false);
        return;
      }
      j.this.onResumeFragments();
      j.this.mFragments.execPendingActions();
    }
  };
  x mLoaderManager;
  int mNextCandidateRequestIndex;
  android.support.v4.g.n<String> mPendingFragmentActivityResults;
  boolean mReallyStopped = true;
  boolean mRequestedPermissionsFromFragment;
  boolean mResumed;
  boolean mRetaining;
  boolean mStopped = true;
  private android.arch.lifecycle.p mViewModelStore;
  
  private int allocateRequestIndex(i parami)
  {
    if (this.mPendingFragmentActivityResults.size() >= 65534) {
      throw new IllegalStateException("Too many pending Fragment activity results.");
    }
    for (;;)
    {
      android.support.v4.g.n localn = this.mPendingFragmentActivityResults;
      i = this.mNextCandidateRequestIndex;
      if (localn.EA) {
        localn.gc();
      }
      if (android.support.v4.g.c.a(localn.ET, localn.ai, i) < 0) {
        break;
      }
      this.mNextCandidateRequestIndex = ((this.mNextCandidateRequestIndex + 1) % 65534);
    }
    int i = this.mNextCandidateRequestIndex;
    this.mPendingFragmentActivityResults.put(i, parami.mWho);
    this.mNextCandidateRequestIndex = ((this.mNextCandidateRequestIndex + 1) % 65534);
    return i;
  }
  
  private void markFragmentsCreated()
  {
    while (markState(getSupportFragmentManager(), c.b.aC)) {}
  }
  
  private static boolean markState(n paramn, c.b paramb)
  {
    paramn = paramn.getFragments().iterator();
    boolean bool = false;
    while (paramn.hasNext())
    {
      Object localObject = (i)paramn.next();
      if (localObject != null)
      {
        if (((i)localObject).getLifecycle().Y().a(c.b.aD))
        {
          ((i)localObject).mLifecycleRegistry.b(paramb);
          bool = true;
        }
        localObject = ((i)localObject).peekChildFragmentManager();
        if (localObject == null) {
          break label83;
        }
        bool = markState((n)localObject, paramb) | bool;
      }
    }
    label83:
    for (;;)
    {
      break;
      return bool;
    }
  }
  
  final View dispatchFragmentsOnCreateView(View paramView, String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    return this.mFragments.mHost.mFragmentManager.onCreateView(paramView, paramString, paramContext, paramAttributeSet);
  }
  
  void doReallyStop(boolean paramBoolean)
  {
    if (!this.mReallyStopped)
    {
      this.mReallyStopped = true;
      this.mRetaining = paramBoolean;
      this.mHandler.removeMessages(1);
      onReallyStop();
    }
  }
  
  public void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    super.dump(paramString, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("Local FragmentActivity ");
    paramPrintWriter.print(Integer.toHexString(System.identityHashCode(this)));
    paramPrintWriter.println(" State:");
    String str = paramString + "  ";
    paramPrintWriter.print(str);
    paramPrintWriter.print("mCreated=");
    paramPrintWriter.print(this.mCreated);
    paramPrintWriter.print("mResumed=");
    paramPrintWriter.print(this.mResumed);
    paramPrintWriter.print(" mStopped=");
    paramPrintWriter.print(this.mStopped);
    paramPrintWriter.print(" mReallyStopped=");
    paramPrintWriter.println(this.mReallyStopped);
    if (this.mLoaderManager != null) {
      this.mLoaderManager.a(str, paramPrintWriter);
    }
    this.mFragments.mHost.mFragmentManager.dump(paramString, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
  }
  
  public Object getLastCustomNonConfigurationInstance()
  {
    b localb = (b)getLastNonConfigurationInstance();
    if (localb != null) {
      return localb.xp;
    }
    return null;
  }
  
  public android.arch.lifecycle.c getLifecycle()
  {
    return super.getLifecycle();
  }
  
  public n getSupportFragmentManager()
  {
    return this.mFragments.mHost.mFragmentManager;
  }
  
  public x getSupportLoaderManager()
  {
    if (this.mLoaderManager != null) {
      return this.mLoaderManager;
    }
    this.mLoaderManager = new LoaderManagerImpl(this, getViewModelStore());
    return this.mLoaderManager;
  }
  
  public android.arch.lifecycle.p getViewModelStore()
  {
    if (getApplication() == null) {
      throw new IllegalStateException("Your activity is not yet attached to the Application instance. You can't request ViewModel before onCreate call.");
    }
    if (this.mViewModelStore == null) {
      this.mViewModelStore = new android.arch.lifecycle.p();
    }
    return this.mViewModelStore;
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    this.mFragments.noteStateNotSaved();
    int i = paramInt1 >> 16;
    Object localObject;
    if (i != 0)
    {
      i -= 1;
      localObject = (String)this.mPendingFragmentActivityResults.get(i);
      this.mPendingFragmentActivityResults.remove(i);
      if (localObject == null) {
        Log.w("FragmentActivity", "Activity result delivered for unknown Fragment.");
      }
    }
    do
    {
      return;
      i locali = this.mFragments.findFragmentByWho((String)localObject);
      if (locali == null)
      {
        Log.w("FragmentActivity", "Activity result no fragment exists for who: " + (String)localObject);
        return;
      }
      locali.onActivityResult(0xFFFF & paramInt1, paramInt2, paramIntent);
      return;
      localObject = a.cx();
    } while ((localObject != null) && (((a.b)localObject).cz()));
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  public void onAttachFragment(i parami) {}
  
  public void onBackPressed()
  {
    o localo = this.mFragments.mHost.mFragmentManager;
    boolean bool = localo.isStateSaved();
    if ((bool) && (Build.VERSION.SDK_INT <= 25)) {}
    while ((!bool) && (localo.popBackStackImmediate())) {
      return;
    }
    super.onBackPressed();
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    this.mFragments.noteStateNotSaved();
    this.mFragments.mHost.mFragmentManager.dispatchConfigurationChanged(paramConfiguration);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    Object localObject = this.mFragments;
    ((l)localObject).mHost.mFragmentManager.a(((l)localObject).mHost, ((l)localObject).mHost, null);
    super.onCreate(paramBundle);
    localObject = (b)getLastNonConfigurationInstance();
    if (localObject != null) {
      this.mViewModelStore = ((b)localObject).xq;
    }
    if (paramBundle != null)
    {
      Parcelable localParcelable = paramBundle.getParcelable("android:support:fragments");
      l locall = this.mFragments;
      if (localObject == null) {
        break label184;
      }
      localObject = ((b)localObject).xr;
      locall.mHost.mFragmentManager.a(localParcelable, (p)localObject);
      if (paramBundle.containsKey("android:support:next_request_index"))
      {
        this.mNextCandidateRequestIndex = paramBundle.getInt("android:support:next_request_index");
        localObject = paramBundle.getIntArray("android:support:request_indicies");
        paramBundle = paramBundle.getStringArray("android:support:request_fragment_who");
        if ((localObject != null) && (paramBundle != null) && (localObject.length == paramBundle.length)) {
          break label189;
        }
        Log.w("FragmentActivity", "Invalid requestCode mapping in savedInstanceState.");
      }
    }
    for (;;)
    {
      if (this.mPendingFragmentActivityResults == null)
      {
        this.mPendingFragmentActivityResults = new android.support.v4.g.n();
        this.mNextCandidateRequestIndex = 0;
      }
      this.mFragments.mHost.mFragmentManager.dispatchCreate();
      return;
      label184:
      localObject = null;
      break;
      label189:
      this.mPendingFragmentActivityResults = new android.support.v4.g.n(localObject.length);
      int i = 0;
      while (i < localObject.length)
      {
        this.mPendingFragmentActivityResults.put(localObject[i], paramBundle[i]);
        i += 1;
      }
    }
  }
  
  public boolean onCreatePanelMenu(int paramInt, Menu paramMenu)
  {
    if (paramInt == 0)
    {
      boolean bool = super.onCreatePanelMenu(paramInt, paramMenu);
      l locall = this.mFragments;
      MenuInflater localMenuInflater = getMenuInflater();
      return bool | locall.mHost.mFragmentManager.dispatchCreateOptionsMenu(paramMenu, localMenuInflater);
    }
    return super.onCreatePanelMenu(paramInt, paramMenu);
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    doReallyStop(false);
    if ((this.mViewModelStore != null) && (!this.mRetaining)) {
      this.mViewModelStore.clear();
    }
    this.mFragments.mHost.mFragmentManager.dispatchDestroy();
  }
  
  public void onLowMemory()
  {
    super.onLowMemory();
    this.mFragments.mHost.mFragmentManager.dispatchLowMemory();
  }
  
  public boolean onMenuItemSelected(int paramInt, MenuItem paramMenuItem)
  {
    if (super.onMenuItemSelected(paramInt, paramMenuItem)) {
      return true;
    }
    switch (paramInt)
    {
    default: 
      return false;
    case 0: 
      return this.mFragments.mHost.mFragmentManager.dispatchOptionsItemSelected(paramMenuItem);
    }
    return this.mFragments.mHost.mFragmentManager.dispatchContextItemSelected(paramMenuItem);
  }
  
  public void onMultiWindowModeChanged(boolean paramBoolean)
  {
    this.mFragments.mHost.mFragmentManager.dispatchMultiWindowModeChanged(paramBoolean);
  }
  
  public void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    this.mFragments.noteStateNotSaved();
  }
  
  public void onPanelClosed(int paramInt, Menu paramMenu)
  {
    switch (paramInt)
    {
    }
    for (;;)
    {
      super.onPanelClosed(paramInt, paramMenu);
      return;
      this.mFragments.mHost.mFragmentManager.dispatchOptionsMenuClosed(paramMenu);
    }
  }
  
  public void onPause()
  {
    super.onPause();
    this.mResumed = false;
    if (this.mHandler.hasMessages(2))
    {
      this.mHandler.removeMessages(2);
      onResumeFragments();
    }
    this.mFragments.mHost.mFragmentManager.aa(4);
  }
  
  public void onPictureInPictureModeChanged(boolean paramBoolean)
  {
    this.mFragments.mHost.mFragmentManager.dispatchPictureInPictureModeChanged(paramBoolean);
  }
  
  public void onPostResume()
  {
    super.onPostResume();
    this.mHandler.removeMessages(2);
    onResumeFragments();
    this.mFragments.execPendingActions();
  }
  
  protected boolean onPrepareOptionsPanel(View paramView, Menu paramMenu)
  {
    return super.onPreparePanel(0, paramView, paramMenu);
  }
  
  public boolean onPreparePanel(int paramInt, View paramView, Menu paramMenu)
  {
    if ((paramInt == 0) && (paramMenu != null)) {
      return onPrepareOptionsPanel(paramView, paramMenu) | this.mFragments.mHost.mFragmentManager.dispatchPrepareOptionsMenu(paramMenu);
    }
    return super.onPreparePanel(paramInt, paramView, paramMenu);
  }
  
  void onReallyStop()
  {
    this.mFragments.mHost.mFragmentManager.aa(2);
  }
  
  public void onRequestPermissionsResult(int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    this.mFragments.noteStateNotSaved();
    int i = paramInt >> 16 & 0xFFFF;
    String str;
    if (i != 0)
    {
      i -= 1;
      str = (String)this.mPendingFragmentActivityResults.get(i);
      this.mPendingFragmentActivityResults.remove(i);
      if (str == null) {
        Log.w("FragmentActivity", "Activity result delivered for unknown Fragment.");
      }
    }
    else
    {
      return;
    }
    i locali = this.mFragments.findFragmentByWho(str);
    if (locali == null)
    {
      Log.w("FragmentActivity", "Activity result no fragment exists for who: " + str);
      return;
    }
    locali.onRequestPermissionsResult(paramInt & 0xFFFF, paramArrayOfString, paramArrayOfInt);
  }
  
  public void onResume()
  {
    super.onResume();
    this.mHandler.sendEmptyMessage(2);
    this.mResumed = true;
    this.mFragments.execPendingActions();
  }
  
  public void onResumeFragments()
  {
    this.mFragments.mHost.mFragmentManager.dispatchResume();
  }
  
  public Object onRetainCustomNonConfigurationInstance()
  {
    return null;
  }
  
  public final Object onRetainNonConfigurationInstance()
  {
    if (this.mStopped) {
      doReallyStop(true);
    }
    Object localObject1 = onRetainCustomNonConfigurationInstance();
    Object localObject2 = this.mFragments.mHost.mFragmentManager;
    o.a(((o)localObject2).xV);
    localObject2 = ((o)localObject2).xV;
    if ((localObject2 == null) && (this.mViewModelStore == null) && (localObject1 == null)) {
      return null;
    }
    b localb = new b();
    localb.xp = localObject1;
    localb.xq = this.mViewModelStore;
    localb.xr = ((p)localObject2);
    return localb;
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    markFragmentsCreated();
    Object localObject = this.mFragments.mHost.mFragmentManager.saveAllState();
    if (localObject != null) {
      paramBundle.putParcelable("android:support:fragments", (Parcelable)localObject);
    }
    if (this.mPendingFragmentActivityResults.size() > 0)
    {
      paramBundle.putInt("android:support:next_request_index", this.mNextCandidateRequestIndex);
      localObject = new int[this.mPendingFragmentActivityResults.size()];
      String[] arrayOfString = new String[this.mPendingFragmentActivityResults.size()];
      int i = 0;
      while (i < this.mPendingFragmentActivityResults.size())
      {
        localObject[i] = this.mPendingFragmentActivityResults.keyAt(i);
        arrayOfString[i] = ((String)this.mPendingFragmentActivityResults.valueAt(i));
        i += 1;
      }
      paramBundle.putIntArray("android:support:request_indicies", (int[])localObject);
      paramBundle.putStringArray("android:support:request_fragment_who", arrayOfString);
    }
  }
  
  public void onStart()
  {
    super.onStart();
    this.mStopped = false;
    this.mReallyStopped = false;
    this.mHandler.removeMessages(1);
    if (!this.mCreated)
    {
      this.mCreated = true;
      this.mFragments.mHost.mFragmentManager.dispatchActivityCreated();
    }
    this.mFragments.noteStateNotSaved();
    this.mFragments.execPendingActions();
    this.mFragments.mHost.mFragmentManager.dispatchStart();
  }
  
  public void onStateNotSaved()
  {
    this.mFragments.noteStateNotSaved();
  }
  
  public void onStop()
  {
    super.onStop();
    this.mStopped = true;
    markFragmentsCreated();
    this.mHandler.sendEmptyMessage(1);
    this.mFragments.mHost.mFragmentManager.dispatchStop();
  }
  
  void requestPermissionsFromFragment(i parami, String[] paramArrayOfString, int paramInt)
  {
    if (paramInt == -1)
    {
      a.a(this, paramArrayOfString, paramInt);
      return;
    }
    checkForValidRequestCode(paramInt);
    try
    {
      this.mRequestedPermissionsFromFragment = true;
      a.a(this, paramArrayOfString, (allocateRequestIndex(parami) + 1 << 16) + (0xFFFF & paramInt));
      return;
    }
    finally
    {
      this.mRequestedPermissionsFromFragment = false;
    }
  }
  
  public void setEnterSharedElementCallback(ag paramag)
  {
    a.a(this, paramag);
  }
  
  public void setExitSharedElementCallback(ag paramag)
  {
    a.b(this, paramag);
  }
  
  public void startActivityForResult(Intent paramIntent, int paramInt)
  {
    if ((!this.mStartedActivityFromFragment) && (paramInt != -1)) {
      checkForValidRequestCode(paramInt);
    }
    super.startActivityForResult(paramIntent, paramInt);
  }
  
  public void startActivityFromFragment(i parami, Intent paramIntent, int paramInt)
  {
    startActivityFromFragment(parami, paramIntent, paramInt, null);
  }
  
  public void startActivityFromFragment(i parami, Intent paramIntent, int paramInt, Bundle paramBundle)
  {
    this.mStartedActivityFromFragment = true;
    if (paramInt == -1) {}
    try
    {
      a.a(this, paramIntent, -1, paramBundle);
      return;
    }
    finally
    {
      this.mStartedActivityFromFragment = false;
    }
    checkForValidRequestCode(paramInt);
    a.a(this, paramIntent, (allocateRequestIndex(parami) + 1 << 16) + (0xFFFF & paramInt), paramBundle);
    this.mStartedActivityFromFragment = false;
  }
  
  public void startIntentSenderFromFragment(i parami, IntentSender paramIntentSender, int paramInt1, Intent paramIntent, int paramInt2, int paramInt3, int paramInt4, Bundle paramBundle)
    throws IntentSender.SendIntentException
  {
    this.mStartedIntentSenderFromFragment = true;
    if (paramInt1 == -1) {}
    try
    {
      a.a(this, paramIntentSender, paramInt1, paramIntent, paramInt2, paramInt3, paramInt4, paramBundle);
      return;
    }
    finally
    {
      this.mStartedIntentSenderFromFragment = false;
    }
    checkForValidRequestCode(paramInt1);
    a.a(this, paramIntentSender, (allocateRequestIndex(parami) + 1 << 16) + (0xFFFF & paramInt1), paramIntent, paramInt2, paramInt3, paramInt4, paramBundle);
    this.mStartedIntentSenderFromFragment = false;
  }
  
  public void supportFinishAfterTransition()
  {
    a.c(this);
  }
  
  @Deprecated
  public void supportInvalidateOptionsMenu()
  {
    invalidateOptionsMenu();
  }
  
  public void supportPostponeEnterTransition()
  {
    a.d(this);
  }
  
  public void supportStartPostponedEnterTransition()
  {
    a.e(this);
  }
  
  public final void validateRequestPermissionsRequestCode(int paramInt)
  {
    if ((!this.mRequestedPermissionsFromFragment) && (paramInt != -1)) {
      checkForValidRequestCode(paramInt);
    }
  }
  
  final class a
    extends m<j>
  {
    public a()
    {
      super();
    }
    
    public final void a(i parami, Intent paramIntent, int paramInt, Bundle paramBundle)
    {
      j.this.startActivityFromFragment(parami, paramIntent, paramInt, paramBundle);
    }
    
    public final void a(i parami, IntentSender paramIntentSender, int paramInt1, Intent paramIntent, int paramInt2, int paramInt3, int paramInt4, Bundle paramBundle)
      throws IntentSender.SendIntentException
    {
      j.this.startIntentSenderFromFragment(parami, paramIntentSender, paramInt1, paramIntent, paramInt2, paramInt3, paramInt4, paramBundle);
    }
    
    public final void a(i parami, String[] paramArrayOfString, int paramInt)
    {
      j.this.requestPermissionsFromFragment(parami, paramArrayOfString, paramInt);
    }
    
    public final void a(String paramString, PrintWriter paramPrintWriter, String[] paramArrayOfString)
    {
      j.this.dump(paramString, null, paramPrintWriter, paramArrayOfString);
    }
    
    public final boolean cE()
    {
      return !j.this.isFinishing();
    }
    
    public final void cF()
    {
      j.this.supportInvalidateOptionsMenu();
    }
    
    public final void onAttachFragment(i parami)
    {
      j.this.onAttachFragment(parami);
    }
    
    public final View onFindViewById(int paramInt)
    {
      return j.this.findViewById(paramInt);
    }
    
    public final LayoutInflater onGetLayoutInflater()
    {
      return j.this.getLayoutInflater().cloneInContext(j.this);
    }
    
    public final int onGetWindowAnimations()
    {
      Window localWindow = j.this.getWindow();
      if (localWindow == null) {
        return 0;
      }
      return localWindow.getAttributes().windowAnimations;
    }
    
    public final boolean onHasView()
    {
      Window localWindow = j.this.getWindow();
      return (localWindow != null) && (localWindow.peekDecorView() != null);
    }
    
    public final boolean onHasWindowAnimations()
    {
      return j.this.getWindow() != null;
    }
    
    public final boolean v(String paramString)
    {
      return a.a(j.this, paramString);
    }
  }
  
  static final class b
  {
    Object xp;
    android.arch.lifecycle.p xq;
    p xr;
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/app/j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */