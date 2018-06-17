.class public final Lio/intercom/a/a/a/c/d/f/b;
.super Ljava/lang/Object;

# interfaces
.implements Lio/intercom/a/a/a/c/d/f/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/intercom/a/a/a/c/d/f/d",
        "<",
        "Landroid/graphics/Bitmap;",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final cNn:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Lio/intercom/a/a/a/i/h;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    iput-object v0, p0, Lio/intercom/a/a/a/c/d/f/b;->cNn:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public final e(Lio/intercom/a/a/a/c/b/u;)Lio/intercom/a/a/a/c/b/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/intercom/a/a/a/c/b/u",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lio/intercom/a/a/a/c/b/u",
            "<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/intercom/a/a/a/c/d/f/b;->cNn:Landroid/content/res/Resources;

    invoke-static {v0, p1}, Lio/intercom/a/a/a/c/d/a/p;->a(Landroid/content/res/Resources;Lio/intercom/a/a/a/c/b/u;)Lio/intercom/a/a/a/c/b/u;

    move-result-object v0

    return-object v0
.end method
