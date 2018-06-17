.class final Lcom/intercom/input/gallery/f$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intercom/input/gallery/f;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    iput-object p1, p0, Lcom/intercom/input/gallery/f$3;->bmh:Lcom/intercom/input/gallery/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/intercom/input/gallery/f$3;->bmh:Lcom/intercom/input/gallery/f;

    iget-object v0, v0, Lcom/intercom/input/gallery/f;->dataSource:Lcom/intercom/input/gallery/d;

    invoke-interface {v0}, Lcom/intercom/input/gallery/d;->getPermissionStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/intercom/input/gallery/f$3;->bmh:Lcom/intercom/input/gallery/f;

    iget-object v0, v0, Lcom/intercom/input/gallery/f;->dataSource:Lcom/intercom/input/gallery/d;

    invoke-interface {v0}, Lcom/intercom/input/gallery/d;->requestPermission()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/intercom/input/gallery/f$3;->bmh:Lcom/intercom/input/gallery/f;

    invoke-static {v0}, Lcom/intercom/input/gallery/f;->access$000(Lcom/intercom/input/gallery/f;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
