.class public final Lio/intercom/a/a/a/c/d/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/c/k",
        "<TDataType;",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final cNn:Landroid/content/res/Resources;

.field private final cNy:Lio/intercom/a/a/a/c/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/intercom/a/a/a/c/k",
            "<TDataType;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lio/intercom/a/a/a/c/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lio/intercom/a/a/a/c/k",
            "<TDataType;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    iput-object v0, p0, Lio/intercom/a/a/a/c/d/a/a;->cNn:Landroid/content/res/Resources;

    const-string v0, "Argument must not be null"

    invoke-static {p2, v0}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/intercom/a/a/a/c/k;

    iput-object v0, p0, Lio/intercom/a/a/a/c/d/a/a;->cNy:Lio/intercom/a/a/a/c/k;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;IILio/intercom/a/a/a/c/j;)Lio/intercom/a/a/a/c/b/u;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDataType;II",
            "Lio/intercom/a/a/a/c/j;",
            ")",
            "Lio/intercom/a/a/a/c/b/u",
            "<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/a/a;->cNy:Lio/intercom/a/a/a/c/k;

    invoke-interface {v0, p1, p2, p3, p4}, Lio/intercom/a/a/a/c/k;->a(Ljava/lang/Object;IILio/intercom/a/a/a/c/j;)Lio/intercom/a/a/a/c/b/u;

    move-result-object v0

    iget-object v1, p0, Lio/intercom/a/a/a/c/d/a/a;->cNn:Landroid/content/res/Resources;

    invoke-static {v1, v0}, Lio/intercom/a/a/a/c/d/a/p;->a(Landroid/content/res/Resources;Lio/intercom/a/a/a/c/b/u;)Lio/intercom/a/a/a/c/b/u;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Lio/intercom/a/a/a/c/j;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDataType;",
            "Lio/intercom/a/a/a/c/j;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/a/a;->cNy:Lio/intercom/a/a/a/c/k;

    invoke-interface {v0, p1, p2}, Lio/intercom/a/a/a/c/k;->a(Ljava/lang/Object;Lio/intercom/a/a/a/c/j;)Z

    move-result v0

    return v0
.end method
