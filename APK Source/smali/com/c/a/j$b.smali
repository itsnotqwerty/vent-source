.class public final Lcom/c/a/j$b;
.super Ljava/io/IOException;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/c/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field final bNF:Z

.field final responseCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/c/a/q;->ec(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/c/a/j$b;->bNF:Z

    iput p3, p0, Lcom/c/a/j$b;->responseCode:I

    return-void
.end method
