.class public Landroid/arch/a/a/a;
.super Landroid/arch/a/a/c;


# static fields
.field private static volatile X:Landroid/arch/a/a/a;

.field private static final aa:Ljava/util/concurrent/Executor;

.field private static final ab:Ljava/util/concurrent/Executor;


# instance fields
.field public Y:Landroid/arch/a/a/c;

.field private Z:Landroid/arch/a/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/arch/a/a/a$1;

    invoke-direct {v0}, Landroid/arch/a/a/a$1;-><init>()V

    sput-object v0, Landroid/arch/a/a/a;->aa:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/arch/a/a/a$2;

    invoke-direct {v0}, Landroid/arch/a/a/a$2;-><init>()V

    sput-object v0, Landroid/arch/a/a/a;->ab:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/arch/a/a/c;-><init>()V

    new-instance v0, Landroid/arch/a/a/b;

    invoke-direct {v0}, Landroid/arch/a/a/b;-><init>()V

    iput-object v0, p0, Landroid/arch/a/a/a;->Z:Landroid/arch/a/a/c;

    iget-object v0, p0, Landroid/arch/a/a/a;->Z:Landroid/arch/a/a/c;

    iput-object v0, p0, Landroid/arch/a/a/a;->Y:Landroid/arch/a/a/c;

    return-void
.end method

.method public static F()Landroid/arch/a/a/a;
    .locals 2

    sget-object v0, Landroid/arch/a/a/a;->X:Landroid/arch/a/a/a;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/arch/a/a/a;->X:Landroid/arch/a/a/a;

    :goto_0
    return-object v0

    :cond_0
    const-class v1, Landroid/arch/a/a/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/arch/a/a/a;->X:Landroid/arch/a/a/a;

    if-nez v0, :cond_1

    new-instance v0, Landroid/arch/a/a/a;

    invoke-direct {v0}, Landroid/arch/a/a/a;-><init>()V

    sput-object v0, Landroid/arch/a/a/a;->X:Landroid/arch/a/a/a;

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Landroid/arch/a/a/a;->X:Landroid/arch/a/a/a;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final V()Z
    .locals 1

    iget-object v0, p0, Landroid/arch/a/a/a;->Y:Landroid/arch/a/a/c;

    invoke-virtual {v0}, Landroid/arch/a/a/c;->V()Z

    move-result v0

    return v0
.end method

.method public final e(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Landroid/arch/a/a/a;->Y:Landroid/arch/a/a/c;

    invoke-virtual {v0, p1}, Landroid/arch/a/a/c;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final f(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Landroid/arch/a/a/a;->Y:Landroid/arch/a/a/c;

    invoke-virtual {v0, p1}, Landroid/arch/a/a/c;->f(Ljava/lang/Runnable;)V

    return-void
.end method
