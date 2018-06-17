.class final Lcom/vent/ActStoreEmotCat$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActStoreEmotCat$1;->aQ(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bYC:Lcom/vent/ActStoreEmotCat$1;


# direct methods
.method constructor <init>(Lcom/vent/ActStoreEmotCat$1;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/ActStoreEmotCat$1$1;->bYC:Lcom/vent/ActStoreEmotCat$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/vent/ActStoreEmotCat$1$1;->bYC:Lcom/vent/ActStoreEmotCat$1;

    iget-object v0, v0, Lcom/vent/ActStoreEmotCat$1;->bYB:Lcom/vent/ActStoreEmotCat;

    invoke-virtual {v0}, Lcom/vent/ActStoreEmotCat;->finish()V

    return-void
.end method
