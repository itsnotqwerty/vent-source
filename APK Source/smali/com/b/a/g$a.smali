.class public final Lcom/b/a/g$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field a:Z

.field b:Z

.field bpD:I

.field c:I

.field d:I

.field f:Z

.field g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/b/a/g$a;->c:I

    iput v0, p0, Lcom/b/a/g$a;->d:I

    iput v0, p0, Lcom/b/a/g$a;->bpD:I

    return-void
.end method


# virtual methods
.method public final zq()Lcom/b/a/g;
    .locals 2

    new-instance v0, Lcom/b/a/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/b/a/g;-><init>(Lcom/b/a/g$a;B)V

    return-object v0
.end method
