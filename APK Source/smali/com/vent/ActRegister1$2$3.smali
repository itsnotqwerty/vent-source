.class final Lcom/vent/ActRegister1$2$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActRegister1$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bXv:Lcom/vent/ActRegister1$2;


# direct methods
.method constructor <init>(Lcom/vent/ActRegister1$2;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ActRegister1$2$3;->bXv:Lcom/vent/ActRegister1$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/vent/ActRegister1$2$3;->bXv:Lcom/vent/ActRegister1$2;

    iget-object v0, v0, Lcom/vent/ActRegister1$2;->bXu:Lcom/vent/ActRegister1;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/vent/ActRegister1;->bUV:Z

    return-void
.end method
