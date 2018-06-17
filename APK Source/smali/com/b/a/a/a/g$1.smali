.class final Lcom/b/a/a/a/g$1;
.super Lcom/b/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/a/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/b/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final zo()Lcom/b/a/w;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zp()Lb/e;
    .locals 1

    new-instance v0, Lb/c;

    invoke-direct {v0}, Lb/c;-><init>()V

    return-object v0
.end method
