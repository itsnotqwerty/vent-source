.class final Lcom/layer/b/f/a/g$c;
.super Ljava/lang/Object;

# interfaces
.implements Lc/a/a/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/b/f/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/layer/b/f/a/g$c;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic xh()Lc/a/a/c/a;
    .locals 2

    new-instance v0, Lcom/layer/b/f/a/g$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/layer/b/f/a/g$b;-><init>(B)V

    return-object v0
.end method
