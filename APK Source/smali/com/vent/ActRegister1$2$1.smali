.class final Lcom/vent/ActRegister1$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    iput-object p1, p0, Lcom/vent/ActRegister1$2$1;->bXv:Lcom/vent/ActRegister1$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/vent/ActRegister1$2$1;->bXv:Lcom/vent/ActRegister1$2;

    iget-object v0, v0, Lcom/vent/ActRegister1$2;->bXu:Lcom/vent/ActRegister1;

    iget-object v1, v0, Lcom/vent/ActRegister1;->bUG:Ljava/io/File;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/vent/ActRegister1;->bUG:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/vent/b;->a(Landroid/app/Activity;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/vent/ActRegister1;->Bp()V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/vent/ActRegister1;->bUV:Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vent/ActRegister1;->dU(Ljava/lang/String;)V

    goto :goto_0
.end method
