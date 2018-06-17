package android.support.v4.app;

import android.animation.Animator;
import android.app.Activity;
import android.arch.lifecycle.c;
import android.arch.lifecycle.c.a;
import android.arch.lifecycle.e;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.IntentSender.SendIntentException;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v4.g.d;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnCreateContextMenuListener;
import android.view.ViewGroup;
import android.view.animation.Animation;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;

public class i
  implements e, ComponentCallbacks, View.OnCreateContextMenuListener
{
  static final int ACTIVITY_CREATED = 2;
  static final int CREATED = 1;
  static final int INITIALIZING = 0;
  static final int RESUMED = 5;
  static final int STARTED = 4;
  static final int STOPPED = 3;
  static final Object USE_DEFAULT_TRANSITION = new Object();
  private static final android.support.v4.g.m<String, Class<?>> sClassMap = new android.support.v4.g.m();
  boolean mAdded;
  a mAnimationInfo;
  Bundle mArguments;
  int mBackStackNesting;
  boolean mCalled;
  o mChildFragmentManager;
  p mChildNonConfig;
  ViewGroup mContainer;
  int mContainerId;
  boolean mDeferStart;
  boolean mDetached;
  int mFragmentId;
  o mFragmentManager;
  boolean mFromLayout;
  boolean mHasMenu;
  boolean mHidden;
  boolean mHiddenChanged;
  m mHost;
  boolean mInLayout;
  int mIndex = -1;
  View mInnerView;
  boolean mIsCreated;
  boolean mIsNewlyAdded;
  LayoutInflater mLayoutInflater;
  android.arch.lifecycle.f mLifecycleRegistry = new android.arch.lifecycle.f(this);
  LoaderManagerImpl mLoaderManager;
  boolean mMenuVisible = true;
  i mParentFragment;
  boolean mPerformedCreateView;
  float mPostponedAlpha;
  boolean mRemoving;
  boolean mRestored;
  boolean mRetainInstance;
  boolean mRetaining;
  Bundle mSavedFragmentState;
  Boolean mSavedUserVisibleHint;
  SparseArray<Parcelable> mSavedViewState;
  int mState = 0;
  String mTag;
  i mTarget;
  int mTargetIndex = -1;
  int mTargetRequestCode;
  boolean mUserVisibleHint = true;
  View mView;
  android.arch.lifecycle.p mViewModelStore;
  String mWho;
  
  private void callStartTransitionListener()
  {
    c localc = null;
    if (this.mAnimationInfo == null) {}
    for (;;)
    {
      if (localc != null) {
        localc.cD();
      }
      return;
      this.mAnimationInfo.xk = false;
      localc = this.mAnimationInfo.xl;
      this.mAnimationInfo.xl = null;
    }
  }
  
  private a ensureAnimationInfo()
  {
    if (this.mAnimationInfo == null) {
      this.mAnimationInfo = new a();
    }
    return this.mAnimationInfo;
  }
  
  public static i instantiate(Context paramContext, String paramString)
  {
    return instantiate(paramContext, paramString, null);
  }
  
  public static i instantiate(Context paramContext, String paramString, Bundle paramBundle)
  {
    try
    {
      Class localClass2 = (Class)sClassMap.get(paramString);
      Class localClass1 = localClass2;
      if (localClass2 == null)
      {
        localClass1 = paramContext.getClassLoader().loadClass(paramString);
        sClassMap.put(paramString, localClass1);
      }
      paramContext = (i)localClass1.getConstructor(new Class[0]).newInstance(new Object[0]);
      if (paramBundle != null)
      {
        paramBundle.setClassLoader(paramContext.getClass().getClassLoader());
        paramContext.setArguments(paramBundle);
      }
      return paramContext;
    }
    catch (ClassNotFoundException paramContext)
    {
      throw new b("Unable to instantiate fragment " + paramString + ": make sure class name exists, is public, and has an empty constructor that is public", paramContext);
    }
    catch (InstantiationException paramContext)
    {
      throw new b("Unable to instantiate fragment " + paramString + ": make sure class name exists, is public, and has an empty constructor that is public", paramContext);
    }
    catch (IllegalAccessException paramContext)
    {
      throw new b("Unable to instantiate fragment " + paramString + ": make sure class name exists, is public, and has an empty constructor that is public", paramContext);
    }
    catch (NoSuchMethodException paramContext)
    {
      throw new b("Unable to instantiate fragment " + paramString + ": could not find Fragment constructor", paramContext);
    }
    catch (InvocationTargetException paramContext)
    {
      throw new b("Unable to instantiate fragment " + paramString + ": calling Fragment constructor caused an exception", paramContext);
    }
  }
  
  static boolean isSupportFragmentClass(Context paramContext, String paramString)
  {
    try
    {
      Class localClass2 = (Class)sClassMap.get(paramString);
      Class localClass1 = localClass2;
      if (localClass2 == null)
      {
        localClass1 = paramContext.getClassLoader().loadClass(paramString);
        sClassMap.put(paramString, localClass1);
      }
      boolean bool = i.class.isAssignableFrom(localClass1);
      return bool;
    }
    catch (ClassNotFoundException paramContext) {}
    return false;
  }
  
  public void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mFragmentId=#");
    paramPrintWriter.print(Integer.toHexString(this.mFragmentId));
    paramPrintWriter.print(" mContainerId=#");
    paramPrintWriter.print(Integer.toHexString(this.mContainerId));
    paramPrintWriter.print(" mTag=");
    paramPrintWriter.println(this.mTag);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mState=");
    paramPrintWriter.print(this.mState);
    paramPrintWriter.print(" mIndex=");
    paramPrintWriter.print(this.mIndex);
    paramPrintWriter.print(" mWho=");
    paramPrintWriter.print(this.mWho);
    paramPrintWriter.print(" mBackStackNesting=");
    paramPrintWriter.println(this.mBackStackNesting);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mAdded=");
    paramPrintWriter.print(this.mAdded);
    paramPrintWriter.print(" mRemoving=");
    paramPrintWriter.print(this.mRemoving);
    paramPrintWriter.print(" mFromLayout=");
    paramPrintWriter.print(this.mFromLayout);
    paramPrintWriter.print(" mInLayout=");
    paramPrintWriter.println(this.mInLayout);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mHidden=");
    paramPrintWriter.print(this.mHidden);
    paramPrintWriter.print(" mDetached=");
    paramPrintWriter.print(this.mDetached);
    paramPrintWriter.print(" mMenuVisible=");
    paramPrintWriter.print(this.mMenuVisible);
    paramPrintWriter.print(" mHasMenu=");
    paramPrintWriter.println(this.mHasMenu);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mRetainInstance=");
    paramPrintWriter.print(this.mRetainInstance);
    paramPrintWriter.print(" mRetaining=");
    paramPrintWriter.print(this.mRetaining);
    paramPrintWriter.print(" mUserVisibleHint=");
    paramPrintWriter.println(this.mUserVisibleHint);
    if (this.mFragmentManager != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mFragmentManager=");
      paramPrintWriter.println(this.mFragmentManager);
    }
    if (this.mHost != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mHost=");
      paramPrintWriter.println(this.mHost);
    }
    if (this.mParentFragment != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mParentFragment=");
      paramPrintWriter.println(this.mParentFragment);
    }
    if (this.mArguments != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mArguments=");
      paramPrintWriter.println(this.mArguments);
    }
    if (this.mSavedFragmentState != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mSavedFragmentState=");
      paramPrintWriter.println(this.mSavedFragmentState);
    }
    if (this.mSavedViewState != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mSavedViewState=");
      paramPrintWriter.println(this.mSavedViewState);
    }
    if (this.mTarget != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mTarget=");
      paramPrintWriter.print(this.mTarget);
      paramPrintWriter.print(" mTargetRequestCode=");
      paramPrintWriter.println(this.mTargetRequestCode);
    }
    if (getNextAnim() != 0)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mNextAnim=");
      paramPrintWriter.println(getNextAnim());
    }
    if (this.mContainer != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mContainer=");
      paramPrintWriter.println(this.mContainer);
    }
    if (this.mView != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mView=");
      paramPrintWriter.println(this.mView);
    }
    if (this.mInnerView != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mInnerView=");
      paramPrintWriter.println(this.mView);
    }
    if (getAnimatingAway() != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mAnimatingAway=");
      paramPrintWriter.println(getAnimatingAway());
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mStateAfterAnimating=");
      paramPrintWriter.println(getStateAfterAnimating());
    }
    if (this.mLoaderManager != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Loader Manager:");
      this.mLoaderManager.a(paramString + "  ", paramPrintWriter);
    }
    if (this.mChildFragmentManager != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Child " + this.mChildFragmentManager + ":");
      this.mChildFragmentManager.dump(paramString + "  ", paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    }
  }
  
  public final boolean equals(Object paramObject)
  {
    return super.equals(paramObject);
  }
  
  i findFragmentByWho(String paramString)
  {
    if (paramString.equals(this.mWho)) {
      return this;
    }
    if (this.mChildFragmentManager != null) {
      return this.mChildFragmentManager.findFragmentByWho(paramString);
    }
    return null;
  }
  
  public final j getActivity()
  {
    if (this.mHost == null) {
      return null;
    }
    return (j)this.mHost.xs;
  }
  
  public boolean getAllowEnterTransitionOverlap()
  {
    if ((this.mAnimationInfo == null) || (this.mAnimationInfo.xh == null)) {
      return true;
    }
    return this.mAnimationInfo.xh.booleanValue();
  }
  
  public boolean getAllowReturnTransitionOverlap()
  {
    if ((this.mAnimationInfo == null) || (this.mAnimationInfo.xg == null)) {
      return true;
    }
    return this.mAnimationInfo.xg.booleanValue();
  }
  
  View getAnimatingAway()
  {
    if (this.mAnimationInfo == null) {
      return null;
    }
    return this.mAnimationInfo.wU;
  }
  
  Animator getAnimator()
  {
    if (this.mAnimationInfo == null) {
      return null;
    }
    return this.mAnimationInfo.wV;
  }
  
  public final Bundle getArguments()
  {
    return this.mArguments;
  }
  
  public final n getChildFragmentManager()
  {
    if (this.mChildFragmentManager == null)
    {
      instantiateChildFragmentManager();
      if (this.mState < 5) {
        break label31;
      }
      this.mChildFragmentManager.dispatchResume();
    }
    for (;;)
    {
      return this.mChildFragmentManager;
      label31:
      if (this.mState >= 4) {
        this.mChildFragmentManager.dispatchStart();
      } else if (this.mState >= 2) {
        this.mChildFragmentManager.dispatchActivityCreated();
      } else if (this.mState > 0) {
        this.mChildFragmentManager.dispatchCreate();
      }
    }
  }
  
  public Context getContext()
  {
    if (this.mHost == null) {
      return null;
    }
    return this.mHost.mContext;
  }
  
  public Object getEnterTransition()
  {
    if (this.mAnimationInfo == null) {
      return null;
    }
    return this.mAnimationInfo.xa;
  }
  
  ag getEnterTransitionCallback()
  {
    if (this.mAnimationInfo == null) {
      return null;
    }
    return this.mAnimationInfo.xi;
  }
  
  public Object getExitTransition()
  {
    if (this.mAnimationInfo == null) {
      return null;
    }
    return this.mAnimationInfo.xc;
  }
  
  ag getExitTransitionCallback()
  {
    if (this.mAnimationInfo == null) {
      return null;
    }
    return this.mAnimationInfo.xj;
  }
  
  public final n getFragmentManager()
  {
    return this.mFragmentManager;
  }
  
  public final Object getHost()
  {
    if (this.mHost == null) {
      return null;
    }
    return this.mHost.onGetHost();
  }
  
  public final int getId()
  {
    return this.mFragmentId;
  }
  
  public final LayoutInflater getLayoutInflater()
  {
    if (this.mLayoutInflater == null) {
      return performGetLayoutInflater(null);
    }
    return this.mLayoutInflater;
  }
  
  @Deprecated
  public LayoutInflater getLayoutInflater(Bundle paramBundle)
  {
    if (this.mHost == null) {
      throw new IllegalStateException("onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager.");
    }
    paramBundle = this.mHost.onGetLayoutInflater();
    getChildFragmentManager();
    android.support.v4.view.f.b(paramBundle, this.mChildFragmentManager);
    return paramBundle;
  }
  
  public c getLifecycle()
  {
    return this.mLifecycleRegistry;
  }
  
  public x getLoaderManager()
  {
    if (this.mLoaderManager != null) {
      return this.mLoaderManager;
    }
    this.mLoaderManager = new LoaderManagerImpl(this, getViewModelStore());
    return this.mLoaderManager;
  }
  
  int getNextAnim()
  {
    if (this.mAnimationInfo == null) {
      return 0;
    }
    return this.mAnimationInfo.wX;
  }
  
  int getNextTransition()
  {
    if (this.mAnimationInfo == null) {
      return 0;
    }
    return this.mAnimationInfo.wY;
  }
  
  int getNextTransitionStyle()
  {
    if (this.mAnimationInfo == null) {
      return 0;
    }
    return this.mAnimationInfo.wZ;
  }
  
  public final i getParentFragment()
  {
    return this.mParentFragment;
  }
  
  public Object getReenterTransition()
  {
    if (this.mAnimationInfo == null) {
      return null;
    }
    if (this.mAnimationInfo.xd == USE_DEFAULT_TRANSITION) {
      return getExitTransition();
    }
    return this.mAnimationInfo.xd;
  }
  
  public final Resources getResources()
  {
    return requireContext().getResources();
  }
  
  public final boolean getRetainInstance()
  {
    return this.mRetainInstance;
  }
  
  public Object getReturnTransition()
  {
    if (this.mAnimationInfo == null) {
      return null;
    }
    if (this.mAnimationInfo.xb == USE_DEFAULT_TRANSITION) {
      return getEnterTransition();
    }
    return this.mAnimationInfo.xb;
  }
  
  public Object getSharedElementEnterTransition()
  {
    if (this.mAnimationInfo == null) {
      return null;
    }
    return this.mAnimationInfo.xe;
  }
  
  public Object getSharedElementReturnTransition()
  {
    if (this.mAnimationInfo == null) {
      return null;
    }
    if (this.mAnimationInfo.xf == USE_DEFAULT_TRANSITION) {
      return getSharedElementEnterTransition();
    }
    return this.mAnimationInfo.xf;
  }
  
  int getStateAfterAnimating()
  {
    if (this.mAnimationInfo == null) {
      return 0;
    }
    return this.mAnimationInfo.wW;
  }
  
  public final String getString(int paramInt)
  {
    return getResources().getString(paramInt);
  }
  
  public final String getString(int paramInt, Object... paramVarArgs)
  {
    return getResources().getString(paramInt, paramVarArgs);
  }
  
  public final String getTag()
  {
    return this.mTag;
  }
  
  public final i getTargetFragment()
  {
    return this.mTarget;
  }
  
  public final int getTargetRequestCode()
  {
    return this.mTargetRequestCode;
  }
  
  public final CharSequence getText(int paramInt)
  {
    return getResources().getText(paramInt);
  }
  
  public boolean getUserVisibleHint()
  {
    return this.mUserVisibleHint;
  }
  
  public View getView()
  {
    return this.mView;
  }
  
  public android.arch.lifecycle.p getViewModelStore()
  {
    if (getContext() == null) {
      throw new IllegalStateException("Can't access ViewModels from detached fragment");
    }
    if (this.mViewModelStore == null) {
      this.mViewModelStore = new android.arch.lifecycle.p();
    }
    return this.mViewModelStore;
  }
  
  public final boolean hasOptionsMenu()
  {
    return this.mHasMenu;
  }
  
  public final int hashCode()
  {
    return super.hashCode();
  }
  
  void initState()
  {
    this.mIndex = -1;
    this.mWho = null;
    this.mAdded = false;
    this.mRemoving = false;
    this.mFromLayout = false;
    this.mInLayout = false;
    this.mRestored = false;
    this.mBackStackNesting = 0;
    this.mFragmentManager = null;
    this.mChildFragmentManager = null;
    this.mHost = null;
    this.mFragmentId = 0;
    this.mContainerId = 0;
    this.mTag = null;
    this.mHidden = false;
    this.mDetached = false;
    this.mRetaining = false;
  }
  
  void instantiateChildFragmentManager()
  {
    if (this.mHost == null) {
      throw new IllegalStateException("Fragment has not been attached yet.");
    }
    this.mChildFragmentManager = new o();
    this.mChildFragmentManager.a(this.mHost, new k()
    {
      public final i instantiate(Context paramAnonymousContext, String paramAnonymousString, Bundle paramAnonymousBundle)
      {
        return i.this.mHost.instantiate(paramAnonymousContext, paramAnonymousString, paramAnonymousBundle);
      }
      
      public final View onFindViewById(int paramAnonymousInt)
      {
        if (i.this.mView == null) {
          throw new IllegalStateException("Fragment does not have a view");
        }
        return i.this.mView.findViewById(paramAnonymousInt);
      }
      
      public final boolean onHasView()
      {
        return i.this.mView != null;
      }
    }, this);
  }
  
  public final boolean isAdded()
  {
    return (this.mHost != null) && (this.mAdded);
  }
  
  public final boolean isDetached()
  {
    return this.mDetached;
  }
  
  public final boolean isHidden()
  {
    return this.mHidden;
  }
  
  boolean isHideReplaced()
  {
    if (this.mAnimationInfo == null) {
      return false;
    }
    return this.mAnimationInfo.xm;
  }
  
  final boolean isInBackStack()
  {
    return this.mBackStackNesting > 0;
  }
  
  public final boolean isInLayout()
  {
    return this.mInLayout;
  }
  
  public final boolean isMenuVisible()
  {
    return this.mMenuVisible;
  }
  
  boolean isPostponed()
  {
    if (this.mAnimationInfo == null) {
      return false;
    }
    return this.mAnimationInfo.xk;
  }
  
  public final boolean isRemoving()
  {
    return this.mRemoving;
  }
  
  public final boolean isResumed()
  {
    return this.mState >= 5;
  }
  
  public final boolean isStateSaved()
  {
    if (this.mFragmentManager == null) {
      return false;
    }
    return this.mFragmentManager.isStateSaved();
  }
  
  public final boolean isVisible()
  {
    return (isAdded()) && (!isHidden()) && (this.mView != null) && (this.mView.getWindowToken() != null) && (this.mView.getVisibility() == 0);
  }
  
  void noteStateNotSaved()
  {
    if (this.mChildFragmentManager != null) {
      this.mChildFragmentManager.noteStateNotSaved();
    }
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    this.mCalled = true;
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent) {}
  
  @Deprecated
  public void onAttach(Activity paramActivity)
  {
    this.mCalled = true;
  }
  
  public void onAttach(Context paramContext)
  {
    this.mCalled = true;
    if (this.mHost == null) {}
    for (paramContext = null;; paramContext = this.mHost.xs)
    {
      if (paramContext != null)
      {
        this.mCalled = false;
        onAttach(paramContext);
      }
      return;
    }
  }
  
  public void onAttachFragment(i parami) {}
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    this.mCalled = true;
  }
  
  public boolean onContextItemSelected(MenuItem paramMenuItem)
  {
    return false;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    int i = 1;
    this.mCalled = true;
    restoreChildFragmentState(paramBundle);
    if (this.mChildFragmentManager != null) {
      if (this.mChildFragmentManager.xF <= 0) {
        break label41;
      }
    }
    for (;;)
    {
      if (i == 0) {
        this.mChildFragmentManager.dispatchCreate();
      }
      return;
      label41:
      i = 0;
    }
  }
  
  public Animation onCreateAnimation(int paramInt1, boolean paramBoolean, int paramInt2)
  {
    return null;
  }
  
  public Animator onCreateAnimator(int paramInt1, boolean paramBoolean, int paramInt2)
  {
    return null;
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    getActivity().onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater) {}
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return null;
  }
  
  public void onDestroy()
  {
    this.mCalled = true;
    if ((this.mViewModelStore != null) && (!this.mHost.mFragmentManager.xL)) {
      this.mViewModelStore.clear();
    }
  }
  
  public void onDestroyOptionsMenu() {}
  
  public void onDestroyView()
  {
    this.mCalled = true;
  }
  
  public void onDetach()
  {
    this.mCalled = true;
  }
  
  public LayoutInflater onGetLayoutInflater(Bundle paramBundle)
  {
    return getLayoutInflater(paramBundle);
  }
  
  public void onHiddenChanged(boolean paramBoolean) {}
  
  @Deprecated
  public void onInflate(Activity paramActivity, AttributeSet paramAttributeSet, Bundle paramBundle)
  {
    this.mCalled = true;
  }
  
  public void onInflate(Context paramContext, AttributeSet paramAttributeSet, Bundle paramBundle)
  {
    this.mCalled = true;
    if (this.mHost == null) {}
    for (paramContext = null;; paramContext = this.mHost.xs)
    {
      if (paramContext != null)
      {
        this.mCalled = false;
        onInflate(paramContext, paramAttributeSet, paramBundle);
      }
      return;
    }
  }
  
  public void onLowMemory()
  {
    this.mCalled = true;
  }
  
  public void onMultiWindowModeChanged(boolean paramBoolean) {}
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    return false;
  }
  
  public void onOptionsMenuClosed(Menu paramMenu) {}
  
  public void onPause()
  {
    this.mCalled = true;
  }
  
  public void onPictureInPictureModeChanged(boolean paramBoolean) {}
  
  public void onPrepareOptionsMenu(Menu paramMenu) {}
  
  public void onRequestPermissionsResult(int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt) {}
  
  public void onResume()
  {
    this.mCalled = true;
  }
  
  public void onSaveInstanceState(Bundle paramBundle) {}
  
  public void onStart()
  {
    this.mCalled = true;
  }
  
  public void onStop()
  {
    this.mCalled = true;
  }
  
  public void onViewCreated(View paramView, Bundle paramBundle) {}
  
  public void onViewStateRestored(Bundle paramBundle)
  {
    this.mCalled = true;
  }
  
  n peekChildFragmentManager()
  {
    return this.mChildFragmentManager;
  }
  
  void performActivityCreated(Bundle paramBundle)
  {
    if (this.mChildFragmentManager != null) {
      this.mChildFragmentManager.noteStateNotSaved();
    }
    this.mState = 2;
    this.mCalled = false;
    onActivityCreated(paramBundle);
    if (!this.mCalled) {
      throw new ah("Fragment " + this + " did not call through to super.onActivityCreated()");
    }
    if (this.mChildFragmentManager != null) {
      this.mChildFragmentManager.dispatchActivityCreated();
    }
  }
  
  void performConfigurationChanged(Configuration paramConfiguration)
  {
    onConfigurationChanged(paramConfiguration);
    if (this.mChildFragmentManager != null) {
      this.mChildFragmentManager.dispatchConfigurationChanged(paramConfiguration);
    }
  }
  
  boolean performContextItemSelected(MenuItem paramMenuItem)
  {
    if (!this.mHidden)
    {
      if (onContextItemSelected(paramMenuItem)) {}
      while ((this.mChildFragmentManager != null) && (this.mChildFragmentManager.dispatchContextItemSelected(paramMenuItem))) {
        return true;
      }
    }
    return false;
  }
  
  void performCreate(Bundle paramBundle)
  {
    if (this.mChildFragmentManager != null) {
      this.mChildFragmentManager.noteStateNotSaved();
    }
    this.mState = 1;
    this.mCalled = false;
    onCreate(paramBundle);
    this.mIsCreated = true;
    if (!this.mCalled) {
      throw new ah("Fragment " + this + " did not call through to super.onCreate()");
    }
    this.mLifecycleRegistry.a(c.a.ON_CREATE);
  }
  
  boolean performCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    boolean bool2 = false;
    boolean bool3 = false;
    if (!this.mHidden)
    {
      boolean bool1 = bool3;
      if (this.mHasMenu)
      {
        bool1 = bool3;
        if (this.mMenuVisible)
        {
          bool1 = true;
          onCreateOptionsMenu(paramMenu, paramMenuInflater);
        }
      }
      bool2 = bool1;
      if (this.mChildFragmentManager != null) {
        bool2 = bool1 | this.mChildFragmentManager.dispatchCreateOptionsMenu(paramMenu, paramMenuInflater);
      }
    }
    return bool2;
  }
  
  View performCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    if (this.mChildFragmentManager != null) {
      this.mChildFragmentManager.noteStateNotSaved();
    }
    this.mPerformedCreateView = true;
    return onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
  }
  
  void performDestroy()
  {
    this.mLifecycleRegistry.a(c.a.ON_DESTROY);
    if (this.mChildFragmentManager != null) {
      this.mChildFragmentManager.dispatchDestroy();
    }
    this.mState = 0;
    this.mCalled = false;
    this.mIsCreated = false;
    onDestroy();
    if (!this.mCalled) {
      throw new ah("Fragment " + this + " did not call through to super.onDestroy()");
    }
    this.mChildFragmentManager = null;
  }
  
  void performDestroyView()
  {
    if (this.mChildFragmentManager != null) {
      this.mChildFragmentManager.aa(1);
    }
    this.mState = 1;
    this.mCalled = false;
    onDestroyView();
    if (!this.mCalled) {
      throw new ah("Fragment " + this + " did not call through to super.onDestroyView()");
    }
    if (this.mLoaderManager != null) {
      this.mLoaderManager.zg.cW();
    }
    this.mPerformedCreateView = false;
  }
  
  void performDetach()
  {
    this.mCalled = false;
    onDetach();
    this.mLayoutInflater = null;
    if (!this.mCalled) {
      throw new ah("Fragment " + this + " did not call through to super.onDetach()");
    }
    if (this.mChildFragmentManager != null)
    {
      if (!this.mRetaining) {
        throw new IllegalStateException("Child FragmentManager of " + this + " was not  destroyed and this fragment is not retaining instance");
      }
      this.mChildFragmentManager.dispatchDestroy();
      this.mChildFragmentManager = null;
    }
  }
  
  LayoutInflater performGetLayoutInflater(Bundle paramBundle)
  {
    this.mLayoutInflater = onGetLayoutInflater(paramBundle);
    return this.mLayoutInflater;
  }
  
  void performLowMemory()
  {
    onLowMemory();
    if (this.mChildFragmentManager != null) {
      this.mChildFragmentManager.dispatchLowMemory();
    }
  }
  
  void performMultiWindowModeChanged(boolean paramBoolean)
  {
    onMultiWindowModeChanged(paramBoolean);
    if (this.mChildFragmentManager != null) {
      this.mChildFragmentManager.dispatchMultiWindowModeChanged(paramBoolean);
    }
  }
  
  boolean performOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (!this.mHidden)
    {
      if ((this.mHasMenu) && (this.mMenuVisible) && (onOptionsItemSelected(paramMenuItem))) {}
      while ((this.mChildFragmentManager != null) && (this.mChildFragmentManager.dispatchOptionsItemSelected(paramMenuItem))) {
        return true;
      }
    }
    return false;
  }
  
  void performOptionsMenuClosed(Menu paramMenu)
  {
    if (!this.mHidden)
    {
      if ((this.mHasMenu) && (this.mMenuVisible)) {
        onOptionsMenuClosed(paramMenu);
      }
      if (this.mChildFragmentManager != null) {
        this.mChildFragmentManager.dispatchOptionsMenuClosed(paramMenu);
      }
    }
  }
  
  void performPause()
  {
    this.mLifecycleRegistry.a(c.a.ON_PAUSE);
    if (this.mChildFragmentManager != null) {
      this.mChildFragmentManager.aa(4);
    }
    this.mState = 4;
    this.mCalled = false;
    onPause();
    if (!this.mCalled) {
      throw new ah("Fragment " + this + " did not call through to super.onPause()");
    }
  }
  
  void performPictureInPictureModeChanged(boolean paramBoolean)
  {
    onPictureInPictureModeChanged(paramBoolean);
    if (this.mChildFragmentManager != null) {
      this.mChildFragmentManager.dispatchPictureInPictureModeChanged(paramBoolean);
    }
  }
  
  boolean performPrepareOptionsMenu(Menu paramMenu)
  {
    boolean bool2 = false;
    boolean bool3 = false;
    if (!this.mHidden)
    {
      boolean bool1 = bool3;
      if (this.mHasMenu)
      {
        bool1 = bool3;
        if (this.mMenuVisible)
        {
          bool1 = true;
          onPrepareOptionsMenu(paramMenu);
        }
      }
      bool2 = bool1;
      if (this.mChildFragmentManager != null) {
        bool2 = bool1 | this.mChildFragmentManager.dispatchPrepareOptionsMenu(paramMenu);
      }
    }
    return bool2;
  }
  
  void performReallyStop()
  {
    if (this.mChildFragmentManager != null) {
      this.mChildFragmentManager.aa(2);
    }
    this.mState = 2;
  }
  
  void performResume()
  {
    if (this.mChildFragmentManager != null)
    {
      this.mChildFragmentManager.noteStateNotSaved();
      this.mChildFragmentManager.execPendingActions();
    }
    this.mState = 5;
    this.mCalled = false;
    onResume();
    if (!this.mCalled) {
      throw new ah("Fragment " + this + " did not call through to super.onResume()");
    }
    if (this.mChildFragmentManager != null)
    {
      this.mChildFragmentManager.dispatchResume();
      this.mChildFragmentManager.execPendingActions();
    }
    this.mLifecycleRegistry.a(c.a.ON_RESUME);
  }
  
  void performSaveInstanceState(Bundle paramBundle)
  {
    onSaveInstanceState(paramBundle);
    if (this.mChildFragmentManager != null)
    {
      Parcelable localParcelable = this.mChildFragmentManager.saveAllState();
      if (localParcelable != null) {
        paramBundle.putParcelable("android:support:fragments", localParcelable);
      }
    }
  }
  
  void performStart()
  {
    if (this.mChildFragmentManager != null)
    {
      this.mChildFragmentManager.noteStateNotSaved();
      this.mChildFragmentManager.execPendingActions();
    }
    this.mState = 4;
    this.mCalled = false;
    onStart();
    if (!this.mCalled) {
      throw new ah("Fragment " + this + " did not call through to super.onStart()");
    }
    if (this.mChildFragmentManager != null) {
      this.mChildFragmentManager.dispatchStart();
    }
    this.mLifecycleRegistry.a(c.a.ON_START);
  }
  
  void performStop()
  {
    this.mLifecycleRegistry.a(c.a.ON_STOP);
    if (this.mChildFragmentManager != null) {
      this.mChildFragmentManager.dispatchStop();
    }
    this.mState = 3;
    this.mCalled = false;
    onStop();
    if (!this.mCalled) {
      throw new ah("Fragment " + this + " did not call through to super.onStop()");
    }
  }
  
  public void postponeEnterTransition()
  {
    ensureAnimationInfo().xk = true;
  }
  
  public void registerForContextMenu(View paramView)
  {
    paramView.setOnCreateContextMenuListener(this);
  }
  
  public final void requestPermissions(String[] paramArrayOfString, int paramInt)
  {
    if (this.mHost == null) {
      throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }
    this.mHost.a(this, paramArrayOfString, paramInt);
  }
  
  public final j requireActivity()
  {
    j localj = getActivity();
    if (localj == null) {
      throw new IllegalStateException("Fragment " + this + " not attached to an activity.");
    }
    return localj;
  }
  
  public final Context requireContext()
  {
    Context localContext = getContext();
    if (localContext == null) {
      throw new IllegalStateException("Fragment " + this + " not attached to a context.");
    }
    return localContext;
  }
  
  public final n requireFragmentManager()
  {
    n localn = getFragmentManager();
    if (localn == null) {
      throw new IllegalStateException("Fragment " + this + " not associated with a fragment manager.");
    }
    return localn;
  }
  
  public final Object requireHost()
  {
    Object localObject = getHost();
    if (localObject == null) {
      throw new IllegalStateException("Fragment " + this + " not attached to a host.");
    }
    return localObject;
  }
  
  void restoreChildFragmentState(Bundle paramBundle)
  {
    if (paramBundle != null)
    {
      paramBundle = paramBundle.getParcelable("android:support:fragments");
      if (paramBundle != null)
      {
        if (this.mChildFragmentManager == null) {
          instantiateChildFragmentManager();
        }
        this.mChildFragmentManager.a(paramBundle, this.mChildNonConfig);
        this.mChildNonConfig = null;
        this.mChildFragmentManager.dispatchCreate();
      }
    }
  }
  
  final void restoreViewState(Bundle paramBundle)
  {
    if (this.mSavedViewState != null)
    {
      this.mInnerView.restoreHierarchyState(this.mSavedViewState);
      this.mSavedViewState = null;
    }
    this.mCalled = false;
    onViewStateRestored(paramBundle);
    if (!this.mCalled) {
      throw new ah("Fragment " + this + " did not call through to super.onViewStateRestored()");
    }
  }
  
  public void setAllowEnterTransitionOverlap(boolean paramBoolean)
  {
    ensureAnimationInfo().xh = Boolean.valueOf(paramBoolean);
  }
  
  public void setAllowReturnTransitionOverlap(boolean paramBoolean)
  {
    ensureAnimationInfo().xg = Boolean.valueOf(paramBoolean);
  }
  
  void setAnimatingAway(View paramView)
  {
    ensureAnimationInfo().wU = paramView;
  }
  
  void setAnimator(Animator paramAnimator)
  {
    ensureAnimationInfo().wV = paramAnimator;
  }
  
  public void setArguments(Bundle paramBundle)
  {
    if ((this.mIndex >= 0) && (isStateSaved())) {
      throw new IllegalStateException("Fragment already active and state has been saved");
    }
    this.mArguments = paramBundle;
  }
  
  public void setEnterSharedElementCallback(ag paramag)
  {
    ensureAnimationInfo().xi = paramag;
  }
  
  public void setEnterTransition(Object paramObject)
  {
    ensureAnimationInfo().xa = paramObject;
  }
  
  public void setExitSharedElementCallback(ag paramag)
  {
    ensureAnimationInfo().xj = paramag;
  }
  
  public void setExitTransition(Object paramObject)
  {
    ensureAnimationInfo().xc = paramObject;
  }
  
  public void setHasOptionsMenu(boolean paramBoolean)
  {
    if (this.mHasMenu != paramBoolean)
    {
      this.mHasMenu = paramBoolean;
      if ((isAdded()) && (!isHidden())) {
        this.mHost.cF();
      }
    }
  }
  
  void setHideReplaced(boolean paramBoolean)
  {
    ensureAnimationInfo().xm = paramBoolean;
  }
  
  final void setIndex(int paramInt, i parami)
  {
    this.mIndex = paramInt;
    if (parami != null)
    {
      this.mWho = (parami.mWho + ":" + this.mIndex);
      return;
    }
    this.mWho = ("android:fragment:" + this.mIndex);
  }
  
  public void setInitialSavedState(d paramd)
  {
    if (this.mIndex >= 0) {
      throw new IllegalStateException("Fragment already active");
    }
    if ((paramd != null) && (paramd.xn != null)) {}
    for (paramd = paramd.xn;; paramd = null)
    {
      this.mSavedFragmentState = paramd;
      return;
    }
  }
  
  public void setMenuVisibility(boolean paramBoolean)
  {
    if (this.mMenuVisible != paramBoolean)
    {
      this.mMenuVisible = paramBoolean;
      if ((this.mHasMenu) && (isAdded()) && (!isHidden())) {
        this.mHost.cF();
      }
    }
  }
  
  void setNextAnim(int paramInt)
  {
    if ((this.mAnimationInfo == null) && (paramInt == 0)) {
      return;
    }
    ensureAnimationInfo().wX = paramInt;
  }
  
  void setNextTransition(int paramInt1, int paramInt2)
  {
    if ((this.mAnimationInfo == null) && (paramInt1 == 0) && (paramInt2 == 0)) {
      return;
    }
    ensureAnimationInfo();
    this.mAnimationInfo.wY = paramInt1;
    this.mAnimationInfo.wZ = paramInt2;
  }
  
  void setOnStartEnterTransitionListener(c paramc)
  {
    ensureAnimationInfo();
    if (paramc == this.mAnimationInfo.xl) {}
    do
    {
      return;
      if ((paramc != null) && (this.mAnimationInfo.xl != null)) {
        throw new IllegalStateException("Trying to set a replacement startPostponedEnterTransition on " + this);
      }
      if (this.mAnimationInfo.xk) {
        this.mAnimationInfo.xl = paramc;
      }
    } while (paramc == null);
    paramc.startListening();
  }
  
  public void setReenterTransition(Object paramObject)
  {
    ensureAnimationInfo().xd = paramObject;
  }
  
  public void setRetainInstance(boolean paramBoolean)
  {
    this.mRetainInstance = paramBoolean;
  }
  
  public void setReturnTransition(Object paramObject)
  {
    ensureAnimationInfo().xb = paramObject;
  }
  
  public void setSharedElementEnterTransition(Object paramObject)
  {
    ensureAnimationInfo().xe = paramObject;
  }
  
  public void setSharedElementReturnTransition(Object paramObject)
  {
    ensureAnimationInfo().xf = paramObject;
  }
  
  void setStateAfterAnimating(int paramInt)
  {
    ensureAnimationInfo().wW = paramInt;
  }
  
  public void setTargetFragment(i parami, int paramInt)
  {
    n localn = getFragmentManager();
    if (parami != null) {}
    for (Object localObject = parami.getFragmentManager(); (localn != null) && (localObject != null) && (localn != localObject); localObject = null) {
      throw new IllegalArgumentException("Fragment " + parami + " must share the same FragmentManager to be set as a target fragment");
    }
    for (localObject = parami; localObject != null; localObject = ((i)localObject).getTargetFragment()) {
      if (localObject == this) {
        throw new IllegalArgumentException("Setting " + parami + " as the target of " + this + " would create a target cycle");
      }
    }
    this.mTarget = parami;
    this.mTargetRequestCode = paramInt;
  }
  
  public void setUserVisibleHint(boolean paramBoolean)
  {
    if ((!this.mUserVisibleHint) && (paramBoolean) && (this.mState < 4) && (this.mFragmentManager != null) && (isAdded())) {
      this.mFragmentManager.d(this);
    }
    this.mUserVisibleHint = paramBoolean;
    if ((this.mState < 4) && (!paramBoolean)) {}
    for (paramBoolean = true;; paramBoolean = false)
    {
      this.mDeferStart = paramBoolean;
      if (this.mSavedFragmentState != null) {
        this.mSavedUserVisibleHint = Boolean.valueOf(this.mUserVisibleHint);
      }
      return;
    }
  }
  
  public boolean shouldShowRequestPermissionRationale(String paramString)
  {
    if (this.mHost != null) {
      return this.mHost.v(paramString);
    }
    return false;
  }
  
  public void startActivity(Intent paramIntent)
  {
    startActivity(paramIntent, null);
  }
  
  public void startActivity(Intent paramIntent, Bundle paramBundle)
  {
    if (this.mHost == null) {
      throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }
    this.mHost.a(this, paramIntent, -1, paramBundle);
  }
  
  public void startActivityForResult(Intent paramIntent, int paramInt)
  {
    startActivityForResult(paramIntent, paramInt, null);
  }
  
  public void startActivityForResult(Intent paramIntent, int paramInt, Bundle paramBundle)
  {
    if (this.mHost == null) {
      throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }
    this.mHost.a(this, paramIntent, paramInt, paramBundle);
  }
  
  public void startIntentSenderForResult(IntentSender paramIntentSender, int paramInt1, Intent paramIntent, int paramInt2, int paramInt3, int paramInt4, Bundle paramBundle)
    throws IntentSender.SendIntentException
  {
    if (this.mHost == null) {
      throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    }
    this.mHost.a(this, paramIntentSender, paramInt1, paramIntent, paramInt2, paramInt3, paramInt4, paramBundle);
  }
  
  public void startPostponedEnterTransition()
  {
    if ((this.mFragmentManager == null) || (this.mFragmentManager.mHost == null))
    {
      ensureAnimationInfo().xk = false;
      return;
    }
    if (Looper.myLooper() != this.mFragmentManager.mHost.mHandler.getLooper())
    {
      this.mFragmentManager.mHost.mHandler.postAtFrontOfQueue(new Runnable()
      {
        public final void run()
        {
          i.this.callStartTransitionListener();
        }
      });
      return;
    }
    callStartTransitionListener();
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(128);
    d.a(this, localStringBuilder);
    if (this.mIndex >= 0)
    {
      localStringBuilder.append(" #");
      localStringBuilder.append(this.mIndex);
    }
    if (this.mFragmentId != 0)
    {
      localStringBuilder.append(" id=0x");
      localStringBuilder.append(Integer.toHexString(this.mFragmentId));
    }
    if (this.mTag != null)
    {
      localStringBuilder.append(" ");
      localStringBuilder.append(this.mTag);
    }
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
  
  public void unregisterForContextMenu(View paramView)
  {
    paramView.setOnCreateContextMenuListener(null);
  }
  
  static final class a
  {
    View wU;
    Animator wV;
    int wW;
    int wX;
    int wY;
    int wZ;
    Object xa = null;
    Object xb = i.USE_DEFAULT_TRANSITION;
    Object xc = null;
    Object xd = i.USE_DEFAULT_TRANSITION;
    Object xe = null;
    Object xf = i.USE_DEFAULT_TRANSITION;
    Boolean xg;
    Boolean xh;
    ag xi = null;
    ag xj = null;
    boolean xk;
    i.c xl;
    boolean xm;
  }
  
  public static final class b
    extends RuntimeException
  {
    public b(String paramString, Exception paramException)
    {
      super(paramException);
    }
  }
  
  static abstract interface c
  {
    public abstract void cD();
    
    public abstract void startListening();
  }
  
  public static final class d
    implements Parcelable
  {
    public static final Parcelable.Creator<d> CREATOR = new Parcelable.Creator() {};
    final Bundle xn;
    
    d(Parcel paramParcel)
    {
      this.xn = paramParcel.readBundle();
    }
    
    public final int describeContents()
    {
      return 0;
    }
    
    public final void writeToParcel(Parcel paramParcel, int paramInt)
    {
      paramParcel.writeBundle(this.xn);
    }
  }
}


/* Location:              /home/qerwtr546/Documents/Vent Source/dex2jar-2.0/classes-dex2jar.jar!/android/support/v4/app/i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */