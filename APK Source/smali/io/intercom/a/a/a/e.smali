.class public final Lio/intercom/a/a/a/e;
.super Landroid/content/ContextWrapper;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field static final cFK:Lio/intercom/a/a/a/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/k",
            "<**>;"
        }
    .end annotation
.end field


# instance fields
.field final cFB:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lio/intercom/a/a/a/k",
            "<**>;>;"
        }
    .end annotation
.end field

.field final cFG:Lio/intercom/a/a/a/g/g;

.field private final cFL:Lio/intercom/a/a/a/g/a/e;

.field final cFq:Lio/intercom/a/a/a/c/b/j;

.field public final cFv:Lio/intercom/a/a/a/h;

.field public final cFw:Lio/intercom/a/a/a/c/b/a/b;

.field public final logLevel:I

.field public final mainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/intercom/a/a/a/b;

    invoke-direct {v0}, Lio/intercom/a/a/a/b;-><init>()V

    sput-object v0, Lio/intercom/a/a/a/e;->cFK:Lio/intercom/a/a/a/k;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/intercom/a/a/a/c/b/a/b;Lio/intercom/a/a/a/h;Lio/intercom/a/a/a/g/a/e;Lio/intercom/a/a/a/g/g;Ljava/util/Map;Lio/intercom/a/a/a/c/b/j;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/intercom/a/a/a/c/b/a/b;",
            "Lio/intercom/a/a/a/h;",
            "Lio/intercom/a/a/a/g/a/e;",
            "Lio/intercom/a/a/a/g/g;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lio/intercom/a/a/a/k",
            "<**>;>;",
            "Lio/intercom/a/a/a/c/b/j;",
            "I)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lio/intercom/a/a/a/e;->cFw:Lio/intercom/a/a/a/c/b/a/b;

    iput-object p3, p0, Lio/intercom/a/a/a/e;->cFv:Lio/intercom/a/a/a/h;

    iput-object p4, p0, Lio/intercom/a/a/a/e;->cFL:Lio/intercom/a/a/a/g/a/e;

    iput-object p5, p0, Lio/intercom/a/a/a/e;->cFG:Lio/intercom/a/a/a/g/g;

    iput-object p6, p0, Lio/intercom/a/a/a/e;->cFB:Ljava/util/Map;

    iput-object p7, p0, Lio/intercom/a/a/a/e;->cFq:Lio/intercom/a/a/a/c/b/j;

    iput p8, p0, Lio/intercom/a/a/a/e;->logLevel:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lio/intercom/a/a/a/e;->mainHandler:Landroid/os/Handler;

    return-void
.end method
