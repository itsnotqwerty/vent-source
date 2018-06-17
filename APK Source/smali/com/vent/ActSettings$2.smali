.class final Lcom/vent/ActSettings$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActSettings;->ep(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bYd:Lcom/vent/ActSettings;

.field final synthetic bYe:I


# direct methods
.method constructor <init>(Lcom/vent/ActSettings;I)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ActSettings$2;->bYd:Lcom/vent/ActSettings;

    iput p2, p0, Lcom/vent/ActSettings$2;->bYe:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/vent/ActSettings$2;->bYd:Lcom/vent/ActSettings;

    iget v1, p0, Lcom/vent/ActSettings$2;->bYe:I

    invoke-virtual {v0, v1}, Lcom/vent/ActSettings;->eq(I)V

    return-void
.end method
