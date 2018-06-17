.class final Lcom/vent/ActChat$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActChat$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bUn:Lcom/vent/ActChat$3;


# direct methods
.method constructor <init>(Lcom/vent/ActChat$3;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ActChat$3$1;->bUn:Lcom/vent/ActChat$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/vent/ActChat$3$1;->bUn:Lcom/vent/ActChat$3;

    iget-object v0, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vent/ActChat;->aR(Z)Z

    return-void
.end method
