.class final Lcom/vent/s$g$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/s$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bZA:Landroid/support/v4/app/i;

.field final synthetic ccC:Lcom/vent/s$g;


# direct methods
.method constructor <init>(Lcom/vent/s$g;Landroid/support/v4/app/i;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/s$g$1;->ccC:Lcom/vent/s$g;

    iput-object p2, p0, Lcom/vent/s$g$1;->bZA:Landroid/support/v4/app/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/vent/s$g$1;->bZA:Landroid/support/v4/app/i;

    invoke-static {v0}, Lcom/vent/ActEditProfile;->o(Landroid/support/v4/app/i;)V

    return-void
.end method
