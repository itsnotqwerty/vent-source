.class public final Lcom/c/a/w$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/c/a/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field bNi:I

.field bOE:Ljava/lang/String;

.field bOF:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/c/a/ae;",
            ">;"
        }
    .end annotation
.end field

.field public bOG:I

.field public bOH:I

.field public bOI:Z

.field public bOJ:Z

.field public bOK:Z

.field bOL:F

.field bOM:F

.field bON:F

.field bOO:Z

.field bOP:Landroid/graphics/Bitmap$Config;

.field resourceId:I

.field uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/net/Uri;Landroid/graphics/Bitmap$Config;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/c/a/w$a;->uri:Landroid/net/Uri;

    const/4 v0, 0x0

    iput v0, p0, Lcom/c/a/w$a;->resourceId:I

    iput-object p2, p0, Lcom/c/a/w$a;->bOP:Landroid/graphics/Bitmap$Config;

    return-void
.end method


# virtual methods
.method public final Az()Z
    .locals 1

    iget-object v0, p0, Lcom/c/a/w$a;->uri:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/c/a/w$a;->resourceId:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final aD(II)Lcom/c/a/w$a;
    .locals 2

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Width must be positive number or 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Height must be positive number or 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p2, :cond_2

    if-nez p1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least one dimension has to be positive number."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput p1, p0, Lcom/c/a/w$a;->bOG:I

    iput p2, p0, Lcom/c/a/w$a;->bOH:I

    return-object p0
.end method
