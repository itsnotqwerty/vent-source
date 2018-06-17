.class final Lcom/intercom/input/gallery/adapter/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intercom/input/gallery/adapter/d;-><init>(Landroid/view/View;Lcom/intercom/input/gallery/adapter/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bmq:Lcom/intercom/input/gallery/adapter/e;

.field final synthetic bmr:Lcom/intercom/input/gallery/adapter/d;


# direct methods
.method constructor <init>(Lcom/intercom/input/gallery/adapter/d;Lcom/intercom/input/gallery/adapter/e;)V
    .locals 0

    iput-object p1, p0, Lcom/intercom/input/gallery/adapter/d$1;->bmr:Lcom/intercom/input/gallery/adapter/d;

    iput-object p2, p0, Lcom/intercom/input/gallery/adapter/d$1;->bmq:Lcom/intercom/input/gallery/adapter/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/intercom/input/gallery/adapter/d$1;->bmq:Lcom/intercom/input/gallery/adapter/e;

    iget-object v1, p0, Lcom/intercom/input/gallery/adapter/d$1;->bmr:Lcom/intercom/input/gallery/adapter/d;

    invoke-interface {v0, v1}, Lcom/intercom/input/gallery/adapter/e;->onImageClicked(Landroid/support/v7/widget/RecyclerView$x;)V

    return-void
.end method
