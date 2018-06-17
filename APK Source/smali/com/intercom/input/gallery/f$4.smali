.class final Lcom/intercom/input/gallery/f$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intercom/input/gallery/f;->showPermissionPermanentlyDeniedDialog()V
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

    iput-object p1, p0, Lcom/intercom/input/gallery/f$4;->bmh:Lcom/intercom/input/gallery/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const-string v0, "package"

    iget-object v1, p0, Lcom/intercom/input/gallery/f$4;->bmh:Lcom/intercom/input/gallery/f;

    invoke-virtual {v1}, Lcom/intercom/input/gallery/f;->getActivity()Landroid/support/v4/app/j;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/j;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/intercom/input/gallery/f$4;->bmh:Lcom/intercom/input/gallery/f;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/intercom/input/gallery/f;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
