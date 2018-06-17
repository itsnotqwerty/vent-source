.class final Lio/intercom/a/a/a/c/d/a/u$a;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/b/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/intercom/a/a/a/c/d/a/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/c/b/u",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final avo:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/intercom/a/a/a/c/d/a/u$a;->avo:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final Iu()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/a/u$a;->avo:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getSize()I
    .locals 1

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/a/u$a;->avo:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lio/intercom/a/a/a/i/i;->l(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public final recycle()V
    .locals 0

    return-void
.end method
