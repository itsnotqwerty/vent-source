.class final Lcom/b/a/a/b/j$2;
.super Ljava/util/zip/Inflater;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/a/a/b/j;-><init>(Lb/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bKT:Lcom/b/a/a/b/j;


# direct methods
.method constructor <init>(Lcom/b/a/a/b/j;)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/a/b/j$2;->bKT:Lcom/b/a/a/b/j;

    invoke-direct {p0}, Ljava/util/zip/Inflater;-><init>()V

    return-void
.end method


# virtual methods
.method public final inflate([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/b/a/a/b/j$2;->needsDictionary()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/b/a/a/b/m;->bIG:[B

    invoke-virtual {p0, v0}, Lcom/b/a/a/b/j$2;->setDictionary([B)V

    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v0

    :cond_0
    return v0
.end method
