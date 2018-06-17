.class public Landroid/support/v4/app/j;
.super Landroid/support/v4/app/f;

# interfaces
.implements Landroid/support/v4/app/a$a;
.implements Landroid/support/v4/app/a$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/j$a;,
        Landroid/support/v4/app/j$b;
    }
.end annotation


# static fields
.field static final ALLOCATED_REQUEST_INDICIES_TAG:Ljava/lang/String; = "android:support:request_indicies"

.field static final FRAGMENTS_TAG:Ljava/lang/String; = "android:support:fragments"

.field static final MAX_NUM_PENDING_FRAGMENT_ACTIVITY_RESULTS:I = 0xfffe

.field static final MSG_REALLY_STOPPED:I = 0x1

.field static final MSG_RESUME_PENDING:I = 0x2

.field static final NEXT_CANDIDATE_REQUEST_INDEX_TAG:Ljava/lang/String; = "android:support:next_request_index"

.field static final REQUEST_FRAGMENT_WHO_TAG:Ljava/lang/String; = "android:support:request_fragment_who"

.field private static final TAG:Ljava/lang/String; = "FragmentActivity"


# instance fields
.field mCreated:Z

.field final mFragments:Landroid/support/v4/app/l;

.field final mHandler:Landroid/os/Handler;

.field mLoaderManager:Landroid/support/v4/app/x;

.field mNextCandidateRequestIndex:I

.field mPendingFragmentActivityResults:Landroid/support/v4/g/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/g/n",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mReallyStopped:Z

.field mRequestedPermissionsFromFragment:Z

.field mResumed:Z

.field mRetaining:Z

.field mStopped:Z

.field private mViewModelStore:Landroid/arch/lifecycle/p;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Landroid/support/v4/app/f;-><init>()V

    new-instance v0, Landroid/support/v4/app/j$1;

    invoke-direct {v0, p0}, Landroid/support/v4/app/j$1;-><init>(Landroid/support/v4/app/j;)V

    iput-object v0, p0, Landroid/support/v4/app/j;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/support/v4/app/j$a;

    invoke-direct {v0, p0}, Landroid/support/v4/app/j$a;-><init>(Landroid/support/v4/app/j;)V

    new-instance v1, Landroid/support/v4/app/l;

    invoke-direct {v1, v0}, Landroid/support/v4/app/l;-><init>(Landroid/support/v4/app/m;)V

    iput-object v1, p0, Landroid/support/v4/app/j;->mFragments:Landroid/support/v4/app/l;

    iput-boolean v2, p0, Landroid/support/v4/app/j;->mStopped:Z

    iput-boolean v2, p0, Landroid/support/v4/app/j;->mReallyStopped:Z

    return-void
.end method

.method private allocateRequestIndex(Landroid/support/v4/app/i;)I
    .locals 4

    const v3, 0xfffe

    iget-object v0, p0, Landroid/support/v4/app/j;->mPendingFragmentActivityResults:Landroid/support/v4/g/n;

    invoke-virtual {v0}, Landroid/support/v4/g/n;->size()I

    move-result v0

    if-lt v0, v3, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Too many pending Fragment activity results."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/j;->mPendingFragmentActivityResults:Landroid/support/v4/g/n;

    iget v1, p0, Landroid/support/v4/app/j;->mNextCandidateRequestIndex:I

    iget-boolean v2, v0, Landroid/support/v4/g/n;->EA:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/g/n;->gc()V

    :cond_1
    iget-object v2, v0, Landroid/support/v4/g/n;->ET:[I

    iget v0, v0, Landroid/support/v4/g/n;->ai:I

    invoke-static {v2, v0, v1}, Landroid/support/v4/g/c;->a([III)I

    move-result v0

    if-ltz v0, :cond_2

    iget v0, p0, Landroid/support/v4/app/j;->mNextCandidateRequestIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/2addr v0, v3

    iput v0, p0, Landroid/support/v4/app/j;->mNextCandidateRequestIndex:I

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/support/v4/app/j;->mNextCandidateRequestIndex:I

    iget-object v1, p0, Landroid/support/v4/app/j;->mPendingFragmentActivityResults:Landroid/support/v4/g/n;

    iget-object v2, p1, Landroid/support/v4/app/i;->mWho:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/g/n;->put(ILjava/lang/Object;)V

    iget v1, p0, Landroid/support/v4/app/j;->mNextCandidateRequestIndex:I

    add-int/lit8 v1, v1, 0x1

    rem-int/2addr v1, v3

    iput v1, p0, Landroid/support/v4/app/j;->mNextCandidateRequestIndex:I

    return v0
.end method

.method private markFragmentsCreated()V
    .locals 2

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/j;->getSupportFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    sget-object v1, Landroid/arch/lifecycle/c$b;->aC:Landroid/arch/lifecycle/c$b;

    invoke-static {v0, v1}, Landroid/support/v4/app/j;->markState(Landroid/support/v4/app/n;Landroid/arch/lifecycle/c$b;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method private static markState(Landroid/support/v4/app/n;Landroid/arch/lifecycle/c$b;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v4/app/n;->getFragments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/i;->getLifecycle()Landroid/arch/lifecycle/c;

    move-result-object v3

    invoke-virtual {v3}, Landroid/arch/lifecycle/c;->Y()Landroid/arch/lifecycle/c$b;

    move-result-object v3

    sget-object v4, Landroid/arch/lifecycle/c$b;->aD:Landroid/arch/lifecycle/c$b;

    invoke-virtual {v3, v4}, Landroid/arch/lifecycle/c$b;->a(Landroid/arch/lifecycle/c$b;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, v0, Landroid/support/v4/app/i;->mLifecycleRegistry:Landroid/arch/lifecycle/f;

    invoke-virtual {v1, p1}, Landroid/arch/lifecycle/f;->b(Landroid/arch/lifecycle/c$b;)V

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0}, Landroid/support/v4/app/i;->peekChildFragmentManager()Landroid/support/v4/app/n;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0, p1}, Landroid/support/v4/app/j;->markState(Landroid/support/v4/app/n;Landroid/arch/lifecycle/c$b;)Z

    move-result v0

    or-int/2addr v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method final dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/j;->mFragments:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->mHost:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->mFragmentManager:Landroid/support/v4/app/o;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/o;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method doReallyStop(Z)V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Landroid/support/v4/app/j;->mReallyStopped:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Landroid/support/v4/app/j;->mReallyStopped:Z

    iput-boolean p1, p0, Landroid/support/v4/app/j;->mRetaining:Z

    iget-object v0, p0, Landroid/support/v4/app/j;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Landroid/support/v4/app/j;->onReallyStop()V

    :cond_0
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/app/f;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " State:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/support/v4/app/j;->mCreated:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, "mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/support/v4/app/j;->mResumed:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/support/v4/app/j;->mStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mReallyStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/support/v4/app/j;->mReallyStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v1, p0, Landroid/support/v4/app/j;->mLoaderManager:Landroid/support/v4/app/x;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v4/app/j;->mLoaderManager:Landroid/support/v4/app/x;

    invoke-virtual {v1, v0, p3}, Landroid/support/v4/app/x;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/j;->mFragments:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->mHost:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->mFragmentManager:Landroid/support/v4/app/o;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/n;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/app/j;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/j$b;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/support/v4/app/j$b;->xp:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLifecycle()Landroid/arch/lifecycle/c;
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/f;->getLifecycle()Landroid/arch/lifecycle/c;

    move-result-object v0

    return-object v0
.end method

.method public getSupportFragmentManager()Landroid/support/v4/app/n;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/j;->mFragments:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->mHost:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->mFragmentManager:Landroid/support/v4/app/o;

    return-object v0
.end method

.method public getSupportLoaderManager()Landroid/support/v4/app/x;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/j;->mLoaderManager:Landroid/support/v4/app/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/j;->mLoaderManager:Landroid/support/v4/app/x;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {p0}, Landroid/support/v4/app/j;->getViewModelStore()Landroid/arch/lifecycle/p;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v4/app/LoaderManagerImpl;-><init>(Landroid/arch/lifecycle/e;Landroid/arch/lifecycle/p;)V

    iput-object v0, p0, Landroid/support/v4/app/j;->mLoaderManager:Landroid/support/v4/app/x;

    iget-object v0, p0, Landroid/support/v4/app/j;->mLoaderManager:Landroid/support/v4/app/x;

    goto :goto_0
.end method

.method public getViewModelStore()Landroid/arch/lifecycle/p;
    .locals 2

    invoke-virtual {p0}, Landroid/support/v4/app/j;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Your activity is not yet attached to the Application instance. You can\'t request ViewModel before onCreate call."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/j;->mViewModelStore:Landroid/arch/lifecycle/p;

    if-nez v0, :cond_1

    new-instance v0, Landroid/arch/lifecycle/p;

    invoke-direct {v0}, Landroid/arch/lifecycle/p;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/j;->mViewModelStore:Landroid/arch/lifecycle/p;

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/j;->mViewModelStore:Landroid/arch/lifecycle/p;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    iget-object v0, p0, Landroid/support/v4/app/j;->mFragments:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->noteStateNotSaved()V

    shr-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_3

    add-int/lit8 v1, v0, -0x1

    iget-object v0, p0, Landroid/support/v4/app/j;->mPendingFragmentActivityResults:Landroid/support/v4/g/n;

    invoke-virtual {v0, v1}, Landroid/support/v4/g/n;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Landroid/support/v4/app/j;->mPendingFragmentActivityResults:Landroid/support/v4/g/n;

    invoke-virtual {v2, v1}, Landroid/support/v4/g/n;->remove(I)V

    if-nez v0, :cond_1

    const-string v0, "FragmentActivity"

    const-string v1, "Activity result delivered for unknown Fragment."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/j;->mFragments:Landroid/support/v4/app/l;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/l;->findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/i;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "FragmentActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Activity result no fragment exists for who: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const v0, 0xffff

    and-int/2addr v0, p1

    invoke-virtual {v1, v0, p2, p3}, Landroid/support/v4/app/i;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/support/v4/app/a;->cx()Landroid/support/v4/app/a$b;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/support/v4/app/a$b;->cz()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/f;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onAttachFragment(Landroid/support/v4/app/i;)V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 4

    iget-object v0, p0, Landroid/support/v4/app/j;->mFragments:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->mHost:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->mFragmentManager:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->isStateSaved()Z

    move-result v1

    if-eqz v1, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-gt v2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/support/v4/app/n;->popBackStackImmediate()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-super {p0}, Landroid/support/v4/app/f;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/f;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Landroid/support/v4/app/j;->mFragments:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->noteStateNotSaved()V

    iget-object v0, p0, Landroid/support/v4/app/j;->mFragments:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->mHost:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->mFragmentManager:Landroid/support/v4/app/o;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/o;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v4/app/j;->mFragments:Landroid/support/v4/app/l;

    iget-object v3, v0, Landroid/support/v4/app/l;->mHost:Landroid/support/v4/app/m;

    iget-object v3, v3, Landroid/support/v4/app/m;->mFragmentManager:Landroid/support/v4/app/o;

    iget-object v4, v0, Landroid/support/v4/app/l;->mHost:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/l;->mHost:Landroid/support/v4/app/m;

    invoke-virtual {v3, v4, v0, v1}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/m;Landroid/support/v4/app/k;Landroid/support/v4/app/i;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/f;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/support/v4/app/j;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/j$b;

    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/support/v4/app/j$b;->xq:Landroid/arch/lifecycle/p;

    iput-object v3, p0, Landroid/support/v4/app/j;->mViewModelStore:Landroid/arch/lifecycle/p;

    :cond_0
    if-eqz p1, :cond_2

    const-string v3, "android:support:fragments"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v4/app/j;->mFragments:Landroid/support/v4/app/l;

    if-eqz v0, :cond_4

    iget-object v0, v0, Landroid/support/v4/app/j$b;->xr:Landroid/support/v4/app/p;

    :goto_0
    iget-object v1, v4, Landroid/support/v4/app/l;->mHost:Landroid/support/v4/app/m;

    iget-object v1, v1, Landroid/support/v4/app/m;->mFragmentManager:Landroid/support/v4/app/o;

    invoke-virtual {v1, v3, v0}, Landroid/support/v4/app/o;->a(Landroid/os/Parcelable;Landroid/support/v4/app/p;)V

    const-string v0, "android:support:next_request_index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "android:support:next_request_index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/j;->mNextCandidateRequestIndex:I

    const-string v0, "android:support:request_indicies"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    const-string v0, "android:support:request_fragment_who"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    array-length v0, v1

    array-length v4, v3

    if-eq v0, v4, :cond_5

    :cond_1
    const-string v0, "FragmentActivity"

    const-string v1, "Invalid requestCode mapping in savedInstanceState."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/j;->mPendingFragmentActivityResults:Landroid/support/v4/g/n;

    if-nez v0, :cond_3

    new-instance v0, Landroid/support/v4/g/n;

    invoke-direct {v0}, Landroid/support/v4/g/n;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/j;->mPendingFragmentActivityResults:Landroid/support/v4/g/n;

    iput v2, p0, Landroid/support/v4/app/j;->mNextCandidateRequestIndex:I

    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/j;->mFragments:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->mHost:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->mFragmentManager:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->dispatchCreate()V

    return-void

    :cond_4
    move-object v0, v1

    goto :goto_0

    :cond_5
    new-instance v0, Landroid/support/v4/g/n;

    array-length v4, v1

    invoke-direct {v0, v4}, Landroid/support/v4/g/n;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/app/j;->mPendingFragmentActivityResults:Landroid/support/v4/g/n;

    move v0, v2

    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_2

    iget-object v4, p0, Landroid/support/v4/app/j;->mPendingFragmentActivityResults:Landroid/support/v4/g/n;

    aget v5, v1, v0

    aget-object v6, v3, v0

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/g/n;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 3

    if-nez p1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/f;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    iget-object v1, p0, Landroid/support/v4/app/j;->mFragments:Landroid/support/v4/app/l;

    invoke-virtual {p0}, Landroid/support/v4/app/j;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    iget-object v1, v1, Landroid/support/v4/app/l;->mHost:Landroid/support/v4/app/m;

    iget-object v1, v1, Landroid/support/v4/app/m;->mFragmentManager:Landroid/support/v4/app/o;

    invoke-virtual {v1, p2, v2}, Landroid/support/v4/app/o;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/f;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/app/f;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/f;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/f;->onDestroy()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/j;->doReallyStop(Z)V

    iget-object v0, p0, Landroid/support/v4/app/j;->mViewModelStore:Landroid/arch/lifecycle/p;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v4/app/j;->mRetaining:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/j;->mViewModelStore:Landroid/arch/lifecycle/p;

    invoke-virtual {v0}, Landroid/arch/lifecycle/p;->clear()V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/j;->mFragments:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->mHost:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->mFragmentManager:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->dispatchDestroy()V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/f;->onLowMemory()V

    iget-object v0, p0, Landroid/support/v4/app/j;->mFragments:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->mHost:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->mFragmentManager:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->dispatchLowMemory()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/f;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Landroid/support/v4/app/j;->mFragments:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->mHost:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->mFragmentManager:Landroid/support/v4/app/o;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/o;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Landroid/support/v4/app/j;->mFragments:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->mHost:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->mFragmentManager:Landroid/support/v4/app/o;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/o;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/j;->mFragments:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->mHost:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->mFragmentManager:Landroid/support/v4/app/o;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/o;->dispatchMultiWindowModeChanged(Z)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/f;->onNewIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Landroid/support/v4/app/j;->mFragments:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->noteStateNotSaved()V

    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/f;->onPanelClosed(ILandroid/view/Menu;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/support/v4/app/j;->mFragments:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->mHost:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->mFragmentManager:Landroid/support/v4/app/o;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/o;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    const/4 v1, 0x2

    invoke-super {p0}, Landroid/support/v4/app/f;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/j;->mResumed:Z

    iget-object v0, p0, Landroid/support/v4/app/j;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/j;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Landroid/support/v4/app/j;->onResumeFragments()V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/j;->mFragments:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->mHost:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->mFragmentManager:Landroid/support/v4/app/o;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->aa(I)V

    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/j;->mFragments:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->mHost:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->mFragmentManager:Landroid/support/v4/app/o;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/o;->dispatchPictureInPictureModeChanged(Z)V

    return-void
.end method

.method public onPostResume()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/f;->onPostResume()V

    iget-object v0, p0, Landroid/support/v4/app/j;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Landroid/support/v4/app/j;->onResumeFragments()V

    iget-object v0, p0, Landroid/support/v4/app/j;->mFragments:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->execPendingActions()Z

    return-void
.end method

.method protected onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, v0, p1, p2}, Landroid/support/v4/app/f;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 2

    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p0, p2, p3}, Landroid/support/v4/app/j;->onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    iget-object v1, p0, Landroid/support/v4/app/j;->mFragments:Landroid/support/v4/app/l;

    iget-object v1, v1, Landroid/support/v4/app/l;->mHost:Landroid/support/v4/app/m;

    iget-object v1, v1, Landroid/support/v4/app/m;->mFragmentManager:Landroid/support/v4/app/o;

    invoke-virtual {v1, p3}, Landroid/support/v4/app/o;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/f;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method onReallyStop()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/app/j;->mFragments:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->mHost:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->mFragmentManager:Landroid/support/v4/app/o;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->aa(I)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    const v3, 0xffff

    iget-object v0, p0, Landroid/support/v4/app/j;->mFragments:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->noteStateNotSaved()V

    shr-int/lit8 v0, p1, 0x10

    and-int/2addr v0, v3

    if-eqz v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    iget-object v0, p0, Landroid/support/v4/app/j;->mPendingFragmentActivityResults:Landroid/support/v4/g/n;

    invoke-virtual {v0, v1}, Landroid/support/v4/g/n;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Landroid/support/v4/app/j;->mPendingFragmentActivityResults:Landroid/support/v4/g/n;

    invoke-virtual {v2, v1}, Landroid/support/v4/g/n;->remove(I)V

    if-nez v0, :cond_1

    const-string v0, "FragmentActivity"

    const-string v1, "Activity result delivered for unknown Fragment."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/j;->mFragments:Landroid/support/v4/app/l;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/l;->findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/i;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "FragmentActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Activity result no fragment exists for who: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    and-int v0, p1, v3

    invoke-virtual {v1, v0, p2, p3}, Landroid/support/v4/app/i;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/f;->onResume()V

    iget-object v0, p0, Landroid/support/v4/app/j;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/j;->mResumed:Z

    iget-object v0, p0, Landroid/support/v4/app/j;->mFragments:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->execPendingActions()Z

    return-void
.end method

.method public onResumeFragments()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/j;->mFragments:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->mHost:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->mFragmentManager:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->dispatchResume()V

    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    iget-boolean v0, p0, Landroid/support/v4/app/j;->mStopped:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/app/j;->doReallyStop(Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/j;->onRetainCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    iget-object v0, p0, Landroid/support/v4/app/j;->mFragments:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->mHost:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->mFragmentManager:Landroid/support/v4/app/o;

    iget-object v2, v0, Landroid/support/v4/app/o;->xV:Landroid/support/v4/app/p;

    invoke-static {v2}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/p;)V

    iget-object v2, v0, Landroid/support/v4/app/o;->xV:Landroid/support/v4/app/p;

    if-nez v2, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/j;->mViewModelStore:Landroid/arch/lifecycle/p;

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/support/v4/app/j$b;

    invoke-direct {v0}, Landroid/support/v4/app/j$b;-><init>()V

    iput-object v1, v0, Landroid/support/v4/app/j$b;->xp:Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v4/app/j;->mViewModelStore:Landroid/arch/lifecycle/p;

    iput-object v1, v0, Landroid/support/v4/app/j$b;->xq:Landroid/arch/lifecycle/p;

    iput-object v2, v0, Landroid/support/v4/app/j$b;->xr:Landroid/support/v4/app/p;

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/support/v4/app/f;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-direct {p0}, Landroid/support/v4/app/j;->markFragmentsCreated()V

    iget-object v0, p0, Landroid/support/v4/app/j;->mFragments:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->mHost:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->mFragmentManager:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->saveAllState()Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/j;->mPendingFragmentActivityResults:Landroid/support/v4/g/n;

    invoke-virtual {v0}, Landroid/support/v4/g/n;->size()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "android:support:next_request_index"

    iget v1, p0, Landroid/support/v4/app/j;->mNextCandidateRequestIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Landroid/support/v4/app/j;->mPendingFragmentActivityResults:Landroid/support/v4/g/n;

    invoke-virtual {v0}, Landroid/support/v4/g/n;->size()I

    move-result v0

    new-array v2, v0, [I

    iget-object v0, p0, Landroid/support/v4/app/j;->mPendingFragmentActivityResults:Landroid/support/v4/g/n;

    invoke-virtual {v0}, Landroid/support/v4/g/n;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/j;->mPendingFragmentActivityResults:Landroid/support/v4/g/n;

    invoke-virtual {v0}, Landroid/support/v4/g/n;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/j;->mPendingFragmentActivityResults:Landroid/support/v4/g/n;

    invoke-virtual {v0, v1}, Landroid/support/v4/g/n;->keyAt(I)I

    move-result v0

    aput v0, v2, v1

    iget-object v0, p0, Landroid/support/v4/app/j;->mPendingFragmentActivityResults:Landroid/support/v4/g/n;

    invoke-virtual {v0, v1}, Landroid/support/v4/g/n;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const-string v0, "android:support:request_indicies"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v0, "android:support:request_fragment_who"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onStart()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/support/v4/app/f;->onStart()V

    iput-boolean v0, p0, Landroid/support/v4/app/j;->mStopped:Z

    iput-boolean v0, p0, Landroid/support/v4/app/j;->mReallyStopped:Z

    iget-object v0, p0, Landroid/support/v4/app/j;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Landroid/support/v4/app/j;->mCreated:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Landroid/support/v4/app/j;->mCreated:Z

    iget-object v0, p0, Landroid/support/v4/app/j;->mFragments:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->mHost:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->mFragmentManager:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->dispatchActivityCreated()V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/j;->mFragments:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->noteStateNotSaved()V

    iget-object v0, p0, Landroid/support/v4/app/j;->mFragments:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->execPendingActions()Z

    iget-object v0, p0, Landroid/support/v4/app/j;->mFragments:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->mHost:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->mFragmentManager:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->dispatchStart()V

    return-void
.end method

.method public onStateNotSaved()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/j;->mFragments:Landroid/support/v4/app/l;

    invoke-virtual {v0}, Landroid/support/v4/app/l;->noteStateNotSaved()V

    return-void
.end method

.method public onStop()V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0}, Landroid/support/v4/app/f;->onStop()V

    iput-boolean v1, p0, Landroid/support/v4/app/j;->mStopped:Z

    invoke-direct {p0}, Landroid/support/v4/app/j;->markFragmentsCreated()V

    iget-object v0, p0, Landroid/support/v4/app/j;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Landroid/support/v4/app/j;->mFragments:Landroid/support/v4/app/l;

    iget-object v0, v0, Landroid/support/v4/app/l;->mHost:Landroid/support/v4/app/m;

    iget-object v0, v0, Landroid/support/v4/app/m;->mFragmentManager:Landroid/support/v4/app/o;

    invoke-virtual {v0}, Landroid/support/v4/app/o;->dispatchStop()V

    return-void
.end method

.method requestPermissionsFromFragment(Landroid/support/v4/app/i;[Ljava/lang/String;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    invoke-static {p0, p2, p3}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p3}, Landroid/support/v4/app/j;->checkForValidRequestCode(I)V

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/support/v4/app/j;->mRequestedPermissionsFromFragment:Z

    invoke-direct {p0, p1}, Landroid/support/v4/app/j;->allocateRequestIndex(Landroid/support/v4/app/i;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v1, p3

    add-int/2addr v0, v1

    invoke-static {p0, p2, v0}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v2, p0, Landroid/support/v4/app/j;->mRequestedPermissionsFromFragment:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Landroid/support/v4/app/j;->mRequestedPermissionsFromFragment:Z

    throw v0
.end method

.method public setEnterSharedElementCallback(Landroid/support/v4/app/ag;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;Landroid/support/v4/app/ag;)V

    return-void
.end method

.method public setExitSharedElementCallback(Landroid/support/v4/app/ag;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/support/v4/app/a;->b(Landroid/app/Activity;Landroid/support/v4/app/ag;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/app/j;->mStartedActivityFromFragment:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-static {p2}, Landroid/support/v4/app/j;->checkForValidRequestCode(I)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/f;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/f;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityFromFragment(Landroid/support/v4/app/i;Landroid/content/Intent;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v4/app/j;->startActivityFromFragment(Landroid/support/v4/app/i;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityFromFragment(Landroid/support/v4/app/i;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 3

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/j;->mStartedActivityFromFragment:Z

    if-ne p3, v1, :cond_0

    const/4 v0, -0x1

    :try_start_0
    invoke-static {p0, p2, v0, p4}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v2, p0, Landroid/support/v4/app/j;->mStartedActivityFromFragment:Z

    :goto_0
    return-void

    :cond_0
    :try_start_1
    invoke-static {p3}, Landroid/support/v4/app/j;->checkForValidRequestCode(I)V

    invoke-direct {p0, p1}, Landroid/support/v4/app/j;->allocateRequestIndex(Landroid/support/v4/app/i;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v1, p3

    add-int/2addr v0, v1

    invoke-static {p0, p2, v0, p4}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v2, p0, Landroid/support/v4/app/j;->mStartedActivityFromFragment:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Landroid/support/v4/app/j;->mStartedActivityFromFragment:Z

    throw v0
.end method

.method public bridge synthetic startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    invoke-super/range {p0 .. p6}, Landroid/support/v4/app/f;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method

.method public bridge synthetic startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    invoke-super/range {p0 .. p7}, Landroid/support/v4/app/f;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public startIntentSenderFromFragment(Landroid/support/v4/app/i;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/j;->mStartedIntentSenderFromFragment:Z

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    move-object/from16 v7, p8

    :try_start_0
    invoke-static/range {v0 .. v7}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/j;->mStartedIntentSenderFromFragment:Z

    :goto_0
    return-void

    :cond_0
    :try_start_1
    invoke-static {p3}, Landroid/support/v4/app/j;->checkForValidRequestCode(I)V

    invoke-direct {p0, p1}, Landroid/support/v4/app/j;->allocateRequestIndex(Landroid/support/v4/app/i;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v1, p3

    add-int v2, v0, v1

    move-object v0, p0

    move-object v1, p2

    move-object v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    move-object/from16 v7, p8

    invoke-static/range {v0 .. v7}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/j;->mStartedIntentSenderFromFragment:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/app/j;->mStartedIntentSenderFromFragment:Z

    throw v0
.end method

.method public supportFinishAfterTransition()V
    .locals 0

    invoke-static {p0}, Landroid/support/v4/app/a;->c(Landroid/app/Activity;)V

    return-void
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/support/v4/app/j;->invalidateOptionsMenu()V

    return-void
.end method

.method public supportPostponeEnterTransition()V
    .locals 0

    invoke-static {p0}, Landroid/support/v4/app/a;->d(Landroid/app/Activity;)V

    return-void
.end method

.method public supportStartPostponedEnterTransition()V
    .locals 0

    invoke-static {p0}, Landroid/support/v4/app/a;->e(Landroid/app/Activity;)V

    return-void
.end method

.method public final validateRequestPermissionsRequestCode(I)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/app/j;->mRequestedPermissionsFromFragment:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Landroid/support/v4/app/j;->checkForValidRequestCode(I)V

    :cond_0
    return-void
.end method
