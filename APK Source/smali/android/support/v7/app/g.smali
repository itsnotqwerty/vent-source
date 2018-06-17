.class abstract Landroid/support/v7/app/g;
.super Landroid/support/v7/app/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/g$b;,
        Landroid/support/v7/app/g$a;
    }
.end annotation


# static fields
.field private static MB:Z

.field private static final MC:Z

.field private static final MD:[I


# instance fields
.field Ch:Ljava/lang/CharSequence;

.field final Le:Landroid/view/Window;

.field final ME:Landroid/view/Window$Callback;

.field final MF:Landroid/view/Window$Callback;

.field final MG:Landroid/support/v7/app/e;

.field MH:Landroid/support/v7/app/a;

.field MI:Landroid/view/MenuInflater;

.field MJ:Z

.field MK:Z

.field ML:Z

.field MM:Z

.field MN:Z

.field private MO:Z

.field MP:Z

.field final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v0, v3, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/support/v7/app/g;->MC:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/support/v7/app/g;->MB:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    new-instance v3, Landroid/support/v7/app/g$1;

    invoke-direct {v3, v0}, Landroid/support/v7/app/g$1;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v3}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    sput-boolean v1, Landroid/support/v7/app/g;->MB:Z

    :cond_0
    new-array v0, v1, [I

    const v1, 0x1010054

    aput v1, v0, v2

    sput-object v0, Landroid/support/v7/app/g;->MD:[I

    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/e;)V
    .locals 3

    invoke-direct {p0}, Landroid/support/v7/app/f;-><init>()V

    iput-object p1, p0, Landroid/support/v7/app/g;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/support/v7/app/g;->Le:Landroid/view/Window;

    iput-object p3, p0, Landroid/support/v7/app/g;->MG:Landroid/support/v7/app/e;

    iget-object v0, p0, Landroid/support/v7/app/g;->Le:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/g;->ME:Landroid/view/Window$Callback;

    iget-object v0, p0, Landroid/support/v7/app/g;->ME:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/support/v7/app/g$b;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AppCompat has already installed itself into the Window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/g;->ME:Landroid/view/Window$Callback;

    invoke-virtual {p0, v0}, Landroid/support/v7/app/g;->a(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/g;->MF:Landroid/view/Window$Callback;

    iget-object v0, p0, Landroid/support/v7/app/g;->Le:Landroid/view/Window;

    iget-object v1, p0, Landroid/support/v7/app/g;->MF:Landroid/view/Window$Callback;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    const/4 v0, 0x0

    sget-object v1, Landroid/support/v7/app/g;->MD:[I

    invoke-static {p1, v0, v1}, Landroid/support/v7/widget/bo;->a(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/support/v7/widget/bo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bo;->ch(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Landroid/support/v7/app/g;->Le:Landroid/view/Window;

    invoke-virtual {v2, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, v0, Landroid/support/v7/widget/bo;->ajT:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method a(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .locals 1

    new-instance v0, Landroid/support/v7/app/g$b;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/g$b;-><init>(Landroid/support/v7/app/g;Landroid/view/Window$Callback;)V

    return-object v0
.end method

.method abstract aP(I)V
.end method

.method abstract aQ(I)Z
.end method

.method abstract b(Landroid/support/v7/view/b$a;)Landroid/support/v7/view/b;
.end method

.method abstract dispatchKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method public ew()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method abstract ey()V
.end method

.method final ez()Landroid/content/Context;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/app/g;->getSupportActionBar()Landroid/support/v7/app/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v7/app/a;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/g;->mContext:Landroid/content/Context;

    :cond_1
    return-object v0
.end method

.method public final getDrawerToggleDelegate()Landroid/support/v7/app/b$a;
    .locals 1

    new-instance v0, Landroid/support/v7/app/g$a;

    invoke-direct {v0, p0}, Landroid/support/v7/app/g$a;-><init>(Landroid/support/v7/app/g;)V

    return-object v0
.end method

.method public final getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    iget-object v0, p0, Landroid/support/v7/app/g;->MI:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/app/g;->ey()V

    new-instance v1, Landroid/support/v7/view/g;

    iget-object v0, p0, Landroid/support/v7/app/g;->MH:Landroid/support/v7/app/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/g;->MH:Landroid/support/v7/app/a;

    invoke-virtual {v0}, Landroid/support/v7/app/a;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Landroid/support/v7/view/g;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/app/g;->MI:Landroid/view/MenuInflater;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/g;->MI:Landroid/view/MenuInflater;

    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/g;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public final getSupportActionBar()Landroid/support/v7/app/a;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/app/g;->ey()V

    iget-object v0, p0, Landroid/support/v7/app/g;->MH:Landroid/support/v7/app/a;

    return-object v0
.end method

.method abstract l(Ljava/lang/CharSequence;)V
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/g;->MP:Z

    return-void
.end method

.method abstract onKeyShortcut(ILandroid/view/KeyEvent;)Z
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/g;->MO:Z

    return-void
.end method

.method public onStop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/g;->MO:Z

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/app/g;->Ch:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/support/v7/app/g;->l(Ljava/lang/CharSequence;)V

    return-void
.end method
