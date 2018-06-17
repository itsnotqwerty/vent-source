.class final Lcom/vent/ActEmotions$9$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActEmotions$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bVy:Lcom/vent/ActEmotions$9;


# direct methods
.method constructor <init>(Lcom/vent/ActEmotions$9;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ActEmotions$9$1;->bVy:Lcom/vent/ActEmotions$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/vent/ActEmotions$9$1;->bVy:Lcom/vent/ActEmotions$9;

    iget-object v0, v0, Lcom/vent/ActEmotions$9;->bVw:Lcom/vent/ActEmotions;

    invoke-static {v0}, Lcom/vent/ax;->bl(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/vent/bb;->ea(Ljava/lang/String;)V

    invoke-static {}, Lcom/vent/bb;->EA()V

    iget-object v0, p0, Lcom/vent/ActEmotions$9$1;->bVy:Lcom/vent/ActEmotions$9;

    iget-object v0, v0, Lcom/vent/ActEmotions$9;->bVw:Lcom/vent/ActEmotions;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vent/ActEmotions;->aT(Z)V

    return-void
.end method
