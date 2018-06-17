.class public final Lokhttp3/j;
.super Ljava/lang/Object;


# static fields
.field private static final DAY_OF_MONTH_PATTERN:Ljava/util/regex/Pattern;

.field private static final MONTH_PATTERN:Ljava/util/regex/Pattern;

.field private static final TIME_PATTERN:Ljava/util/regex/Pattern;

.field private static final YEAR_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final domain:Ljava/lang/String;

.field private final expiresAt:J

.field private final hostOnly:Z

.field private final httpOnly:Z

.field public final name:Ljava/lang/String;

.field private final path:Ljava/lang/String;

.field private final persistent:Z

.field private final secure:Z

.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(\\d{2,4})[^\\d]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/j;->YEAR_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/j;->MONTH_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "(\\d{1,2})[^\\d]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/j;->DAY_OF_MONTH_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/j;->TIME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/j;->name:Ljava/lang/String;

    iput-object p2, p0, Lokhttp3/j;->value:Ljava/lang/String;

    iput-wide p3, p0, Lokhttp3/j;->expiresAt:J

    iput-object p5, p0, Lokhttp3/j;->domain:Ljava/lang/String;

    iput-object p6, p0, Lokhttp3/j;->path:Ljava/lang/String;

    iput-boolean p7, p0, Lokhttp3/j;->secure:Z

    iput-boolean p8, p0, Lokhttp3/j;->httpOnly:Z

    iput-boolean p9, p0, Lokhttp3/j;->hostOnly:Z

    iput-boolean p10, p0, Lokhttp3/j;->persistent:Z

    return-void
.end method

.method public static a(Lokhttp3/q;Lokhttp3/p;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/q;",
            "Lokhttp3/p;",
            ")",
            "Ljava/util/List",
            "<",
            "Lokhttp3/j;",
            ">;"
        }
    .end annotation

    const-string v0, "Set-Cookie"

    invoke-virtual {p1, v0}, Lokhttp3/p;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_0

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7, p0, v0}, Lokhttp3/j;->a(JLokhttp3/q;Ljava/lang/String;)Lokhttp3/j;

    move-result-object v5

    if-eqz v5, :cond_3

    if-nez v1, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_3
    return-object v0

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_3

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method private static a(JLokhttp3/q;Ljava/lang/String;)Lokhttp3/j;
    .locals 30
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v24

    const/4 v4, 0x0

    const/16 v5, 0x3b

    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-static {v0, v4, v1, v5}, Lokhttp3/internal/c;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v10

    const/4 v4, 0x0

    const/16 v5, 0x3d

    move-object/from16 v0, p3

    invoke-static {v0, v4, v10, v5}, Lokhttp3/internal/c;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v4

    if-ne v4, v10, :cond_0

    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_0
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v5, v4}, Lokhttp3/internal/c;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v6}, Lokhttp3/internal/c;->indexOfControlOrNonAscii(Ljava/lang/String;)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_2

    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p3

    invoke-static {v0, v4, v10}, Lokhttp3/internal/c;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lokhttp3/internal/c;->indexOfControlOrNonAscii(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    const/4 v5, 0x0

    goto :goto_0

    :cond_3
    const-wide v8, 0xe677d21fdbffL

    const-wide/16 v4, -0x1

    const/16 v16, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    add-int/lit8 v10, v10, 0x1

    move/from16 v17, v10

    :goto_1
    move/from16 v0, v17

    move/from16 v1, v24

    if-ge v0, v1, :cond_1d

    const/16 v10, 0x3b

    move-object/from16 v0, p3

    move/from16 v1, v17

    move/from16 v2, v24

    invoke-static {v0, v1, v2, v10}, Lokhttp3/internal/c;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v25

    const/16 v10, 0x3d

    move-object/from16 v0, p3

    move/from16 v1, v17

    move/from16 v2, v25

    invoke-static {v0, v1, v2, v10}, Lokhttp3/internal/c;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v10

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-static {v0, v1, v10}, Lokhttp3/internal/c;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v17

    move/from16 v0, v25

    if-ge v10, v0, :cond_5

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-static {v0, v10, v1}, Lokhttp3/internal/c;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v10

    :goto_2
    const-string v18, "expires"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_16

    :try_start_0
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v26

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v26

    move/from16 v2, v18

    invoke-static {v10, v0, v1, v2}, Lokhttp3/j;->dateCharacterOffset(Ljava/lang/String;IIZ)I

    move-result v23

    const/16 v22, -0x1

    const/16 v21, -0x1

    const/16 v20, -0x1

    const/16 v19, -0x1

    const/16 v18, -0x1

    const/16 v17, -0x1

    sget-object v27, Lokhttp3/j;->TIME_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v27

    :goto_3
    move/from16 v0, v23

    move/from16 v1, v26

    if-ge v0, v1, :cond_9

    add-int/lit8 v28, v23, 0x1

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v26

    move/from16 v2, v29

    invoke-static {v10, v0, v1, v2}, Lokhttp3/j;->dateCharacterOffset(Ljava/lang/String;IIZ)I

    move-result v28

    move-object/from16 v0, v27

    move/from16 v1, v23

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    sget-object v23, Lokhttp3/j;->TIME_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/regex/Matcher;->matches()Z

    move-result v23

    if-eqz v23, :cond_6

    const/16 v20, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    const/16 v20, 0x2

    move-object/from16 v0, v27

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    const/16 v20, 0x3

    move-object/from16 v0, v27

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    :cond_4
    :goto_4
    add-int/lit8 v23, v28, 0x1

    const/16 v28, 0x0

    move/from16 v0, v23

    move/from16 v1, v26

    move/from16 v2, v28

    invoke-static {v10, v0, v1, v2}, Lokhttp3/j;->dateCharacterOffset(Ljava/lang/String;IIZ)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v23

    goto :goto_3

    :cond_5
    const-string v10, ""

    goto/16 :goto_2

    :cond_6
    const/16 v23, -0x1

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    :try_start_1
    sget-object v23, Lokhttp3/j;->DAY_OF_MONTH_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/regex/Matcher;->matches()Z

    move-result v23

    if-eqz v23, :cond_7

    const/16 v19, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    goto :goto_4

    :cond_7
    const/16 v23, -0x1

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    sget-object v23, Lokhttp3/j;->MONTH_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/regex/Matcher;->matches()Z

    move-result v23

    if-eqz v23, :cond_8

    const/16 v18, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v18

    sget-object v23, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v18

    sget-object v23, Lokhttp3/j;->MONTH_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual/range {v23 .. v23}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    div-int/lit8 v18, v18, 0x4

    goto :goto_4

    :cond_8
    const/16 v23, -0x1

    move/from16 v0, v17

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    sget-object v23, Lokhttp3/j;->YEAR_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/regex/Matcher;->matches()Z

    move-result v23

    if-eqz v23, :cond_4

    const/16 v17, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    goto/16 :goto_4

    :cond_9
    const/16 v10, 0x46

    move/from16 v0, v17

    if-lt v0, v10, :cond_2b

    const/16 v10, 0x63

    move/from16 v0, v17

    if-gt v0, v10, :cond_2b

    move/from16 v0, v17

    add-int/lit16 v10, v0, 0x76c

    :goto_5
    if-ltz v10, :cond_a

    const/16 v17, 0x45

    move/from16 v0, v17

    if-gt v10, v0, :cond_a

    add-int/lit16 v10, v10, 0x7d0

    :cond_a
    const/16 v17, 0x641

    move/from16 v0, v17

    if-ge v10, v0, :cond_c

    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-direct {v10}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v10

    :catch_0
    move-exception v10

    move-object v10, v11

    :cond_b
    :goto_6
    add-int/lit8 v17, v25, 0x1

    move-object v11, v10

    goto/16 :goto_1

    :cond_c
    const/16 v17, -0x1

    move/from16 v0, v18

    move/from16 v1, v17

    if-ne v0, v1, :cond_d

    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-direct {v10}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v10

    :cond_d
    if-lez v19, :cond_e

    const/16 v17, 0x1f

    move/from16 v0, v19

    move/from16 v1, v17

    if-le v0, v1, :cond_f

    :cond_e
    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-direct {v10}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v10

    :cond_f
    if-ltz v22, :cond_10

    const/16 v17, 0x17

    move/from16 v0, v22

    move/from16 v1, v17

    if-le v0, v1, :cond_11

    :cond_10
    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-direct {v10}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v10

    :cond_11
    if-ltz v21, :cond_12

    const/16 v17, 0x3b

    move/from16 v0, v21

    move/from16 v1, v17

    if-le v0, v1, :cond_13

    :cond_12
    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-direct {v10}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v10

    :cond_13
    if-ltz v20, :cond_14

    const/16 v17, 0x3b

    move/from16 v0, v20

    move/from16 v1, v17

    if-le v0, v1, :cond_15

    :cond_14
    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-direct {v10}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v10

    :cond_15
    new-instance v17, Ljava/util/GregorianCalendar;

    sget-object v23, Lokhttp3/internal/c;->UTC:Ljava/util/TimeZone;

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    const/16 v23, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setLenient(Z)V

    const/16 v23, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1, v10}, Ljava/util/Calendar;->set(II)V

    const/4 v10, 0x2

    add-int/lit8 v18, v18, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Ljava/util/Calendar;->set(II)V

    const/4 v10, 0x5

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v10, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v10, 0xb

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v10, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v10, 0xc

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v10, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v10, 0xd

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v10, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v10, 0xe

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual/range {v17 .. v17}, Ljava/util/Calendar;->getTimeInMillis()J
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v8

    const/4 v15, 0x1

    move-object v10, v11

    goto/16 :goto_6

    :cond_16
    const-string v18, "max-age"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_17

    :try_start_2
    invoke-static {v10}, Lokhttp3/j;->parseMaxAge(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v4

    const/4 v15, 0x1

    move-object v10, v11

    goto/16 :goto_6

    :catch_1
    move-exception v10

    move-object v10, v11

    goto/16 :goto_6

    :cond_17
    const-string v18, "domain"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1b

    :try_start_3
    const-string v17, "."

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_18

    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-direct {v10}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v10

    :catch_2
    move-exception v10

    move-object v10, v11

    goto/16 :goto_6

    :cond_18
    const-string v17, "."

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_19

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    :cond_19
    invoke-static {v10}, Lokhttp3/internal/c;->canonicalizeHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_1a

    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-direct {v10}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v10
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1a
    const/4 v14, 0x0

    move-object v10, v11

    move-object/from16 v16, v17

    goto/16 :goto_6

    :cond_1b
    const-string v18, "path"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_b

    const-string v10, "secure"

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1c

    const/4 v12, 0x1

    move-object v10, v11

    goto/16 :goto_6

    :cond_1c
    const-string v10, "httponly"

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2a

    const/4 v13, 0x1

    move-object v10, v11

    goto/16 :goto_6

    :cond_1d
    const-wide/high16 v18, -0x8000000000000000L

    cmp-long v10, v4, v18

    if-nez v10, :cond_1f

    const-wide/high16 v8, -0x8000000000000000L

    :cond_1e
    :goto_7
    move-object/from16 v0, p2

    iget-object v4, v0, Lokhttp3/q;->host:Ljava/lang/String;

    if-nez v16, :cond_22

    move-object v10, v4

    :goto_8
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v4, v5, :cond_25

    invoke-static {}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->Nh()Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;

    move-result-object v4

    invoke-virtual {v4, v10}, Lokhttp3/internal/publicsuffix/PublicSuffixDatabase;->getEffectiveTldPlusOne(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_25

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_1f
    const-wide/16 v18, -0x1

    cmp-long v10, v4, v18

    if-eqz v10, :cond_1e

    const-wide v8, 0x20c49ba5e353f7L

    cmp-long v8, v4, v8

    if-gtz v8, :cond_21

    const-wide/16 v8, 0x3e8

    mul-long/2addr v4, v8

    :goto_9
    add-long v8, p0, v4

    cmp-long v4, v8, p0

    if-ltz v4, :cond_20

    const-wide v4, 0xe677d21fdbffL

    cmp-long v4, v8, v4

    if-lez v4, :cond_1e

    :cond_20
    const-wide v8, 0xe677d21fdbffL

    goto :goto_7

    :cond_21
    const-wide v4, 0x7fffffffffffffffL

    goto :goto_9

    :cond_22
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    const/4 v5, 0x1

    :goto_a
    if-nez v5, :cond_29

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_23
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v5, v10

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v10, 0x2e

    if-ne v5, v10, :cond_24

    invoke-static {v4}, Lokhttp3/internal/c;->verifyAsIpAddress(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_24

    const/4 v5, 0x1

    goto :goto_a

    :cond_24
    const/4 v5, 0x0

    goto :goto_a

    :cond_25
    if-eqz v11, :cond_26

    const-string v4, "/"

    invoke-virtual {v11, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_27

    :cond_26
    invoke-virtual/range {p2 .. p2}, Lokhttp3/q;->encodedPath()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    if-eqz v5, :cond_28

    const/4 v11, 0x0

    invoke-virtual {v4, v11, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :goto_b
    move-object v11, v4

    :cond_27
    new-instance v5, Lokhttp3/j;

    invoke-direct/range {v5 .. v15}, Lokhttp3/j;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V

    goto/16 :goto_0

    :cond_28
    const-string v4, "/"

    goto :goto_b

    :cond_29
    move-object/from16 v10, v16

    goto/16 :goto_8

    :cond_2a
    move-object v10, v11

    goto/16 :goto_6

    :cond_2b
    move/from16 v10, v17

    goto/16 :goto_5
.end method

.method private static dateCharacterOffset(Ljava/lang/String;IIZ)I
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_5

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x20

    if-ge v1, v4, :cond_0

    const/16 v4, 0x9

    if-ne v1, v4, :cond_4

    :cond_0
    const/16 v4, 0x7f

    if-ge v1, v4, :cond_4

    const/16 v4, 0x30

    if-lt v1, v4, :cond_1

    const/16 v4, 0x39

    if-le v1, v4, :cond_4

    :cond_1
    const/16 v4, 0x61

    if-lt v1, v4, :cond_2

    const/16 v4, 0x7a

    if-le v1, v4, :cond_4

    :cond_2
    const/16 v4, 0x41

    if-lt v1, v4, :cond_3

    const/16 v4, 0x5a

    if-le v1, v4, :cond_4

    :cond_3
    const/16 v4, 0x3a

    if-ne v1, v4, :cond_6

    :cond_4
    move v4, v2

    :goto_1
    if-nez p3, :cond_7

    move v1, v2

    :goto_2
    if-ne v4, v1, :cond_8

    move p2, v0

    :cond_5
    return p2

    :cond_6
    move v4, v3

    goto :goto_1

    :cond_7
    move v1, v3

    goto :goto_2

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static parseMaxAge(Ljava/lang/String;)J
    .locals 6

    const-wide/high16 v0, -0x8000000000000000L

    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    move-wide v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "-?\\d+"

    invoke-virtual {p0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_2
    throw v2
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    instance-of v1, p1, Lokhttp3/j;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lokhttp3/j;

    iget-object v1, p1, Lokhttp3/j;->name:Ljava/lang/String;

    iget-object v2, p0, Lokhttp3/j;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lokhttp3/j;->value:Ljava/lang/String;

    iget-object v2, p0, Lokhttp3/j;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lokhttp3/j;->domain:Ljava/lang/String;

    iget-object v2, p0, Lokhttp3/j;->domain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lokhttp3/j;->path:Ljava/lang/String;

    iget-object v2, p0, Lokhttp3/j;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, p1, Lokhttp3/j;->expiresAt:J

    iget-wide v4, p0, Lokhttp3/j;->expiresAt:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-boolean v1, p1, Lokhttp3/j;->secure:Z

    iget-boolean v2, p0, Lokhttp3/j;->secure:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p1, Lokhttp3/j;->httpOnly:Z

    iget-boolean v2, p0, Lokhttp3/j;->httpOnly:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p1, Lokhttp3/j;->persistent:Z

    iget-boolean v2, p0, Lokhttp3/j;->persistent:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p1, Lokhttp3/j;->hostOnly:Z

    iget-boolean v2, p0, Lokhttp3/j;->hostOnly:Z

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lokhttp3/j;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lokhttp3/j;->value:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lokhttp3/j;->domain:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lokhttp3/j;->path:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lokhttp3/j;->expiresAt:J

    iget-wide v6, p0, Lokhttp3/j;->expiresAt:J

    const/16 v3, 0x20

    ushr-long/2addr v6, v3

    xor-long/2addr v4, v6

    long-to-int v3, v4

    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lokhttp3/j;->secure:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lokhttp3/j;->httpOnly:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lokhttp3/j;->persistent:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lokhttp3/j;->hostOnly:Z

    if-eqz v3, :cond_3

    :goto_3
    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lokhttp3/j;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/j;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lokhttp3/j;->persistent:Z

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lokhttp3/j;->expiresAt:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v1, v2, v4

    if-nez v1, :cond_4

    const-string v1, "; max-age=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    iget-boolean v1, p0, Lokhttp3/j;->hostOnly:Z

    if-nez v1, :cond_1

    const-string v1, "; domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/j;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "; path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/j;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lokhttp3/j;->secure:Z

    if-eqz v1, :cond_2

    const-string v1, "; secure"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-boolean v1, p0, Lokhttp3/j;->httpOnly:Z

    if-eqz v1, :cond_3

    const-string v1, "; httponly"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    const-string v1, "; expires="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lokhttp3/j;->expiresAt:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v2}, Lokhttp3/internal/c/d;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
