.class public final Lcom/layer/atlas/AtlasMessageComposer$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layer/atlas/AtlasMessageComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bnl:Lcom/layer/atlas/AtlasMessageComposer;


# direct methods
.method public constructor <init>(Lcom/layer/atlas/AtlasMessageComposer;)V
    .locals 0

    iput-object p1, p0, Lcom/layer/atlas/AtlasMessageComposer$3;->bnl:Lcom/layer/atlas/AtlasMessageComposer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    packed-switch p2, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/layer/atlas/AtlasMessageComposer$3;->bnl:Lcom/layer/atlas/AtlasMessageComposer;

    invoke-virtual {v0}, Lcom/layer/atlas/AtlasMessageComposer;->wf()V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
