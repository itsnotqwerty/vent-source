.class final Lcom/vent/bb$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/bb$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cjq:Lcom/vent/bb$3;


# direct methods
.method constructor <init>(Lcom/vent/bb$3;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/bb$3$1;->cjq:Lcom/vent/bb$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/vent/bb;->cje:Z

    iget-object v0, p0, Lcom/vent/bb$3$1;->cjq:Lcom/vent/bb$3;

    iget-object v0, v0, Lcom/vent/bb$3;->bXe:Landroid/app/Activity;

    invoke-static {v0}, Lcom/vent/bb;->r(Landroid/app/Activity;)Z

    return-void
.end method
