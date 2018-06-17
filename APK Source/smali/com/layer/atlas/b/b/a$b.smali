.class public final Lcom/layer/atlas/b/b/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/atlas/b/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/atlas/b/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "b"
.end annotation


# instance fields
.field boX:D

.field boY:D

.field boZ:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final wm()I
    .locals 1

    iget-object v0, p0, Lcom/layer/atlas/b/b/a$b;->boZ:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x10

    return v0

    :cond_0
    iget-object v0, p0, Lcom/layer/atlas/b/b/a$b;->boZ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    goto :goto_0
.end method
