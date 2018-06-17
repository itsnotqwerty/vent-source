.class public final Lcom/c/a/j$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/c/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final avo:Landroid/graphics/Bitmap;

.field final avu:Z

.field final bNE:Ljava/io/InputStream;

.field final contentLength:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;ZJ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stream may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/c/a/j$a;->bNE:Ljava/io/InputStream;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/a/j$a;->avo:Landroid/graphics/Bitmap;

    iput-boolean p2, p0, Lcom/c/a/j$a;->avu:Z

    iput-wide p3, p0, Lcom/c/a/j$a;->contentLength:J

    return-void
.end method
