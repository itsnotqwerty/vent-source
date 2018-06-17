.class final Lcom/vent/ActEditProfile$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActEditProfile$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bUB:Landroid/support/v7/app/c;

.field final synthetic bUZ:Lcom/vent/ActEditProfile$3;


# direct methods
.method constructor <init>(Lcom/vent/ActEditProfile$3;Landroid/support/v7/app/c;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ActEditProfile$3$1;->bUZ:Lcom/vent/ActEditProfile$3;

    iput-object p2, p0, Lcom/vent/ActEditProfile$3$1;->bUB:Landroid/support/v7/app/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/vent/ActEditProfile$3$1;->bUB:Landroid/support/v7/app/c;

    invoke-static {v0}, Lcom/vent/d/c;->a(Landroid/support/v7/app/l;)V

    iget-object v0, p0, Lcom/vent/ActEditProfile$3$1;->bUZ:Lcom/vent/ActEditProfile$3;

    iget-object v0, v0, Lcom/vent/ActEditProfile$3;->bUW:Lcom/vent/ActEditProfile;

    invoke-static {v0}, Lcom/vent/bb;->r(Landroid/app/Activity;)Z

    return-void
.end method
