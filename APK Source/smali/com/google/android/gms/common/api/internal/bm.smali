.class public final Lcom/google/android/gms/common/api/internal/bm;
.super Lcom/google/android/gms/internal/mf;

# interfaces
.implements Lcom/google/android/gms/common/api/f$b;
.implements Lcom/google/android/gms/common/api/f$c;


# static fields
.field private static aGa:Lcom/google/android/gms/common/api/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$b",
            "<+",
            "Lcom/google/android/gms/internal/ma;",
            "Lcom/google/android/gms/internal/mb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final aCt:Lcom/google/android/gms/common/api/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$b",
            "<+",
            "Lcom/google/android/gms/internal/ma;",
            "Lcom/google/android/gms/internal/mb;",
            ">;"
        }
    .end annotation
.end field

.field aDG:Lcom/google/android/gms/common/internal/ay;

.field aEe:Lcom/google/android/gms/internal/ma;

.field aFx:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field aGb:Lcom/google/android/gms/common/api/internal/bp;

.field final mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/lx;->aYV:Lcom/google/android/gms/common/api/a$b;

    sput-object v0, Lcom/google/android/gms/common/api/internal/bm;->aGa:Lcom/google/android/gms/common/api/a$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/ay;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/api/internal/bm;->aGa:Lcom/google/android/gms/common/api/a$b;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/common/api/internal/bm;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/ay;Lcom/google/android/gms/common/api/a$b;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/ay;Lcom/google/android/gms/common/api/a$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Lcom/google/android/gms/common/internal/ay;",
            "Lcom/google/android/gms/common/api/a$b",
            "<+",
            "Lcom/google/android/gms/internal/ma;",
            "Lcom/google/android/gms/internal/mb;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/mf;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/bm;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/bm;->mHandler:Landroid/os/Handler;

    const-string v0, "ClientSettings must not be null"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/ae;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/ay;

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/bm;->aDG:Lcom/google/android/gms/common/internal/ay;

    iget-object v0, p3, Lcom/google/android/gms/common/internal/ay;->aCJ:Ljava/util/Set;

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/bm;->aFx:Ljava/util/Set;

    iput-object p4, p0, Lcom/google/android/gms/common/api/internal/bm;->aCt:Lcom/google/android/gms/common/api/a$b;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/internal/bm;)Lcom/google/android/gms/common/api/internal/bp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bm;->aGb:Lcom/google/android/gms/common/api/internal/bp;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/common/api/internal/bm;Lcom/google/android/gms/internal/mn;)V
    .locals 5

    iget-object v0, p1, Lcom/google/android/gms/internal/mn;->aGN:Lcom/google/android/gms/common/a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a;->mQ()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/android/gms/internal/mn;->aZp:Lcom/google/android/gms/common/internal/ah;

    iget-object v0, v1, Lcom/google/android/gms/common/internal/ah;->aGN:Lcom/google/android/gms/common/a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a;->mQ()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v1, "SignInCoordinator"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x30

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/bm;->aGb:Lcom/google/android/gms/common/api/internal/bp;

    invoke-interface {v1, v0}, Lcom/google/android/gms/common/api/internal/bp;->h(Lcom/google/android/gms/common/a;)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bm;->aEe:Lcom/google/android/gms/internal/ma;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ma;->disconnect()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bm;->aGb:Lcom/google/android/gms/common/api/internal/bp;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/ah;->oh()Lcom/google/android/gms/common/internal/n;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/bm;->aFx:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/common/api/internal/bp;->b(Lcom/google/android/gms/common/internal/n;Ljava/util/Set;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/a;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bm;->aGb:Lcom/google/android/gms/common/api/internal/bp;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/bp;->h(Lcom/google/android/gms/common/a;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/mn;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bm;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/common/api/internal/bo;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/common/api/internal/bo;-><init>(Lcom/google/android/gms/common/api/internal/bm;Lcom/google/android/gms/internal/mn;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final cG(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bm;->aEe:Lcom/google/android/gms/internal/ma;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ma;->disconnect()V

    return-void
.end method

.method public final h(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/bm;->aEe:Lcom/google/android/gms/internal/ma;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ma;->a(Lcom/google/android/gms/internal/mg;)V

    return-void
.end method
