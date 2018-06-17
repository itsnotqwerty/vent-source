.class final Lcom/intercom/input/gallery/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/intercom/input/gallery/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intercom/input/gallery/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bmh:Lcom/intercom/input/gallery/f;


# direct methods
.method constructor <init>(Lcom/intercom/input/gallery/f;)V
    .locals 0

    iput-object p1, p0, Lcom/intercom/input/gallery/f$1;->bmh:Lcom/intercom/input/gallery/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError()V
    .locals 1

    iget-object v0, p0, Lcom/intercom/input/gallery/f$1;->bmh:Lcom/intercom/input/gallery/f;

    invoke-virtual {v0}, Lcom/intercom/input/gallery/f;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intercom/input/gallery/f$1;->bmh:Lcom/intercom/input/gallery/f;

    invoke-virtual {v0}, Lcom/intercom/input/gallery/f;->showErrorScreen()V

    :cond_0
    return-void
.end method

.method public final u(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/intercom/input/gallery/b;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/intercom/input/gallery/f$1;->bmh:Lcom/intercom/input/gallery/f;

    iget-object v0, v0, Lcom/intercom/input/gallery/f;->galleryImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/intercom/input/gallery/f$1;->bmh:Lcom/intercom/input/gallery/f;

    iget-object v0, v0, Lcom/intercom/input/gallery/f;->galleryImages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/intercom/input/gallery/f$1;->bmh:Lcom/intercom/input/gallery/f;

    iget-object v0, v0, Lcom/intercom/input/gallery/f;->endlessRecyclerScrollListener:Lcom/intercom/input/gallery/adapter/a;

    iget-object v1, p0, Lcom/intercom/input/gallery/f$1;->bmh:Lcom/intercom/input/gallery/f;

    iget-object v1, v1, Lcom/intercom/input/gallery/f;->dataSource:Lcom/intercom/input/gallery/d;

    invoke-interface {v1}, Lcom/intercom/input/gallery/d;->getCount()I

    move-result v1

    iput v1, v0, Lcom/intercom/input/gallery/adapter/a;->bmo:I

    iget-object v0, p0, Lcom/intercom/input/gallery/f$1;->bmh:Lcom/intercom/input/gallery/f;

    iget-object v0, v0, Lcom/intercom/input/gallery/f;->recyclerAdapter:Lcom/intercom/input/gallery/adapter/c;

    invoke-virtual {v0}, Lcom/intercom/input/gallery/adapter/c;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/intercom/input/gallery/f$1;->bmh:Lcom/intercom/input/gallery/f;

    invoke-virtual {v0}, Lcom/intercom/input/gallery/f;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intercom/input/gallery/f$1;->bmh:Lcom/intercom/input/gallery/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/intercom/input/gallery/f;->showEmptyOrPermissionScreen(I)V

    :cond_0
    return-void
.end method
