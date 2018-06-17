.class public Lcom/layer/sdk/internal/lsdkk/m$a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/lsdkk/m$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/layer/sdk/internal/lsdkk/m$i;


# instance fields
.field final bta:Lcom/layer/sdk/internal/lsdkk/m$i;

.field final btb:Lcom/layer/sdk/internal/lsdkk/m$i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/layer/sdk/internal/lsdkk/m$a$a$1;

    invoke-direct {v0}, Lcom/layer/sdk/internal/lsdkk/m$a$a$1;-><init>()V

    sput-object v0, Lcom/layer/sdk/internal/lsdkk/m$a$a;->a:Lcom/layer/sdk/internal/lsdkk/m$i;

    return-void
.end method

.method public constructor <init>(Lcom/layer/sdk/internal/lsdkk/m$i;Lcom/layer/sdk/internal/lsdkk/m$i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkk/m$a$a;->bta:Lcom/layer/sdk/internal/lsdkk/m$i;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdkk/m$a$a;->btb:Lcom/layer/sdk/internal/lsdkk/m$i;

    return-void
.end method


# virtual methods
.method public a()Lcom/layer/sdk/internal/lsdkk/m$i;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/m$a$a;->btb:Lcom/layer/sdk/internal/lsdkk/m$i;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/layer/sdk/internal/lsdkk/m$a$a;

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkk/m$a$a;->bta:Lcom/layer/sdk/internal/lsdkk/m$i;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkk/m$a$a;->bta:Lcom/layer/sdk/internal/lsdkk/m$i;

    iget-object v3, p1, Lcom/layer/sdk/internal/lsdkk/m$a$a;->bta:Lcom/layer/sdk/internal/lsdkk/m$i;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lcom/layer/sdk/internal/lsdkk/m$a$a;->bta:Lcom/layer/sdk/internal/lsdkk/m$i;

    if-nez v2, :cond_4

    :cond_6
    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkk/m$a$a;->btb:Lcom/layer/sdk/internal/lsdkk/m$i;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkk/m$a$a;->btb:Lcom/layer/sdk/internal/lsdkk/m$i;

    iget-object v3, p1, Lcom/layer/sdk/internal/lsdkk/m$a$a;->btb:Lcom/layer/sdk/internal/lsdkk/m$i;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p1, Lcom/layer/sdk/internal/lsdkk/m$a$a;->btb:Lcom/layer/sdk/internal/lsdkk/m$i;

    if-nez v2, :cond_7

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/m$a$a;->bta:Lcom/layer/sdk/internal/lsdkk/m$i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/m$a$a;->bta:Lcom/layer/sdk/internal/lsdkk/m$i;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/layer/sdk/internal/lsdkk/m$a$a;->btb:Lcom/layer/sdk/internal/lsdkk/m$i;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/layer/sdk/internal/lsdkk/m$a$a;->btb:Lcom/layer/sdk/internal/lsdkk/m$i;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
