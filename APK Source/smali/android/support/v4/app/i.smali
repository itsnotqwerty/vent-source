.class public Landroid/support/v4/app/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/arch/lifecycle/e;
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/i$a;,
        Landroid/support/v4/app/i$c;,
        Landroid/support/v4/app/i$b;,
        Landroid/support/v4/app/i$d;
    }
.end annotation


# static fields
.field static final ACTIVITY_CREATED:I = 0x2

.field static final CREATED:I = 0x1

.field static final INITIALIZING:I = 0x0

.field static final RESUMED:I = 0x5

.field static final STARTED:I = 0x4

.field static final STOPPED:I = 0x3

.field static final USE_DEFAULT_TRANSITION:Ljava/lang/Object;

.field private static final sClassMap:Landroid/support/v4/g/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/m",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field mAdded:Z

.field mAnimationInfo:Landroid/support/v4/app/i$a;

.field mArguments:Landroid/os/Bundle;

.field mBackStackNesting:I

.field mCalled:Z

.field mChildFragmentManager:Landroid/support/v4/app/o;

.field mChildNonConfig:Landroid/support/v4/app/p;

.field mContainer:Landroid/view/ViewGroup;

.field mContainerId:I

.field mDeferStart:Z

.field mDetached:Z

.field mFragmentId:I

.field mFragmentManager:Landroid/support/v4/app/o;

.field mFromLayout:Z

.field mHasMenu:Z

.field mHidden:Z

.field mHiddenChanged:Z

.field mHost:Landroid/support/v4/app/m;

.field mInLayout:Z

.field mIndex:I

.field mInnerView:Landroid/view/View;

.field mIsCreated:Z

.field mIsNewlyAdded:Z

.field mLayoutInflater:Landroid/view/LayoutInflater;

.field mLifecycleRegistry:Landroid/arch/lifecycle/f;

.field mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

.field mMenuVisible:Z

.field mParentFragment:Landroid/support/v4/app/i;

.field mPerformedCreateView:Z

.field mPostponedAlpha:F

.field mRemoving:Z

.field mRestored:Z

.field mRetainInstance:Z

.field mRetaining:Z

.field mSavedFragmentState:Landroid/os/Bundle;

.field mSavedUserVisibleHint:Ljava/lang/Boolean;

.field mSavedViewState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mState:I

.field mTag:Ljava/lang/String;

.field mTarget:Landroid/support/v4/app/i;

.field mTargetIndex:I

.field mTargetRequestCode:I

.field mUserVisibleHint:Z

.field mView:Landroid/view/View;

.field mViewModelStore:Landroid/arch/lifecycle/p;

.field mWho:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v4/g/m;

    invoke-direct {v0}, Landroid/support/v4/g/m;-><init>()V

    sput-object v0, Landroid/support/v4/app/i;->sClassMap:Landroid/support/v4/g/m;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/app/i;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/i;->mState:I

    iput v1, p0, Landroid/support/v4/app/i;->mIndex:I

    iput v1, p0, Landroid/support/v4/app/i;->mTargetIndex:I

    iput-boolean v2, p0, Landroid/support/v4/app/i;->mMenuVisible:Z

    iput-boolean v2, p0, Landroid/support/v4/app/i;->mUserVisibleHint:Z

    new-instance v0, Landroid/arch/lifecycle/f;

    invoke-direct {v0, p0}, Landroid/arch/lifecycle/f;-><init>(Landroid/arch/lifecycle/e;)V

    iput-object v0, p0, Landroid/support/v4/app/i;->mLifecycleRegistry:Landroid/arch/lifecycle/f;

    return-void
.end method

.method static synthetic access$800(Landroid/support/v4/app/i;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/i;->callStartTransitionListener()V

    return-void
.end method

.method private callStartTransitionListener()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v4/app/i;->mAnimationInfo:Landroid/support/v4/app/i$a;

    if-nez v1, :cond_1

    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/support/v4/app/i$c;->cD()V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/i;->mAnimationInfo:Landroid/support/v4/app/i$a;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/i$a;->xk:Z

    iget-object v1, p0, Landroid/support/v4/app/i;->mAnimationInfo:Landroid/support/v4/app/i$a;

    iget-object v1, v1, Landroid/support/v4/app/i$a;->xl:Landroid/support/v4/app/i$c;

    iget-object v2, p0, Landroid/support/v4/app/i;->mAnimationInfo:Landroid/support/v4/app/i$a;

    iput-object v0, v2, Landroid/support/v4/app/i$a;->xl:Landroid/support/v4/app/i$c;

    move-object v0, v1

    goto :goto_0
.end method

.method private ensureAnimationInfo()Landroid/support/v4/app/i$a;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->mAnimationInfo:Landroid/support/v4/app/i$a;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v4/app/i$a;

    invoke-direct {v0}, Landroid/support/v4/app/i$a;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/i;->mAnimationInfo:Landroid/support/v4/app/i$a;

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->mAnimationInfo:Landroid/support/v4/app/i$a;

    return-object v0
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/i;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/support/v4/app/i;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/i;

    move-result-object v0

    return-object v0
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/i;
    .locals 4

    :try_start_0
    sget-object v0, Landroid/support/v4/app/i;->sClassMap:Landroid/support/v4/g/m;

    invoke-virtual {v0, p1}, Landroid/support/v4/g/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Landroid/support/v4/app/i;->sClassMap:Landroid/support/v4/g/m;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/g/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/i;

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {v0, p2}, Landroid/support/v4/app/i;->setArguments(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/support/v4/app/i$b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to instantiate fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": make sure class name exists, is public, and has an empty constructor that is public"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/support/v4/app/i$b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Landroid/support/v4/app/i$b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to instantiate fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": make sure class name exists, is public, and has an empty constructor that is public"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/support/v4/app/i$b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Landroid/support/v4/app/i$b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to instantiate fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": make sure class name exists, is public, and has an empty constructor that is public"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/support/v4/app/i$b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Landroid/support/v4/app/i$b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to instantiate fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": could not find Fragment constructor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/support/v4/app/i$b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_4
    move-exception v0

    new-instance v1, Landroid/support/v4/app/i$b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to instantiate fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": calling Fragment constructor caused an exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/support/v4/app/i$b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method static isSupportFragmentClass(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    sget-object v0, Landroid/support/v4/app/i;->sClassMap:Landroid/support/v4/g/m;

    invoke-virtual {v0, p1}, Landroid/support/v4/g/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Landroid/support/v4/app/i;->sClassMap:Landroid/support/v4/g/m;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/g/m;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-class v1, Landroid/support/v4/app/i;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/i;->mFragmentId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mContainerId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/i;->mContainerId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mTag="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/i;->mTag:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/i;->mState:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mIndex="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/i;->mIndex:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mWho="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/i;->mWho:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBackStackNesting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/i;->mBackStackNesting:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAdded="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/i;->mAdded:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mRemoving="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/i;->mRemoving:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mFromLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/i;->mFromLayout:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mInLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/i;->mInLayout:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHidden="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/i;->mHidden:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDetached="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/i;->mDetached:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mMenuVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/i;->mMenuVisible:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mHasMenu="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/i;->mHasMenu:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetainInstance="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/i;->mRetainInstance:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/i;->mRetaining:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mUserVisibleHint="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/i;->mUserVisibleHint:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Landroid/support/v4/app/i;->mFragmentManager:Landroid/support/v4/app/o;

    if-eqz v0, :cond_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentManager="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/i;->mFragmentManager:Landroid/support/v4/app/o;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->mHost:Landroid/support/v4/app/m;

    if-eqz v0, :cond_1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHost="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/i;->mHost:Landroid/support/v4/app/m;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/i;->mParentFragment:Landroid/support/v4/app/i;

    if-eqz v0, :cond_2

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mParentFragment="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/i;->mParentFragment:Landroid/support/v4/app/i;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/i;->mArguments:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mArguments="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/i;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/i;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedFragmentState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/i;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Landroid/support/v4/app/i;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v0, :cond_5

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedViewState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/i;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/i;->mTarget:Landroid/support/v4/app/i;

    if-eqz v0, :cond_6

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTarget="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/i;->mTarget:Landroid/support/v4/app/i;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " mTargetRequestCode="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/i;->mTargetRequestCode:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_6
    invoke-virtual {p0}, Landroid/support/v4/app/i;->getNextAnim()I

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v4/app/i;->getNextAnim()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_7
    iget-object v0, p0, Landroid/support/v4/app/i;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/i;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_8
    iget-object v0, p0, Landroid/support/v4/app/i;->mView:Landroid/view/View;

    if-eqz v0, :cond_9

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/i;->mView:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_9
    iget-object v0, p0, Landroid/support/v4/app/i;->mInnerView:Landroid/view/View;

    if-eqz v0, :cond_a

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mInnerView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/i;->mView:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_a
    invoke-virtual {p0}, Landroid/support/v4/app/i;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAnimatingAway="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v4/app/i;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStateAfterAnimating="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v4/app/i;->getStateAfterAnimating()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/i;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_c

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loader Manager:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/i;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Landroid/support/v4/app/LoaderManagerImpl;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_c
    iget-object v0, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    if-eqz v0, :cond_d

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Child "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/o;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/i;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->mWho:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/o;->findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/i;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public final getActivity()Landroid/support/v4/app/j;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->mHost:Landroid/support/v4/app/m;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->mHost:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->xs:Landroid/app/Activity;

    check-cast v0, Landroid/support/v4/app/j;

    goto :goto_0
.end method

.method public getAllowEnterTransitionOverlap()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->mAnimationInfo:Landroid/support/v4/app/i$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/i;->mAnimationInfo:Landroid/support/v4/app/i$a;

    iget-object v0, v0, Landroid/support/v4/app/i$a;->xh:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/i;->mAnimationInfo:Landroid/support/v4/app/i$a;

    iget-object v0, v0, Landroid/support/v4/app/i$a;->xh:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getAllowReturnTransitionOverlap()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->mAnimationInfo:Landroid/support/v4/app/i$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/i;->mAnimationInfo:Landroid/support/v4/app/i$a;

    iget-object v0, v0, Landroid/support/v4/app/i$a;->xg:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/i;->mAnimationInfo:Landroid/support/v4/app/i$a;

    iget-object v0, v0, Landroid/support/v4/app/i$a;->xg:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method getAnimatingAway()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->mAnimationInfo:Landroid/support/v4/app/i$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->mAnimationInfo:Landroid/support/v4/app/i$a;

    iget-object v0, v0, Landroid/support/v4/app/i$a;->wU:Landroid/view/View;

    goto :goto_0
.end method

.method getAnimator()Landroid/animation/Animator;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->mAnimationInfo:Landroid/support/v4/app/i$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->mAnimationInfo:Landroid/support/v4/app/i$a;

    iget-object v0, v0, Landroid/support/v4/app/i$a;->wV:Landroid/animation/Animator;

    goto :goto_0
.end method

.method public final getArguments()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->mArguments:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getChildFragmentManager()Landroid/support/v4/app/n;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/i;->instantiateChildFragmentManager()V

    iget v0, p0, Landroid/support/v4/app/i;->mState:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->dispatchResume()V

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    return-object v0

    :cond_1
    iget v0, p0, Landroid/support/v4/app/i;->mState:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->dispatchStart()V

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/support/v4/app/i;->mState:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->dispatchActivityCreated()V

    goto :goto_0

    :cond_3
    iget v0, p0, Landroid/support/v4/app/i;->mState:I

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->dispatchCreate()V

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->mHost:Landroid/support/v4/app/m;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->mHost:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public getEnterTransition()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->mAnimationInfo:Landroid/support/v4/app/i$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->mAnimationInfo:Landroid/support/v4/app/i$a;

    iget-object v0, v0, Landroid/support/v4/app/i$a;->xa:Ljava/lang/Object;

    goto :goto_0
.end method

.method getEnterTransitionCallback()Landroid/support/v4/app/ag;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->mAnimationInfo:Landroid/support/v4/app/i$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->mAnimationInfo:Landroid/support/v4/app/i$a;

    iget-object v0, v0, Landroid/support/v4/app/i$a;->xi:Landroid/support/v4/app/ag;

    goto :goto_0
.end method

.method public getExitTransition()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->mAnimationInfo:Landroid/support/v4/app/i$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->mAnimationInfo:Landroid/support/v4/app/i$a;

    iget-object v0, v0, Landroid/support/v4/app/i$a;->xc:Ljava/lang/Object;

    goto :goto_0
.end method

.method getExitTransitionCallback()Landroid/support/v4/app/ag;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->mAnimationInfo:Landroid/support/v4/app/i$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->mAnimationInfo:Landroid/support/v4/app/i$a;

    iget-object v0, v0, Landroid/support/v4/app/i$a;->xj:Landroid/support/v4/app/ag;

    goto :goto_0
.end method

.method public final getFragmentManager()Landroid/support/v4/app/n;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->mFragmentManager:Landroid/support/v4/app/o;

    return-object v0
.end method

.method public final getHost()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->mHost:Landroid/support/v4/app/m;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->mHost:Landroid/support/v4/app/m;

    invoke-virtual {v0}, Landroid/support/v4/app/m;->onGetHost()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getId()I
    .locals 1

    iget v0, p0, Landroid/support/v4/app/i;->mFragmentId:I

    return v0
.end method

.method public final getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->mLayoutInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/i;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->mLayoutInflater:Landroid/view/LayoutInflater;

    goto :goto_0
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/i;->mHost:Landroid/support/v4/app/m;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->mHost:Landroid/support/v4/app/m;

    invoke-virtual {v0}, Landroid/support/v4/app/m;->onGetLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/app/i;->getChildFragmentManager()Landroid/support/v4/app/n;

    iget-object v1, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    invoke-static {v0, v1}, Landroid/support/v4/view/f;->b(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    return-object v0
.end method

.method public getLifecycle()Landroid/arch/lifecycle/c;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->mLifecycleRegistry:Landroid/arch/lifecycle/f;

    return-object v0
.end method

.method public getLoaderManager()Landroid/support/v4/app/x;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/i;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/i;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {p0}, Landroid/support/v4/app/i;->getViewModelStore()Landroid/arch/lifecycle/p;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v4/app/LoaderManagerImpl;-><init>(Landroid/arch/lifecycle/e;Landroid/arch/lifecycle/p;)V

    iput-object v0, p0, Landroid/support/v4/app/i;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    iget-object v0, p0, Landroid/support/v4/app/i;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    goto :goto_0
.end method

.method getNextAnim()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->mAnimationInfo:Landroid/support/v4/app/i$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->mAnimationInfo:Landroid/support/v4/app/i$a;

    iget v0, v0, Landroid/support/v4/app/i$a;->wX:I

    goto :goto_0
.end method

.method getNextTransition()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->mAnimationInfo:Landroid/support/v4/app/i$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->mAnimationInfo:Landroid/support/v4/app/i$a;

    iget v0, v0, Landroid/support/v4/app/i$a;->wY:I

    goto :goto_0
.end method

.method getNextTransitionStyle()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->mAnimationInfo:Landroid/support/v4/app/i$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->mAnimationInfo:Landroid/support/v4/app/i$a;

    iget v0, v0, Landroid/support/v4/app/i$a;->wZ:I

    goto :goto_0
.end method

.method public final getParentFragment()Landroid/support/v4/app/i;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->mParentFragment:Landroid/support/v4/app/i;

    return-object v0
.end method

.method public getReenterTransition()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/i;->mAnimationInfo:Landroid/support/v4/app/i$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->mAnimationInfo:Landroid/support/v4/app/i$a;

    iget-object v0, v0, Landroid/support/v4/app/i$a;->xd:Ljava/lang/Object;

    sget-object v1, Landroid/support/v4/app/i;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/i;->getExitTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/i;->mAnimationInfo:Landroid/support/v4/app/i$a;

    iget-object v0, v0, Landroid/support/v4/app/i$a;->xd:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/app/i;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public final getRetainInstance()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/app/i;->mRetainInstance:Z

    return v0
.end method

.method public getReturnTransition()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/i;->mAnimationInfo:Landroid/support/v4/app/i$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->mAnimationInfo:Landroid/support/v4/app/i$a;

    iget-object v0, v0, Landroid/support/v4/app/i$a;->xb:Ljava/lang/Object;

    sget-object v1, Landroid/support/v4/app/i;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/i;->getEnterTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/i;->mAnimationInfo:Landroid/support/v4/app/i$a;

    iget-object v0, v0, Landroid/support/v4/app/i$a;->xb:Ljava/lang/Object;

    goto :goto_0
.end method

.method public getSharedElementEnterTransition()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->mAnimationInfo:Landroid/support/v4/app/i$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->mAnimationInfo:Landroid/support/v4/app/i$a;

    iget-object v0, v0, Landroid/support/v4/app/i$a;->xe:Ljava/lang/Object;

    goto :goto_0
.end method

.method public getSharedElementReturnTransition()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/i;->mAnimationInfo:Landroid/support/v4/app/i$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->mAnimationInfo:Landroid/support/v4/app/i$a;

    iget-object v0, v0, Landroid/support/v4/app/i$a;->xf:Ljava/lang/Object;

    sget-object v1, Landroid/support/v4/app/i;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/i;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/i;->mAnimationInfo:Landroid/support/v4/app/i$a;

    iget-object v0, v0, Landroid/support/v4/app/i$a;->xf:Ljava/lang/Object;

    goto :goto_0
.end method

.method getStateAfterAnimating()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->mAnimationInfo:Landroid/support/v4/app/i$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->mAnimationInfo:Landroid/support/v4/app/i$a;

    iget v0, v0, Landroid/support/v4/app/i$a;->wW:I

    goto :goto_0
.end method

.method public final getString(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/app/i;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/app/i;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getTargetFragment()Landroid/support/v4/app/i;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->mTarget:Landroid/support/v4/app/i;

    return-object v0
.end method

.method public final getTargetRequestCode()I
    .locals 1

    iget v0, p0, Landroid/support/v4/app/i;->mTargetRequestCode:I

    return v0
.end method

.method public final getText(I)Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/app/i;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getUserVisibleHint()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/app/i;->mUserVisibleHint:Z

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getViewModelStore()Landroid/arch/lifecycle/p;
    .locals 2

    invoke-virtual {p0}, Landroid/support/v4/app/i;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t access ViewModels from detached fragment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->mViewModelStore:Landroid/arch/lifecycle/p;

    if-nez v0, :cond_1

    new-instance v0, Landroid/arch/lifecycle/p;

    invoke-direct {v0}, Landroid/arch/lifecycle/p;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/i;->mViewModelStore:Landroid/arch/lifecycle/p;

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/i;->mViewModelStore:Landroid/arch/lifecycle/p;

    return-object v0
.end method

.method public final hasOptionsMenu()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/app/i;->mHasMenu:Z

    return v0
.end method

.method public final hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method initState()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/i;->mIndex:I

    iput-object v2, p0, Landroid/support/v4/app/i;->mWho:Ljava/lang/String;

    iput-boolean v1, p0, Landroid/support/v4/app/i;->mAdded:Z

    iput-boolean v1, p0, Landroid/support/v4/app/i;->mRemoving:Z

    iput-boolean v1, p0, Landroid/support/v4/app/i;->mFromLayout:Z

    iput-boolean v1, p0, Landroid/support/v4/app/i;->mInLayout:Z

    iput-boolean v1, p0, Landroid/support/v4/app/i;->mRestored:Z

    iput v1, p0, Landroid/support/v4/app/i;->mBackStackNesting:I

    iput-object v2, p0, Landroid/support/v4/app/i;->mFragmentManager:Landroid/support/v4/app/o;

    iput-object v2, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    iput-object v2, p0, Landroid/support/v4/app/i;->mHost:Landroid/support/v4/app/m;

    iput v1, p0, Landroid/support/v4/app/i;->mFragmentId:I

    iput v1, p0, Landroid/support/v4/app/i;->mContainerId:I

    iput-object v2, p0, Landroid/support/v4/app/i;->mTag:Ljava/lang/String;

    iput-boolean v1, p0, Landroid/support/v4/app/i;->mHidden:Z

    iput-boolean v1, p0, Landroid/support/v4/app/i;->mDetached:Z

    iput-boolean v1, p0, Landroid/support/v4/app/i;->mRetaining:Z

    return-void
.end method

.method instantiateChildFragmentManager()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/i;->mHost:Landroid/support/v4/app/m;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment has not been attached yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Landroid/support/v4/app/o;

    invoke-direct {v0}, Landroid/support/v4/app/o;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    iget-object v0, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    iget-object v1, p0, Landroid/support/v4/app/i;->mHost:Landroid/support/v4/app/m;

    new-instance v2, Landroid/support/v4/app/i$2;

    invoke-direct {v2, p0}, Landroid/support/v4/app/i$2;-><init>(Landroid/support/v4/app/i;)V

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/m;Landroid/support/v4/app/k;Landroid/support/v4/app/i;)V

    return-void
.end method

.method public final isAdded()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->mHost:Landroid/support/v4/app/m;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/app/i;->mAdded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isDetached()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/app/i;->mDetached:Z

    return v0
.end method

.method public final isHidden()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/app/i;->mHidden:Z

    return v0
.end method

.method isHideReplaced()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->mAnimationInfo:Landroid/support/v4/app/i$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->mAnimationInfo:Landroid/support/v4/app/i$a;

    iget-boolean v0, v0, Landroid/support/v4/app/i$a;->xm:Z

    goto :goto_0
.end method

.method final isInBackStack()Z
    .locals 1

    iget v0, p0, Landroid/support/v4/app/i;->mBackStackNesting:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInLayout()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/app/i;->mInLayout:Z

    return v0
.end method

.method public final isMenuVisible()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/app/i;->mMenuVisible:Z

    return v0
.end method

.method isPostponed()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->mAnimationInfo:Landroid/support/v4/app/i$a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->mAnimationInfo:Landroid/support/v4/app/i$a;

    iget-boolean v0, v0, Landroid/support/v4/app/i$a;->xk:Z

    goto :goto_0
.end method

.method public final isRemoving()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/app/i;->mRemoving:Z

    return v0
.end method

.method public final isResumed()Z
    .locals 2

    iget v0, p0, Landroid/support/v4/app/i;->mState:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isStateSaved()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->mFragmentManager:Landroid/support/v4/app/o;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->mFragmentManager:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->isStateSaved()Z

    move-result v0

    goto :goto_0
.end method

.method public final isVisible()Z
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/app/i;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/i;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/i;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/i;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/i;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method noteStateNotSaved()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->noteStateNotSaved()V

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/i;->mCalled:Z

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/i;->mCalled:Z

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/i;->mCalled:Z

    iget-object v0, p0, Landroid/support/v4/app/i;->mHost:Landroid/support/v4/app/m;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/app/i;->mCalled:Z

    invoke-virtual {p0, v0}, Landroid/support/v4/app/i;->onAttach(Landroid/app/Activity;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/i;->mHost:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->xs:Landroid/app/Activity;

    goto :goto_0
.end method

.method public onAttachFragment(Landroid/support/v4/app/i;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/i;->mCalled:Z

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/i;->mCalled:Z

    invoke-virtual {p0, p1}, Landroid/support/v4/app/i;->restoreChildFragmentState(Landroid/os/Bundle;)V

    iget-object v1, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    iget v1, v1, Landroid/support/v4/app/o;->xF:I

    if-lez v1, :cond_1

    :goto_0
    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->dispatchCreate()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/app/i;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/j;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/i;->mCalled:Z

    iget-object v0, p0, Landroid/support/v4/app/i;->mViewModelStore:Landroid/arch/lifecycle/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/i;->mHost:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->mFragmentManager:Landroid/support/v4/app/o;

    iget-boolean v0, v0, Landroid/support/v4/app/o;->xL:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/i;->mViewModelStore:Landroid/arch/lifecycle/p;

    invoke-virtual {v0}, Landroid/arch/lifecycle/p;->clear()V

    :cond_0
    return-void
.end method

.method public onDestroyOptionsMenu()V
    .locals 0

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/i;->mCalled:Z

    return-void
.end method

.method public onDetach()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/i;->mCalled:Z

    return-void
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/i;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/i;->mCalled:Z

    return-void
.end method

.method public onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/i;->mCalled:Z

    iget-object v0, p0, Landroid/support/v4/app/i;->mHost:Landroid/support/v4/app/m;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/app/i;->mCalled:Z

    invoke-virtual {p0, v0, p2, p3}, Landroid/support/v4/app/i;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/i;->mHost:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->xs:Landroid/app/Activity;

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/i;->mCalled:Z

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/i;->mCalled:Z

    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/i;->mCalled:Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/i;->mCalled:Z

    return-void
.end method

.method public onStop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/i;->mCalled:Z

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/i;->mCalled:Z

    return-void
.end method

.method peekChildFragmentManager()Landroid/support/v4/app/n;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    return-object v0
.end method

.method performActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->noteStateNotSaved()V

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v4/app/i;->mState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/i;->mCalled:Z

    invoke-virtual {p0, p1}, Landroid/support/v4/app/i;->onActivityCreated(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Landroid/support/v4/app/i;->mCalled:Z

    if-nez v0, :cond_1

    new-instance v0, Landroid/support/v4/app/ah;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onActivityCreated()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/ah;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->dispatchActivityCreated()V

    :cond_2
    return-void
.end method

.method performConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/i;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/o;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method performContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Landroid/support/v4/app/i;->mHidden:Z

    if-nez v1, :cond_2

    invoke-virtual {p0, p1}, Landroid/support/v4/app/i;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/o;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method performCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->noteStateNotSaved()V

    :cond_0
    iput v1, p0, Landroid/support/v4/app/i;->mState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/i;->mCalled:Z

    invoke-virtual {p0, p1}, Landroid/support/v4/app/i;->onCreate(Landroid/os/Bundle;)V

    iput-boolean v1, p0, Landroid/support/v4/app/i;->mIsCreated:Z

    iget-boolean v0, p0, Landroid/support/v4/app/i;->mCalled:Z

    if-nez v0, :cond_1

    new-instance v0, Landroid/support/v4/app/ah;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onCreate()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/ah;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/i;->mLifecycleRegistry:Landroid/arch/lifecycle/f;

    sget-object v1, Landroid/arch/lifecycle/c$a;->ON_CREATE:Landroid/arch/lifecycle/c$a;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/f;->a(Landroid/arch/lifecycle/c$a;)V

    return-void
.end method

.method performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroid/support/v4/app/i;->mHidden:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroid/support/v4/app/i;->mHasMenu:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/support/v4/app/i;->mMenuVisible:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/support/v4/app/i;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    invoke-virtual {v1, p1, p2}, Landroid/support/v4/app/o;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->noteStateNotSaved()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/i;->mPerformedCreateView:Z

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/app/i;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method performDestroy()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v4/app/i;->mLifecycleRegistry:Landroid/arch/lifecycle/f;

    sget-object v1, Landroid/arch/lifecycle/c$a;->ON_DESTROY:Landroid/arch/lifecycle/c$a;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/f;->a(Landroid/arch/lifecycle/c$a;)V

    iget-object v0, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->dispatchDestroy()V

    :cond_0
    iput v2, p0, Landroid/support/v4/app/i;->mState:I

    iput-boolean v2, p0, Landroid/support/v4/app/i;->mCalled:Z

    iput-boolean v2, p0, Landroid/support/v4/app/i;->mIsCreated:Z

    invoke-virtual {p0}, Landroid/support/v4/app/i;->onDestroy()V

    iget-boolean v0, p0, Landroid/support/v4/app/i;->mCalled:Z

    if-nez v0, :cond_1

    new-instance v0, Landroid/support/v4/app/ah;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/ah;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    return-void
.end method

.method performDestroyView()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/o;->aa(I)V

    :cond_0
    iput v2, p0, Landroid/support/v4/app/i;->mState:I

    iput-boolean v1, p0, Landroid/support/v4/app/i;->mCalled:Z

    invoke-virtual {p0}, Landroid/support/v4/app/i;->onDestroyView()V

    iget-boolean v0, p0, Landroid/support/v4/app/i;->mCalled:Z

    if-nez v0, :cond_1

    new-instance v0, Landroid/support/v4/app/ah;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDestroyView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/ah;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/i;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/i;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/LoaderManagerImpl;->zg:Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderViewModel;->cW()V

    :cond_2
    iput-boolean v1, p0, Landroid/support/v4/app/i;->mPerformedCreateView:Z

    return-void
.end method

.method performDetach()V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/i;->mCalled:Z

    invoke-virtual {p0}, Landroid/support/v4/app/i;->onDetach()V

    iput-object v1, p0, Landroid/support/v4/app/i;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-boolean v0, p0, Landroid/support/v4/app/i;->mCalled:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v4/app/ah;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDetach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/ah;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v4/app/i;->mRetaining:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Child FragmentManager of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was not  destroyed and this fragment is not retaining instance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->dispatchDestroy()V

    iput-object v1, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    :cond_2
    return-void
.end method

.method performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/i;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/i;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Landroid/support/v4/app/i;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method performLowMemory()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/app/i;->onLowMemory()V

    iget-object v0, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->dispatchLowMemory()V

    :cond_0
    return-void
.end method

.method performMultiWindowModeChanged(Z)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/i;->onMultiWindowModeChanged(Z)V

    iget-object v0, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/o;->dispatchMultiWindowModeChanged(Z)V

    :cond_0
    return-void
.end method

.method performOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Landroid/support/v4/app/i;->mHidden:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Landroid/support/v4/app/i;->mHasMenu:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/support/v4/app/i;->mMenuVisible:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/i;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/o;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method performOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/app/i;->mHidden:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/app/i;->mHasMenu:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/app/i;->mMenuVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/v4/app/i;->onOptionsMenuClosed(Landroid/view/Menu;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/o;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    :cond_1
    return-void
.end method

.method performPause()V
    .locals 3

    const/4 v2, 0x4

    iget-object v0, p0, Landroid/support/v4/app/i;->mLifecycleRegistry:Landroid/arch/lifecycle/f;

    sget-object v1, Landroid/arch/lifecycle/c$a;->ON_PAUSE:Landroid/arch/lifecycle/c$a;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/f;->a(Landroid/arch/lifecycle/c$a;)V

    iget-object v0, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/o;->aa(I)V

    :cond_0
    iput v2, p0, Landroid/support/v4/app/i;->mState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/i;->mCalled:Z

    invoke-virtual {p0}, Landroid/support/v4/app/i;->onPause()V

    iget-boolean v0, p0, Landroid/support/v4/app/i;->mCalled:Z

    if-nez v0, :cond_1

    new-instance v0, Landroid/support/v4/app/ah;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/ah;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method performPictureInPictureModeChanged(Z)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/i;->onPictureInPictureModeChanged(Z)V

    iget-object v0, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/o;->dispatchPictureInPictureModeChanged(Z)V

    :cond_0
    return-void
.end method

.method performPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroid/support/v4/app/i;->mHidden:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroid/support/v4/app/i;->mHasMenu:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/support/v4/app/i;->mMenuVisible:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1}, Landroid/support/v4/app/i;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/o;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method performReallyStop()V
    .locals 2

    const/4 v1, 0x2

    iget-object v0, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->aa(I)V

    :cond_0
    iput v1, p0, Landroid/support/v4/app/i;->mState:I

    return-void
.end method

.method performResume()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->noteStateNotSaved()V

    iget-object v0, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->execPendingActions()Z

    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Landroid/support/v4/app/i;->mState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/i;->mCalled:Z

    invoke-virtual {p0}, Landroid/support/v4/app/i;->onResume()V

    iget-boolean v0, p0, Landroid/support/v4/app/i;->mCalled:Z

    if-nez v0, :cond_1

    new-instance v0, Landroid/support/v4/app/ah;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/ah;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->dispatchResume()V

    iget-object v0, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->execPendingActions()Z

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/i;->mLifecycleRegistry:Landroid/arch/lifecycle/f;

    sget-object v1, Landroid/arch/lifecycle/c$a;->ON_RESUME:Landroid/arch/lifecycle/c$a;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/f;->a(Landroid/arch/lifecycle/c$a;)V

    return-void
.end method

.method performSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0, p1}, Landroid/support/v4/app/i;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->saveAllState()Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method performStart()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->noteStateNotSaved()V

    iget-object v0, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->execPendingActions()Z

    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Landroid/support/v4/app/i;->mState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/i;->mCalled:Z

    invoke-virtual {p0}, Landroid/support/v4/app/i;->onStart()V

    iget-boolean v0, p0, Landroid/support/v4/app/i;->mCalled:Z

    if-nez v0, :cond_1

    new-instance v0, Landroid/support/v4/app/ah;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onStart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/ah;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->dispatchStart()V

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/i;->mLifecycleRegistry:Landroid/arch/lifecycle/f;

    sget-object v1, Landroid/arch/lifecycle/c$a;->ON_START:Landroid/arch/lifecycle/c$a;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/f;->a(Landroid/arch/lifecycle/c$a;)V

    return-void
.end method

.method performStop()V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/i;->mLifecycleRegistry:Landroid/arch/lifecycle/f;

    sget-object v1, Landroid/arch/lifecycle/c$a;->ON_STOP:Landroid/arch/lifecycle/c$a;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/f;->a(Landroid/arch/lifecycle/c$a;)V

    iget-object v0, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->dispatchStop()V

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Landroid/support/v4/app/i;->mState:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/i;->mCalled:Z

    invoke-virtual {p0}, Landroid/support/v4/app/i;->onStop()V

    iget-boolean v0, p0, Landroid/support/v4/app/i;->mCalled:Z

    if-nez v0, :cond_1

    new-instance v0, Landroid/support/v4/app/ah;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onStop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/ah;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public postponeEnterTransition()V
    .locals 2

    invoke-direct {p0}, Landroid/support/v4/app/i;->ensureAnimationInfo()Landroid/support/v4/app/i$a;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/app/i$a;->xk:Z

    return-void
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    return-void
.end method

.method public final requestPermissions([Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/i;->mHost:Landroid/support/v4/app/m;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->mHost:Landroid/support/v4/app/m;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v4/app/m;->a(Landroid/support/v4/app/i;[Ljava/lang/String;I)V

    return-void
.end method

.method public final requireActivity()Landroid/support/v4/app/j;
    .locals 3

    invoke-virtual {p0}, Landroid/support/v4/app/i;->getActivity()Landroid/support/v4/app/j;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to an activity."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method public final requireContext()Landroid/content/Context;
    .locals 3

    invoke-virtual {p0}, Landroid/support/v4/app/i;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to a context."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method public final requireFragmentManager()Landroid/support/v4/app/n;
    .locals 3

    invoke-virtual {p0}, Landroid/support/v4/app/i;->getFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not associated with a fragment manager."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method public final requireHost()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Landroid/support/v4/app/i;->getHost()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to a host."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method restoreChildFragmentState(Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_1

    const-string v0, "android:support:fragments"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/i;->instantiateChildFragmentManager()V

    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    iget-object v2, p0, Landroid/support/v4/app/i;->mChildNonConfig:Landroid/support/v4/app/p;

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/o;->a(Landroid/os/Parcelable;Landroid/support/v4/app/p;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/i;->mChildNonConfig:Landroid/support/v4/app/p;

    iget-object v0, p0, Landroid/support/v4/app/i;->mChildFragmentManager:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->dispatchCreate()V

    :cond_1
    return-void
.end method

.method final restoreViewState(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/i;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/i;->mInnerView:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/app/i;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/i;->mSavedViewState:Landroid/util/SparseArray;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/i;->mCalled:Z

    invoke-virtual {p0, p1}, Landroid/support/v4/app/i;->onViewStateRestored(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Landroid/support/v4/app/i;->mCalled:Z

    if-nez v0, :cond_1

    new-instance v0, Landroid/support/v4/app/ah;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onViewStateRestored()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/ah;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public setAllowEnterTransitionOverlap(Z)V
    .locals 2

    invoke-direct {p0}, Landroid/support/v4/app/i;->ensureAnimationInfo()Landroid/support/v4/app/i$a;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/app/i$a;->xh:Ljava/lang/Boolean;

    return-void
.end method

.method public setAllowReturnTransitionOverlap(Z)V
    .locals 2

    invoke-direct {p0}, Landroid/support/v4/app/i;->ensureAnimationInfo()Landroid/support/v4/app/i$a;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/app/i$a;->xg:Ljava/lang/Boolean;

    return-void
.end method

.method setAnimatingAway(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/i;->ensureAnimationInfo()Landroid/support/v4/app/i$a;

    move-result-object v0

    iput-object p1, v0, Landroid/support/v4/app/i$a;->wU:Landroid/view/View;

    return-void
.end method

.method setAnimator(Landroid/animation/Animator;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/i;->ensureAnimationInfo()Landroid/support/v4/app/i$a;

    move-result-object v0

    iput-object p1, v0, Landroid/support/v4/app/i$a;->wV:Landroid/animation/Animator;

    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 2

    iget v0, p0, Landroid/support/v4/app/i;->mIndex:I

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/i;->isStateSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment already active and state has been saved"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/support/v4/app/i;->mArguments:Landroid/os/Bundle;

    return-void
.end method

.method public setEnterSharedElementCallback(Landroid/support/v4/app/ag;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/i;->ensureAnimationInfo()Landroid/support/v4/app/i$a;

    move-result-object v0

    iput-object p1, v0, Landroid/support/v4/app/i$a;->xi:Landroid/support/v4/app/ag;

    return-void
.end method

.method public setEnterTransition(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/i;->ensureAnimationInfo()Landroid/support/v4/app/i$a;

    move-result-object v0

    iput-object p1, v0, Landroid/support/v4/app/i$a;->xa:Ljava/lang/Object;

    return-void
.end method

.method public setExitSharedElementCallback(Landroid/support/v4/app/ag;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/i;->ensureAnimationInfo()Landroid/support/v4/app/i$a;

    move-result-object v0

    iput-object p1, v0, Landroid/support/v4/app/i$a;->xj:Landroid/support/v4/app/ag;

    return-void
.end method

.method public setExitTransition(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/i;->ensureAnimationInfo()Landroid/support/v4/app/i$a;

    move-result-object v0

    iput-object p1, v0, Landroid/support/v4/app/i$a;->xc:Ljava/lang/Object;

    return-void
.end method

.method public setHasOptionsMenu(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/app/i;->mHasMenu:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/support/v4/app/i;->mHasMenu:Z

    invoke-virtual {p0}, Landroid/support/v4/app/i;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/i;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/i;->mHost:Landroid/support/v4/app/m;

    invoke-virtual {v0}, Landroid/support/v4/app/m;->cF()V

    :cond_0
    return-void
.end method

.method setHideReplaced(Z)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/i;->ensureAnimationInfo()Landroid/support/v4/app/i$a;

    move-result-object v0

    iput-boolean p1, v0, Landroid/support/v4/app/i$a;->xm:Z

    return-void
.end method

.method final setIndex(ILandroid/support/v4/app/i;)V
    .locals 2

    iput p1, p0, Landroid/support/v4/app/i;->mIndex:I

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Landroid/support/v4/app/i;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/app/i;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/i;->mWho:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android:fragment:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/support/v4/app/i;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/i;->mWho:Ljava/lang/String;

    goto :goto_0
.end method

.method public setInitialSavedState(Landroid/support/v4/app/i$d;)V
    .locals 2

    iget v0, p0, Landroid/support/v4/app/i;->mIndex:I

    if-ltz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment already active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/support/v4/app/i$d;->xn:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/support/v4/app/i$d;->xn:Landroid/os/Bundle;

    :goto_0
    iput-object v0, p0, Landroid/support/v4/app/i;->mSavedFragmentState:Landroid/os/Bundle;

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMenuVisibility(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/app/i;->mMenuVisible:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/support/v4/app/i;->mMenuVisible:Z

    iget-boolean v0, p0, Landroid/support/v4/app/i;->mHasMenu:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/i;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/i;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/i;->mHost:Landroid/support/v4/app/m;

    invoke-virtual {v0}, Landroid/support/v4/app/m;->cF()V

    :cond_0
    return-void
.end method

.method setNextAnim(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->mAnimationInfo:Landroid/support/v4/app/i$a;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Landroid/support/v4/app/i;->ensureAnimationInfo()Landroid/support/v4/app/i$a;

    move-result-object v0

    iput p1, v0, Landroid/support/v4/app/i$a;->wX:I

    goto :goto_0
.end method

.method setNextTransition(II)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->mAnimationInfo:Landroid/support/v4/app/i$a;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Landroid/support/v4/app/i;->ensureAnimationInfo()Landroid/support/v4/app/i$a;

    iget-object v0, p0, Landroid/support/v4/app/i;->mAnimationInfo:Landroid/support/v4/app/i$a;

    iput p1, v0, Landroid/support/v4/app/i$a;->wY:I

    iget-object v0, p0, Landroid/support/v4/app/i;->mAnimationInfo:Landroid/support/v4/app/i$a;

    iput p2, v0, Landroid/support/v4/app/i$a;->wZ:I

    goto :goto_0
.end method

.method setOnStartEnterTransitionListener(Landroid/support/v4/app/i$c;)V
    .locals 3

    invoke-direct {p0}, Landroid/support/v4/app/i;->ensureAnimationInfo()Landroid/support/v4/app/i$a;

    iget-object v0, p0, Landroid/support/v4/app/i;->mAnimationInfo:Landroid/support/v4/app/i$a;

    iget-object v0, v0, Landroid/support/v4/app/i$a;->xl:Landroid/support/v4/app/i$c;

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/i;->mAnimationInfo:Landroid/support/v4/app/i$a;

    iget-object v0, v0, Landroid/support/v4/app/i$a;->xl:Landroid/support/v4/app/i$c;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trying to set a replacement startPostponedEnterTransition on "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/i;->mAnimationInfo:Landroid/support/v4/app/i$a;

    iget-boolean v0, v0, Landroid/support/v4/app/i$a;->xk:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/i;->mAnimationInfo:Landroid/support/v4/app/i$a;

    iput-object p1, v0, Landroid/support/v4/app/i$a;->xl:Landroid/support/v4/app/i$c;

    :cond_3
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/support/v4/app/i$c;->startListening()V

    goto :goto_0
.end method

.method public setReenterTransition(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/i;->ensureAnimationInfo()Landroid/support/v4/app/i$a;

    move-result-object v0

    iput-object p1, v0, Landroid/support/v4/app/i$a;->xd:Ljava/lang/Object;

    return-void
.end method

.method public setRetainInstance(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v4/app/i;->mRetainInstance:Z

    return-void
.end method

.method public setReturnTransition(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/i;->ensureAnimationInfo()Landroid/support/v4/app/i$a;

    move-result-object v0

    iput-object p1, v0, Landroid/support/v4/app/i$a;->xb:Ljava/lang/Object;

    return-void
.end method

.method public setSharedElementEnterTransition(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/i;->ensureAnimationInfo()Landroid/support/v4/app/i$a;

    move-result-object v0

    iput-object p1, v0, Landroid/support/v4/app/i$a;->xe:Ljava/lang/Object;

    return-void
.end method

.method public setSharedElementReturnTransition(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/i;->ensureAnimationInfo()Landroid/support/v4/app/i$a;

    move-result-object v0

    iput-object p1, v0, Landroid/support/v4/app/i$a;->xf:Ljava/lang/Object;

    return-void
.end method

.method setStateAfterAnimating(I)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/i;->ensureAnimationInfo()Landroid/support/v4/app/i$a;

    move-result-object v0

    iput p1, v0, Landroid/support/v4/app/i$a;->wW:I

    return-void
.end method

.method public setTargetFragment(Landroid/support/v4/app/i;I)V
    .locals 3

    invoke-virtual {p0}, Landroid/support/v4/app/i;->getFragmentManager()Landroid/support/v4/app/n;

    move-result-object v1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/app/i;->getFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    :goto_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must share the same FragmentManager to be set as a target fragment"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_1
    if-eqz v0, :cond_3

    if-ne v0, p0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as the target of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " would create a target cycle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {v0}, Landroid/support/v4/app/i;->getTargetFragment()Landroid/support/v4/app/i;

    move-result-object v0

    goto :goto_1

    :cond_3
    iput-object p1, p0, Landroid/support/v4/app/i;->mTarget:Landroid/support/v4/app/i;

    iput p2, p0, Landroid/support/v4/app/i;->mTargetRequestCode:I

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 2

    const/4 v1, 0x4

    iget-boolean v0, p0, Landroid/support/v4/app/i;->mUserVisibleHint:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/support/v4/app/i;->mState:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/i;->mFragmentManager:Landroid/support/v4/app/o;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/app/i;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/i;->mFragmentManager:Landroid/support/v4/app/o;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/o;->d(Landroid/support/v4/app/i;)V

    :cond_0
    iput-boolean p1, p0, Landroid/support/v4/app/i;->mUserVisibleHint:Z

    iget v0, p0, Landroid/support/v4/app/i;->mState:I

    if-ge v0, v1, :cond_2

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/app/i;->mDeferStart:Z

    iget-object v0, p0, Landroid/support/v4/app/i;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/app/i;->mUserVisibleHint:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/i;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/i;->mHost:Landroid/support/v4/app/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/i;->mHost:Landroid/support/v4/app/m;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/m;->v(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/app/i;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/i;->mHost:Landroid/support/v4/app/m;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->mHost:Landroid/support/v4/app/m;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1, p2}, Landroid/support/v4/app/m;->a(Landroid/support/v4/app/i;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/app/i;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/i;->mHost:Landroid/support/v4/app/m;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->mHost:Landroid/support/v4/app/m;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v4/app/m;->a(Landroid/support/v4/app/i;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/i;->mHost:Landroid/support/v4/app/m;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/i;->mHost:Landroid/support/v4/app/m;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/support/v4/app/m;->a(Landroid/support/v4/app/i;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public startPostponedEnterTransition()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/i;->mFragmentManager:Landroid/support/v4/app/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/i;->mFragmentManager:Landroid/support/v4/app/o;

    iget-object v0, v0, Landroid/support/v4/app/o;->mHost:Landroid/support/v4/app/m;

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Landroid/support/v4/app/i;->ensureAnimationInfo()Landroid/support/v4/app/i$a;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/app/i$a;->xk:Z

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/i;->mFragmentManager:Landroid/support/v4/app/o;

    iget-object v1, v1, Landroid/support/v4/app/o;->mHost:Landroid/support/v4/app/m;

    iget-object v1, v1, Landroid/support/v4/app/m;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/i;->mFragmentManager:Landroid/support/v4/app/o;

    iget-object v0, v0, Landroid/support/v4/app/o;->mHost:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/support/v4/app/i$1;

    invoke-direct {v1, p0}, Landroid/support/v4/app/i$1;-><init>(Landroid/support/v4/app/i;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Landroid/support/v4/app/i;->callStartTransitionListener()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0, v0}, Landroid/support/v4/g/d;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    iget v1, p0, Landroid/support/v4/app/i;->mIndex:I

    if-ltz v1, :cond_0

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/app/i;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    iget v1, p0, Landroid/support/v4/app/i;->mFragmentId:I

    if-eqz v1, :cond_1

    const-string v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v4/app/i;->mFragmentId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/i;->mTag:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/app/i;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterForContextMenu(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    return-void
.end method
