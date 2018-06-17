.class public final Lcom/c/a/t$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/c/a/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public bMY:Lcom/c/a/d;

.field public bNr:Ljava/util/concurrent/ExecutorService;

.field public bNs:Lcom/c/a/j;

.field public bOa:Lcom/c/a/t$c;

.field public bOd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/c/a/y;",
            ">;"
        }
    .end annotation
.end field

.field public bOh:Landroid/graphics/Bitmap$Config;

.field public bOi:Z

.field public bOj:Z

.field public bOk:Lcom/c/a/t$f;

.field public final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/t$a;->context:Landroid/content/Context;

    return-void
.end method
