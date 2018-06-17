.class public final Lcom/google/android/gms/common/stats/WakeLockEvent;
.super Lcom/google/android/gms/common/stats/StatsEvent;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/common/stats/WakeLockEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final Ab:J

.field private aCi:I

.field private final aIM:J

.field private aIN:I

.field private final aIO:Ljava/lang/String;

.field private final aIP:Ljava/lang/String;

.field private final aIQ:Ljava/lang/String;

.field private final aIR:I

.field private final aIS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final aIT:Ljava/lang/String;

.field private final aIU:J

.field private aIV:I

.field private final aIW:Ljava/lang/String;

.field private final aIX:F

.field private aIY:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/stats/d;

    invoke-direct {v0}, Lcom/google/android/gms/common/stats/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJILjava/lang/String;ILjava/util/List;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;FJLjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJI",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "JI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "FJ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/stats/StatsEvent;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->aCi:I

    iput-wide p2, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->aIM:J

    iput p4, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->aIN:I

    iput-object p5, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->aIO:Ljava/lang/String;

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->aIP:Ljava/lang/String;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->aIQ:Ljava/lang/String;

    iput p6, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->aIR:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->aIY:J

    iput-object p7, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->aIS:Ljava/util/List;

    iput-object p8, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->aIT:Ljava/lang/String;

    iput-wide p9, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->aIU:J

    move/from16 v0, p11

    iput v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->aIV:I

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->aIW:Ljava/lang/String;

    move/from16 v0, p14

    iput v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->aIX:F

    move-wide/from16 v0, p15

    iput-wide v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->Ab:J

    return-void
.end method

.method public constructor <init>(JILjava/lang/String;ILjava/util/List;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;FJ)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "JI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "FJ)V"
        }
    .end annotation

    const/4 v2, 0x2

    const/16 v18, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v3, p1

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-wide/from16 v10, p8

    move/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move/from16 v15, p13

    move-wide/from16 v16, p14

    invoke-direct/range {v1 .. v18}, Lcom/google/android/gms/common/stats/WakeLockEvent;-><init>(IJILjava/lang/String;ILjava/util/List;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;FJLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getEventType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->aIN:I

    return v0
.end method

.method public final getTimeMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->aIM:J

    return-wide v0
.end method

.method public final ox()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->aIY:J

    return-wide v0
.end method

.method public final oy()Ljava/lang/String;
    .locals 10

    iget-object v4, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->aIO:Ljava/lang/String;

    iget v5, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->aIR:I

    iget-object v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->aIS:Ljava/util/List;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    iget v6, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->aIV:I

    iget-object v1, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->aIP:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, ""

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->aIW:Ljava/lang/String;

    if-nez v2, :cond_2

    const-string v2, ""

    :goto_2
    iget v7, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->aIX:F

    iget-object v3, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->aIQ:Ljava/lang/String;

    if-nez v3, :cond_3

    const-string v3, ""

    :goto_3
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x2d

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "\t"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "\t"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ","

    iget-object v1, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->aIS:Ljava/util/List;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->aIP:Ljava/lang/String;

    goto/16 :goto_1

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->aIW:Ljava/lang/String;

    goto/16 :goto_2

    :cond_3
    iget-object v3, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->aIQ:Ljava/lang/String;

    goto/16 :goto_3
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/du;->l(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->aCi:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->d(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/StatsEvent;->getTimeMillis()J

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;IJ)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->aIO:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;ILjava/lang/String;)V

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->aIR:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->d(Landroid/os/Parcel;II)V

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->aIS:Ljava/util/List;

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;ILjava/util/List;)V

    const/16 v1, 0x8

    iget-wide v2, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->aIU:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;IJ)V

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->aIP:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;ILjava/lang/String;)V

    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/StatsEvent;->getEventType()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->d(Landroid/os/Parcel;II)V

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->aIT:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;ILjava/lang/String;)V

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->aIW:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;ILjava/lang/String;)V

    const/16 v1, 0xe

    iget v2, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->aIV:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->d(Landroid/os/Parcel;II)V

    const/16 v1, 0xf

    iget v2, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->aIX:F

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;IF)V

    const/16 v1, 0x10

    iget-wide v2, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->Ab:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;IJ)V

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->aIQ:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/du;->a(Landroid/os/Parcel;ILjava/lang/String;)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/du;->m(Landroid/os/Parcel;I)V

    return-void
.end method
