.class final Lcom/vent/ActChat$2;
.super Lcom/vent/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/ActChat;->a(Lcom/vent/a;Lcom/vent/a/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    const v5, 0x7f0f00e1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/vent/v;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method


# virtual methods
.method protected final aQ(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/vent/v;->aQ(Z)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/vent/ActChat;->bTT:Z

    invoke-static {p0, p1}, Lcom/vent/ActChat;->a(Lcom/vent/v;Z)V

    return-void
.end method
