.class final Lcom/vent/ActMain$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vent/ActMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bXa:Lcom/vent/ActMain;


# direct methods
.method constructor <init>(Lcom/vent/ActMain;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ActMain$4;->bXa:Lcom/vent/ActMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/vent/ActMain$4;->bXa:Lcom/vent/ActMain;

    const-string v1, "https://play.google.com/store/apps/details?id=com.google.android.gms"

    invoke-static {v0, v1}, Lcom/vent/d/c;->x(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
