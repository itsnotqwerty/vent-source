.class final Lio/intercom/a/a/a/c/b/a/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/b/a/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/a/a/c/b/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field bOP:Landroid/graphics/Bitmap$Config;

.field private final cLi:Lio/intercom/a/a/a/c/b/a/c$b;

.field height:I

.field width:I


# direct methods
.method public constructor <init>(Lio/intercom/a/a/a/c/b/a/c$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/a/a/a/c/b/a/c$a;->cLi:Lio/intercom/a/a/a/c/b/a/c$b;

    return-void
.end method


# virtual methods
.method public final Iy()V
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/a/c$a;->cLi:Lio/intercom/a/a/a/c/b/a/c$b;

    invoke-virtual {v0, p0}, Lio/intercom/a/a/a/c/b/a/c$b;->a(Lio/intercom/a/a/a/c/b/a/m;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lio/intercom/a/a/a/c/b/a/c$a;

    if-eqz v1, :cond_0

    check-cast p1, Lio/intercom/a/a/a/c/b/a/c$a;

    iget v1, p0, Lio/intercom/a/a/a/c/b/a/c$a;->width:I

    iget v2, p1, Lio/intercom/a/a/a/c/b/a/c$a;->width:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lio/intercom/a/a/a/c/b/a/c$a;->height:I

    iget v2, p1, Lio/intercom/a/a/a/c/b/a/c$a;->height:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lio/intercom/a/a/a/c/b/a/c$a;->bOP:Landroid/graphics/Bitmap$Config;

    iget-object v2, p1, Lio/intercom/a/a/a/c/b/a/c$a;->bOP:Landroid/graphics/Bitmap$Config;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lio/intercom/a/a/a/c/b/a/c$a;->width:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lio/intercom/a/a/a/c/b/a/c$a;->height:I

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/a/c$a;->bOP:Landroid/graphics/Bitmap$Config;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/intercom/a/a/a/c/b/a/c$a;->bOP:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0}, Landroid/graphics/Bitmap$Config;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lio/intercom/a/a/a/c/b/a/c$a;->width:I

    iget v1, p0, Lio/intercom/a/a/a/c/b/a/c$a;->height:I

    iget-object v2, p0, Lio/intercom/a/a/a/c/b/a/c$a;->bOP:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Lio/intercom/a/a/a/c/b/a/c;->c(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
