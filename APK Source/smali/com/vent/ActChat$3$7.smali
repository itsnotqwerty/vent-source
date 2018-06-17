.class final Lcom/vent/ActChat$3$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/layer/atlas/a/a$a;


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

    iput-object p1, p0, Lcom/vent/ActChat$3$7;->bUn:Lcom/vent/ActChat$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final wl()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/vent/ActChat$3$7;->bUn:Lcom/vent/ActChat$3;

    iget-object v0, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    iget-object v0, v0, Lcom/vent/ActChat;->bUb:Lcom/vent/a/e;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lcom/vent/ActChat$3$7;->bUn:Lcom/vent/ActChat$3;

    iget-object v2, v2, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    sget-object v3, Lcom/vent/bb;->ciN:Ljava/util/HashMap;

    invoke-static {v2, v1, v0, v3}, Lcom/vent/ActProfile;->a(Landroid/app/Activity;Landroid/support/v4/app/i;Lcom/vent/a/x;Ljava/util/HashMap;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/vent/ActChat$3$7;->bUn:Lcom/vent/ActChat$3;

    iget-object v0, v0, Lcom/vent/ActChat$3;->bUm:Lcom/vent/ActChat;

    iget-object v0, v0, Lcom/vent/ActChat;->bUb:Lcom/vent/a/e;

    invoke-virtual {v0}, Lcom/vent/a/e;->EQ()Lcom/vent/a/x;

    move-result-object v0

    goto :goto_0
.end method
