.class final Lcom/vent/FrgProfile$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vent/FrgProfile;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cfr:Lcom/vent/FrgProfile;


# direct methods
.method constructor <init>(Lcom/vent/FrgProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/vent/FrgProfile$2;->cfr:Lcom/vent/FrgProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDateSet(Landroid/widget/DatePicker;III)V
    .locals 7

    const/16 v5, 0x3b

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v4, 0x17

    move v1, p2

    move v2, p3

    move v3, p4

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    const/16 v1, 0xe

    const/16 v2, 0x3e7

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    iget-object v1, p0, Lcom/vent/FrgProfile$2;->cfr:Lcom/vent/FrgProfile;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/vent/FrgProfile;->S(J)V

    return-void
.end method
