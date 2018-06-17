.class final Lcom/google/android/gms/internal/gl;
.super Ljava/lang/Object;


# instance fields
.field final aQx:Ljava/lang/String;

.field final aRI:J

.field final aRJ:J

.field final aRK:J

.field final aRL:J

.field final aRM:Ljava/lang/Long;

.field final aRN:Ljava/lang/Long;

.field final aRO:Ljava/lang/Boolean;

.field final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ae;->bf(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/ae;->bf(Ljava/lang/String;)Ljava/lang/String;

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/common/internal/ae;->au(Z)V

    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-ltz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Lcom/google/android/gms/common/internal/ae;->au(Z)V

    const-wide/16 v2, 0x0

    cmp-long v2, p9, v2

    if-ltz v2, :cond_2

    const/4 v2, 0x1

    :goto_2
    invoke-static {v2}, Lcom/google/android/gms/common/internal/ae;->au(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/gl;->aQx:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/gl;->name:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/gl;->aRI:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/gl;->aRJ:J

    iput-wide p7, p0, Lcom/google/android/gms/internal/gl;->aRK:J

    iput-wide p9, p0, Lcom/google/android/gms/internal/gl;->aRL:J

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/google/android/gms/internal/gl;->aRM:Ljava/lang/Long;

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/google/android/gms/internal/gl;->aRN:Ljava/lang/Long;

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/gms/internal/gl;->aRO:Ljava/lang/Boolean;

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method


# virtual methods
.method final B(J)Lcom/google/android/gms/internal/gl;
    .locals 15

    new-instance v1, Lcom/google/android/gms/internal/gl;

    iget-object v2, p0, Lcom/google/android/gms/internal/gl;->aQx:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/gl;->name:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/internal/gl;->aRI:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/gl;->aRJ:J

    iget-wide v10, p0, Lcom/google/android/gms/internal/gl;->aRL:J

    iget-object v12, p0, Lcom/google/android/gms/internal/gl;->aRM:Ljava/lang/Long;

    iget-object v13, p0, Lcom/google/android/gms/internal/gl;->aRN:Ljava/lang/Long;

    iget-object v14, p0, Lcom/google/android/gms/internal/gl;->aRO:Ljava/lang/Boolean;

    move-wide/from16 v8, p1

    invoke-direct/range {v1 .. v14}, Lcom/google/android/gms/internal/gl;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    return-object v1
.end method

.method final C(J)Lcom/google/android/gms/internal/gl;
    .locals 15

    new-instance v1, Lcom/google/android/gms/internal/gl;

    iget-object v2, p0, Lcom/google/android/gms/internal/gl;->aQx:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/gl;->name:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/internal/gl;->aRI:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/gl;->aRJ:J

    iget-wide v8, p0, Lcom/google/android/gms/internal/gl;->aRK:J

    iget-object v12, p0, Lcom/google/android/gms/internal/gl;->aRM:Ljava/lang/Long;

    iget-object v13, p0, Lcom/google/android/gms/internal/gl;->aRN:Ljava/lang/Long;

    iget-object v14, p0, Lcom/google/android/gms/internal/gl;->aRO:Ljava/lang/Boolean;

    move-wide/from16 v10, p1

    invoke-direct/range {v1 .. v14}, Lcom/google/android/gms/internal/gl;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    return-object v1
.end method

.method final a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/internal/gl;
    .locals 15

    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p3, 0x0

    move-object/from16 v14, p3

    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/gl;

    iget-object v2, p0, Lcom/google/android/gms/internal/gl;->aQx:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/gl;->name:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/internal/gl;->aRI:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/gl;->aRJ:J

    iget-wide v8, p0, Lcom/google/android/gms/internal/gl;->aRK:J

    iget-wide v10, p0, Lcom/google/android/gms/internal/gl;->aRL:J

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-direct/range {v1 .. v14}, Lcom/google/android/gms/internal/gl;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    return-object v1

    :cond_0
    move-object/from16 v14, p3

    goto :goto_0
.end method

.method final rA()Lcom/google/android/gms/internal/gl;
    .locals 15

    const-wide/16 v8, 0x1

    new-instance v1, Lcom/google/android/gms/internal/gl;

    iget-object v2, p0, Lcom/google/android/gms/internal/gl;->aQx:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/gl;->name:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/internal/gl;->aRI:J

    add-long/2addr v4, v8

    iget-wide v6, p0, Lcom/google/android/gms/internal/gl;->aRJ:J

    add-long/2addr v6, v8

    iget-wide v8, p0, Lcom/google/android/gms/internal/gl;->aRK:J

    iget-wide v10, p0, Lcom/google/android/gms/internal/gl;->aRL:J

    iget-object v12, p0, Lcom/google/android/gms/internal/gl;->aRM:Ljava/lang/Long;

    iget-object v13, p0, Lcom/google/android/gms/internal/gl;->aRN:Ljava/lang/Long;

    iget-object v14, p0, Lcom/google/android/gms/internal/gl;->aRO:Ljava/lang/Boolean;

    invoke-direct/range {v1 .. v14}, Lcom/google/android/gms/internal/gl;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    return-object v1
.end method
