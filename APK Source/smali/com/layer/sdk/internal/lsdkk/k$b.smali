.class final Lcom/layer/sdk/internal/lsdkk/k$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/b/e/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/lsdkk/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Lcom/layer/sdk/internal/lsdkk/k$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/layer/b/d/k;

    invoke-static {v0}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Class;)Lcom/layer/sdk/internal/lsdkk/k$a;

    move-result-object v0

    sput-object v0, Lcom/layer/sdk/internal/lsdkk/k$b;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/layer/sdk/internal/lsdkk/k$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/layer/sdk/internal/lsdkk/k$b;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    invoke-static {v0, p1}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final a(I)Z
    .locals 1

    invoke-static {p1}, Lcom/layer/sdk/internal/lsdkk/k;->a(I)Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/layer/sdk/internal/lsdkk/k$b;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    invoke-static {v0, p1}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/layer/sdk/internal/lsdkk/k$b;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    invoke-static {v0, p1}, Lcom/layer/sdk/internal/lsdkk/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final f(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/layer/sdk/internal/lsdkk/k$b;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    invoke-static {v0, p1, p2}, Lcom/layer/sdk/internal/lsdkk/k;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final g(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/layer/sdk/internal/lsdkk/k$b;->a:Lcom/layer/sdk/internal/lsdkk/k$a;

    invoke-static {v0, p1, p2}, Lcom/layer/sdk/internal/lsdkk/k;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
