.class public Lcom/layer/sdk/internal/lsdkk/m$h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/sdk/internal/lsdkk/m$e;
.implements Ljava/lang/CharSequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/sdk/internal/lsdkk/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field private final a:Ljava/lang/CharSequence;

.field private b:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/layer/sdk/internal/lsdkk/m$h;-><init>(Ljava/lang/CharSequence;Ljava/lang/Long;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/Long;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MetadataString cannot have a null value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/layer/sdk/internal/lsdkk/m$h;->a:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/layer/sdk/internal/lsdkk/m$h;->b:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/m$h;->b:Ljava/lang/Long;

    return-object v0
.end method

.method public charAt(I)C
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/m$h;->a:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/layer/sdk/internal/lsdkk/m$h;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/layer/sdk/internal/lsdkk/m$h;

    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkk/m$h;->length()I

    move-result v0

    invoke-virtual {p1}, Lcom/layer/sdk/internal/lsdkk/m$h;->length()I

    move-result v3

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/layer/sdk/internal/lsdkk/m$h;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-virtual {p0, v0}, Lcom/layer/sdk/internal/lsdkk/m$h;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v0}, Lcom/layer/sdk/internal/lsdkk/m$h;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/m$h;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/m$h;->a:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/m$h;->a:Ljava/lang/CharSequence;

    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/layer/sdk/internal/lsdkk/m$h;->a:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
