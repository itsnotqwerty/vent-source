.class public Lcom/intercom/input/gallery/c;
.super Lcom/intercom/composer/b/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/intercom/composer/b/b",
        "<",
        "Lcom/intercom/input/gallery/f;",
        ">;"
    }
.end annotation


# instance fields
.field private final bmg:Lcom/intercom/composer/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/intercom/composer/d",
            "<",
            "Lcom/intercom/input/gallery/f;",
            ">;"
        }
    .end annotation
.end field

.field private final galleryInputExpandedListener:Lcom/intercom/input/gallery/e;

.field private final galleryOutputListener:Lcom/intercom/input/gallery/i;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/intercom/composer/b/a;Lcom/intercom/input/gallery/i;Lcom/intercom/input/gallery/e;Lcom/intercom/composer/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/intercom/composer/b/a;",
            "Lcom/intercom/input/gallery/i;",
            "Lcom/intercom/input/gallery/e;",
            "Lcom/intercom/composer/d",
            "<",
            "Lcom/intercom/input/gallery/f;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/intercom/composer/b/b;-><init>(Ljava/lang/String;Lcom/intercom/composer/b/a;)V

    iput-object p3, p0, Lcom/intercom/input/gallery/c;->galleryOutputListener:Lcom/intercom/input/gallery/i;

    iput-object p4, p0, Lcom/intercom/input/gallery/c;->galleryInputExpandedListener:Lcom/intercom/input/gallery/e;

    iput-object p5, p0, Lcom/intercom/input/gallery/c;->bmg:Lcom/intercom/composer/d;

    return-void
.end method


# virtual methods
.method public synthetic createFragment()Lcom/intercom/composer/b/c;
    .locals 2

    iget-object v0, p0, Lcom/intercom/input/gallery/c;->bmg:Lcom/intercom/composer/d;

    invoke-interface {v0}, Lcom/intercom/composer/d;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intercom/input/gallery/f;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/intercom/input/gallery/f;->createArguments(Z)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/intercom/input/gallery/f;->setArguments(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/intercom/input/gallery/c;->galleryOutputListener:Lcom/intercom/input/gallery/i;

    invoke-virtual {v0, v1}, Lcom/intercom/input/gallery/f;->setGalleryListener(Lcom/intercom/input/gallery/i;)V

    iget-object v1, p0, Lcom/intercom/input/gallery/c;->galleryInputExpandedListener:Lcom/intercom/input/gallery/e;

    invoke-virtual {v0, v1}, Lcom/intercom/input/gallery/f;->setGalleryExpandedListener(Lcom/intercom/input/gallery/e;)V

    return-object v0
.end method
