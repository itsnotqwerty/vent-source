.class public Lcom/amazonaws/event/ProgressListenerCallbackExecutor;
.super Ljava/lang/Object;


# static fields
.field static executor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final anI:Lcom/amazonaws/event/ProgressListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor$3;

    invoke-direct {v0}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor$3;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->anI:Lcom/amazonaws/event/ProgressListener;

    return-void
.end method

.method private constructor <init>(Lcom/amazonaws/event/ProgressListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->anI:Lcom/amazonaws/event/ProgressListener;

    return-void
.end method

.method static synthetic a(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;)Lcom/amazonaws/event/ProgressListener;
    .locals 1

    iget-object v0, p0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->anI:Lcom/amazonaws/event/ProgressListener;

    return-object v0
.end method

.method public static a(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/event/ProgressListenerCallbackExecutor;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    invoke-direct {v0, p0}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;-><init>(Lcom/amazonaws/event/ProgressListener;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/amazonaws/event/ProgressEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->anI:Lcom/amazonaws/event/ProgressListener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/amazonaws/event/ProgressListenerCallbackExecutor;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amazonaws/event/ProgressListenerCallbackExecutor$2;

    invoke-direct {v1, p0, p1}, Lcom/amazonaws/event/ProgressListenerCallbackExecutor$2;-><init>(Lcom/amazonaws/event/ProgressListenerCallbackExecutor;Lcom/amazonaws/event/ProgressEvent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method
