.class public final Lcom/google/android/gms/ads/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final ayY:Lcom/google/android/gms/internal/or;

.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/or;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/b$a;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/b$a;->ayY:Lcom/google/android/gms/internal/or;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/ae;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/internal/of;->tk()Lcom/google/android/gms/internal/nx;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ti;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ti;-><init>()V

    new-instance v3, Lcom/google/android/gms/internal/ob;

    invoke-direct {v3, v1, p1, p2, v2}, Lcom/google/android/gms/internal/ob;-><init>(Lcom/google/android/gms/internal/nx;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/tj;)V

    const/4 v1, 0x0

    invoke-static {p1, v1, v3}, Lcom/google/android/gms/internal/nx;->a(Landroid/content/Context;ZLcom/google/android/gms/internal/nx$a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/or;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/ads/b$a;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/or;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/ads/a;)Lcom/google/android/gms/ads/b$a;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/b$a;->ayY:Lcom/google/android/gms/internal/or;

    new-instance v1, Lcom/google/android/gms/internal/no;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/no;-><init>(Lcom/google/android/gms/ads/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/or;->a(Lcom/google/android/gms/internal/ol;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    const-string v1, "Failed to set AdListener."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/ads/b/d;)Lcom/google/android/gms/ads/b$a;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/b$a;->ayY:Lcom/google/android/gms/internal/or;

    new-instance v1, Lcom/google/android/gms/internal/rd;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/rd;-><init>(Lcom/google/android/gms/ads/b/d;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/or;->a(Lcom/google/android/gms/internal/rd;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    const-string v1, "Failed to specify native ad options"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/ads/b/g$a;)Lcom/google/android/gms/ads/b$a;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/b$a;->ayY:Lcom/google/android/gms/internal/or;

    new-instance v1, Lcom/google/android/gms/internal/td;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/td;-><init>(Lcom/google/android/gms/ads/b/g$a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/or;->a(Lcom/google/android/gms/internal/sh;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    const-string v1, "Failed to add app install ad listener"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/ads/b/h$a;)Lcom/google/android/gms/ads/b$a;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/b$a;->ayY:Lcom/google/android/gms/internal/or;

    new-instance v1, Lcom/google/android/gms/internal/te;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/te;-><init>(Lcom/google/android/gms/ads/b/h$a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/or;->a(Lcom/google/android/gms/internal/sk;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    const-string v1, "Failed to add content ad listener"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/ads/b/k$a;)Lcom/google/android/gms/ads/b$a;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/b$a;->ayY:Lcom/google/android/gms/internal/or;

    new-instance v1, Lcom/google/android/gms/internal/th;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/th;-><init>(Lcom/google/android/gms/ads/b/k$a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/or;->a(Lcom/google/android/gms/internal/sv;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    const-string v1, "Failed to add google native ad listener"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/ads/b/i$b;Lcom/google/android/gms/ads/b/i$a;)Lcom/google/android/gms/ads/b$a;
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/b$a;->ayY:Lcom/google/android/gms/internal/or;

    new-instance v2, Lcom/google/android/gms/internal/tg;

    invoke-direct {v2, p2}, Lcom/google/android/gms/internal/tg;-><init>(Lcom/google/android/gms/ads/b/i$b;)V

    if-nez p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, p1, v2, v0}, Lcom/google/android/gms/internal/or;->a(Ljava/lang/String;Lcom/google/android/gms/internal/sq;Lcom/google/android/gms/internal/sn;)V

    :goto_1
    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/tf;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/tf;-><init>(Lcom/google/android/gms/ads/b/i$a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to add custom template ad listener"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final lx()Lcom/google/android/gms/ads/b;
    .locals 3

    :try_start_0
    new-instance v0, Lcom/google/android/gms/ads/b;

    iget-object v1, p0, Lcom/google/android/gms/ads/b$a;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/b$a;->ayY:Lcom/google/android/gms/internal/or;

    invoke-interface {v2}, Lcom/google/android/gms/internal/or;->tm()Lcom/google/android/gms/internal/oo;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/b;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/oo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to build AdLoader."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/af;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
