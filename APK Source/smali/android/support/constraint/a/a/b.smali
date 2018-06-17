.class final Landroid/support/constraint/a/a/b;
.super Ljava/lang/Object;


# direct methods
.method static a(Landroid/support/constraint/a/a/e;Landroid/support/constraint/a/e;I)V
    .locals 28

    if-nez p2, :cond_3

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/constraint/a/a/e;->ht:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/e;->hw:[Landroid/support/constraint/a/a/d;

    move-object v13, v4

    move v14, v5

    move v15, v6

    :goto_0
    const/4 v4, 0x0

    move/from16 v26, v4

    :goto_1
    move/from16 v0, v26

    if-ge v0, v14, :cond_4a

    aget-object v24, v13, v26

    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/support/constraint/a/a/e;->l(I)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, v24

    invoke-static {v0, v1, v2, v15, v3}, Landroid/support/constraint/a/a/h;->a(Landroid/support/constraint/a/a/e;Landroid/support/constraint/a/e;IILandroid/support/constraint/a/a/d;)Z

    move-result v4

    if-nez v4, :cond_2a

    :cond_0
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/e;->gy:[I

    aget v4, v4, p2

    sget v5, Landroid/support/constraint/a/a/d$a;->hi:I

    if-ne v4, v5, :cond_4

    const/4 v4, 0x1

    move/from16 v25, v4

    :goto_2
    if-nez p2, :cond_52

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/support/constraint/a/a/e;->hm:Z

    if-eqz v4, :cond_52

    move-object/from16 v4, v24

    :goto_3
    if-nez v19, :cond_7

    iget-object v5, v4, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    add-int/lit8 v6, v15, 0x1

    aget-object v5, v5, v6

    iget-object v5, v5, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-eqz v5, :cond_5

    iget-object v5, v5, Landroid/support/constraint/a/a/c;->fv:Landroid/support/constraint/a/a/d;

    iget-object v6, v5, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    aget-object v6, v6, v15

    iget-object v6, v6, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-eqz v6, :cond_1

    iget-object v6, v5, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    aget-object v6, v6, v15

    iget-object v6, v6, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    iget-object v6, v6, Landroid/support/constraint/a/a/c;->fv:Landroid/support/constraint/a/a/d;

    if-eq v6, v4, :cond_2

    :cond_1
    const/4 v5, 0x0

    :cond_2
    :goto_4
    if-eqz v5, :cond_6

    move-object v4, v5

    goto :goto_3

    :cond_3
    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/constraint/a/a/e;->hu:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/e;->hv:[Landroid/support/constraint/a/a/d;

    move-object v13, v4

    move v14, v5

    move v15, v6

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    move/from16 v25, v4

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    goto :goto_4

    :cond_6
    const/16 v19, 0x1

    goto :goto_3

    :cond_7
    const/16 v19, 0x0

    move-object/from16 v23, v4

    move-object/from16 v16, v24

    :goto_5
    if-nez p2, :cond_12

    move-object/from16 v0, v23

    iget v4, v0, Landroid/support/constraint/a/a/d;->gX:I

    if-nez v4, :cond_f

    const/4 v4, 0x1

    :goto_6
    move-object/from16 v0, v23

    iget v5, v0, Landroid/support/constraint/a/a/d;->gX:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_10

    const/4 v5, 0x1

    :goto_7
    move-object/from16 v0, v23

    iget v6, v0, Landroid/support/constraint/a/a/d;->gX:I

    const/4 v9, 0x2

    if-ne v6, v9, :cond_11

    const/4 v6, 0x1

    :goto_8
    move v9, v6

    move/from16 v21, v5

    move/from16 v22, v4

    move-object v10, v8

    :goto_9
    if-nez v19, :cond_1a

    move-object/from16 v0, v16

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->hd:[Landroid/support/constraint/a/a/d;

    const/4 v5, 0x0

    aput-object v5, v4, p2

    move-object/from16 v0, v16

    iget v4, v0, Landroid/support/constraint/a/a/d;->gS:I

    const/16 v5, 0x8

    if-eq v4, v5, :cond_51

    if-eqz v18, :cond_8

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->hd:[Landroid/support/constraint/a/a/d;

    aput-object v16, v4, p2

    :cond_8
    if-nez v17, :cond_50

    move-object/from16 v4, v16

    :goto_a
    move-object/from16 v5, v16

    :goto_b
    move-object/from16 v0, v16

    iget-object v6, v0, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    aget-object v17, v6, v15

    const/4 v6, 0x1

    invoke-virtual/range {v17 .. v17}, Landroid/support/constraint/a/a/c;->ay()I

    move-result v8

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_9

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/constraint/a/a/d;->gS:I

    move/from16 v18, v0

    const/16 v20, 0x8

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_9

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/support/constraint/a/a/c;->ay()I

    move-result v18

    add-int v8, v8, v18

    :cond_9
    if-eqz v9, :cond_a

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_a

    move-object/from16 v0, v16

    if-eq v0, v4, :cond_a

    const/4 v6, 0x6

    :cond_a
    move-object/from16 v0, v16

    if-ne v0, v4, :cond_16

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    move-object/from16 v20, v0

    const/16 v27, 0x5

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v8, v3}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    :goto_c
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2, v8, v6}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    move-object/from16 v0, v16

    iget-object v6, v0, Landroid/support/constraint/a/a/d;->hc:[Landroid/support/constraint/a/a/d;

    const/4 v8, 0x0

    aput-object v8, v6, p2

    move-object/from16 v0, v16

    iget v6, v0, Landroid/support/constraint/a/a/d;->gS:I

    const/16 v8, 0x8

    if-eq v6, v8, :cond_4f

    move-object/from16 v0, v16

    iget-object v6, v0, Landroid/support/constraint/a/a/d;->gy:[I

    aget v6, v6, p2

    sget v8, Landroid/support/constraint/a/a/d$a;->hj:I

    if-ne v6, v8, :cond_4f

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, v16

    iget-object v6, v0, Landroid/support/constraint/a/a/d;->hb:[F

    aget v6, v6, p2

    add-float/2addr v11, v6

    if-nez v7, :cond_17

    move-object/from16 v7, v16

    :goto_d
    if-eqz v25, :cond_b

    move-object/from16 v0, v16

    iget-object v6, v0, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    add-int/lit8 v8, v15, 0x1

    aget-object v6, v6, v8

    iget-object v6, v6, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    move-object/from16 v0, v16

    iget-object v8, v0, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    aget-object v8, v8, v15

    iget-object v8, v8, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    const/4 v10, 0x0

    const/16 v17, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v6, v8, v10, v1}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    :cond_b
    move-object/from16 v6, v16

    move v8, v11

    :goto_e
    if-eqz v25, :cond_c

    move-object/from16 v0, v16

    iget-object v10, v0, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    aget-object v10, v10, v15

    iget-object v10, v10, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/constraint/a/a/e;->gw:[Landroid/support/constraint/a/a/c;

    aget-object v11, v11, v15

    iget-object v11, v11, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    const/16 v17, 0x0

    const/16 v18, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v10, v11, v1, v2}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    :cond_c
    move-object/from16 v0, v16

    iget-object v10, v0, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    add-int/lit8 v11, v15, 0x1

    aget-object v10, v10, v11

    iget-object v10, v10, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-eqz v10, :cond_18

    iget-object v0, v10, Landroid/support/constraint/a/a/c;->fv:Landroid/support/constraint/a/a/d;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v10, v0, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    aget-object v10, v10, v15

    iget-object v10, v10, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-eqz v10, :cond_d

    move-object/from16 v0, v20

    iget-object v10, v0, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    aget-object v10, v10, v15

    iget-object v10, v10, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    iget-object v10, v10, Landroid/support/constraint/a/a/c;->fv:Landroid/support/constraint/a/a/d;

    move-object/from16 v0, v16

    if-eq v10, v0, :cond_e

    :cond_d
    const/16 v20, 0x0

    :cond_e
    :goto_f
    if-eqz v20, :cond_19

    move-object v10, v6

    move v11, v8

    move-object/from16 v18, v5

    move-object/from16 v17, v4

    move-object/from16 v16, v20

    goto/16 :goto_9

    :cond_f
    const/4 v4, 0x0

    goto/16 :goto_6

    :cond_10
    const/4 v5, 0x0

    goto/16 :goto_7

    :cond_11
    const/4 v6, 0x0

    goto/16 :goto_8

    :cond_12
    move-object/from16 v0, v23

    iget v4, v0, Landroid/support/constraint/a/a/d;->gY:I

    if-nez v4, :cond_13

    const/4 v4, 0x1

    :goto_10
    move-object/from16 v0, v23

    iget v5, v0, Landroid/support/constraint/a/a/d;->gY:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_14

    const/4 v5, 0x1

    :goto_11
    move-object/from16 v0, v23

    iget v6, v0, Landroid/support/constraint/a/a/d;->gY:I

    const/4 v9, 0x2

    if-ne v6, v9, :cond_15

    const/4 v6, 0x1

    :goto_12
    move v9, v6

    move/from16 v21, v5

    move/from16 v22, v4

    move-object v10, v8

    goto/16 :goto_9

    :cond_13
    const/4 v4, 0x0

    goto :goto_10

    :cond_14
    const/4 v5, 0x0

    goto :goto_11

    :cond_15
    const/4 v6, 0x0

    goto :goto_12

    :cond_16
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    move-object/from16 v20, v0

    const/16 v27, 0x6

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v8, v3}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    goto/16 :goto_c

    :cond_17
    iget-object v6, v10, Landroid/support/constraint/a/a/d;->hc:[Landroid/support/constraint/a/a/d;

    aput-object v16, v6, p2

    goto/16 :goto_d

    :cond_18
    const/16 v20, 0x0

    goto :goto_f

    :cond_19
    const/16 v19, 0x1

    move-object v10, v6

    move v11, v8

    move-object/from16 v18, v5

    move-object/from16 v17, v4

    goto/16 :goto_9

    :cond_1a
    if-eqz v18, :cond_1b

    move-object/from16 v0, v16

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    add-int/lit8 v5, v15, 0x1

    aget-object v4, v4, v5

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-eqz v4, :cond_1b

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    add-int/lit8 v5, v15, 0x1

    aget-object v4, v4, v5

    iget-object v5, v4, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    move-object/from16 v0, v16

    iget-object v6, v0, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    add-int/lit8 v8, v15, 0x1

    aget-object v6, v6, v8

    iget-object v6, v6, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    iget-object v6, v6, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    invoke-virtual {v4}, Landroid/support/constraint/a/a/c;->ay()I

    move-result v4

    neg-int v4, v4

    const/4 v8, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v4, v8}, Landroid/support/constraint/a/e;->b(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    :cond_1b
    if-eqz v25, :cond_1c

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/constraint/a/a/e;->gw:[Landroid/support/constraint/a/a/c;

    add-int/lit8 v5, v15, 0x1

    aget-object v4, v4, v5

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    move-object/from16 v0, v16

    iget-object v5, v0, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    add-int/lit8 v6, v15, 0x1

    aget-object v5, v5, v6

    iget-object v5, v5, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    move-object/from16 v0, v16

    iget-object v6, v0, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    add-int/lit8 v8, v15, 0x1

    aget-object v6, v6, v8

    invoke-virtual {v6}, Landroid/support/constraint/a/a/c;->ay()I

    move-result v6

    const/4 v8, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v8}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    :cond_1c
    if-lez v12, :cond_24

    move-object v4, v7

    :goto_13
    if-eqz v4, :cond_24

    iget-object v5, v4, Landroid/support/constraint/a/a/d;->hc:[Landroid/support/constraint/a/a/d;

    aget-object v6, v5, p2

    if-eqz v6, :cond_20

    iget-object v5, v4, Landroid/support/constraint/a/a/d;->hb:[F

    aget v7, v5, p2

    iget-object v5, v6, Landroid/support/constraint/a/a/d;->hb:[F

    aget v8, v5, p2

    iget-object v5, v4, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    aget-object v5, v5, v15

    iget-object v10, v5, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    iget-object v5, v4, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    add-int/lit8 v12, v15, 0x1

    aget-object v5, v5, v12

    iget-object v12, v5, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    iget-object v5, v6, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    aget-object v5, v5, v15

    iget-object v0, v5, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    move-object/from16 v19, v0

    iget-object v5, v6, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    add-int/lit8 v20, v15, 0x1

    aget-object v5, v5, v20

    iget-object v0, v5, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    move-object/from16 v20, v0

    if-nez p2, :cond_21

    iget v5, v4, Landroid/support/constraint/a/a/d;->ga:I

    iget v4, v6, Landroid/support/constraint/a/a/d;->ga:I

    :goto_14
    if-eqz v5, :cond_1d

    const/16 v25, 0x3

    move/from16 v0, v25

    if-ne v5, v0, :cond_22

    :cond_1d
    if-eqz v4, :cond_1e

    const/4 v5, 0x3

    if-ne v4, v5, :cond_22

    :cond_1e
    const/4 v4, 0x1

    :goto_15
    if-eqz v4, :cond_20

    invoke-virtual/range {p1 .. p1}, Landroid/support/constraint/a/e;->ap()Landroid/support/constraint/a/b;

    move-result-object v4

    const/4 v5, 0x0

    cmpl-float v5, v11, v5

    if-eqz v5, :cond_1f

    cmpl-float v5, v7, v8

    if-nez v5, :cond_23

    :cond_1f
    const/4 v5, 0x0

    iput v5, v4, Landroid/support/constraint/a/b;->dU:F

    iget-object v5, v4, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v5, v10, v7}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;F)V

    iget-object v5, v4, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    const/high16 v7, -0x40800000    # -1.0f

    invoke-virtual {v5, v12, v7}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;F)V

    iget-object v5, v4, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v0, v20

    invoke-virtual {v5, v0, v7}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;F)V

    iget-object v5, v4, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    const/high16 v7, -0x40800000    # -1.0f

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v7}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;F)V

    :goto_16
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/support/constraint/a/e;->b(Landroid/support/constraint/a/b;)V

    :cond_20
    move-object v4, v6

    goto :goto_13

    :cond_21
    iget v5, v4, Landroid/support/constraint/a/a/d;->gb:I

    iget v4, v6, Landroid/support/constraint/a/a/d;->gb:I

    goto :goto_14

    :cond_22
    const/4 v4, 0x0

    goto :goto_15

    :cond_23
    div-float v5, v7, v11

    div-float v7, v8, v11

    div-float/2addr v5, v7

    const/4 v7, 0x0

    iput v7, v4, Landroid/support/constraint/a/b;->dU:F

    iget-object v7, v4, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v10, v8}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;F)V

    iget-object v7, v4, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    const/high16 v8, -0x40800000    # -1.0f

    invoke-virtual {v7, v12, v8}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;F)V

    iget-object v7, v4, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    move-object/from16 v0, v20

    invoke-virtual {v7, v0, v5}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;F)V

    iget-object v7, v4, Landroid/support/constraint/a/b;->dW:Landroid/support/constraint/a/a;

    neg-float v5, v5

    move-object/from16 v0, v19

    invoke-virtual {v7, v0, v5}, Landroid/support/constraint/a/a;->a(Landroid/support/constraint/a/h;F)V

    goto :goto_16

    :cond_24
    if-eqz v17, :cond_2e

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_25

    if-eqz v9, :cond_2e

    :cond_25
    move-object/from16 v0, v24

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    aget-object v5, v4, v15

    move-object/from16 v0, v16

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    add-int/lit8 v6, v15, 0x1

    aget-object v4, v4, v6

    move-object/from16 v0, v24

    iget-object v6, v0, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    aget-object v6, v6, v15

    iget-object v6, v6, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-eqz v6, :cond_2b

    move-object/from16 v0, v24

    iget-object v6, v0, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    aget-object v6, v6, v15

    iget-object v6, v6, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    iget-object v6, v6, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    :goto_17
    move-object/from16 v0, v16

    iget-object v7, v0, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    add-int/lit8 v8, v15, 0x1

    aget-object v7, v7, v8

    iget-object v7, v7, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-eqz v7, :cond_2c

    move-object/from16 v0, v16

    iget-object v7, v0, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    add-int/lit8 v8, v15, 0x1

    aget-object v7, v7, v8

    iget-object v7, v7, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    iget-object v9, v7, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    :goto_18
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_26

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    aget-object v5, v4, v15

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    add-int/lit8 v7, v15, 0x1

    aget-object v4, v4, v7

    :cond_26
    if-eqz v6, :cond_28

    if-eqz v9, :cond_28

    if-nez p2, :cond_2d

    move-object/from16 v0, v23

    iget v8, v0, Landroid/support/constraint/a/a/d;->gO:F

    :goto_19
    invoke-virtual {v5}, Landroid/support/constraint/a/a/c;->ay()I

    move-result v7

    if-nez v18, :cond_27

    move-object/from16 v18, v16

    :cond_27
    move-object/from16 v0, v18

    iget-object v10, v0, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    add-int/lit8 v11, v15, 0x1

    aget-object v10, v10, v11

    invoke-virtual {v10}, Landroid/support/constraint/a/a/c;->ay()I

    move-result v11

    iget-object v5, v5, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    iget-object v10, v4, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    const/4 v12, 0x5

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v12}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;IFLandroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    :cond_28
    move-object/from16 v4, v18

    :goto_1a
    if-nez v22, :cond_29

    if-eqz v21, :cond_2a

    :cond_29
    if-eqz v17, :cond_2a

    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    aget-object v7, v5, v15

    iget-object v5, v4, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    add-int/lit8 v6, v15, 0x1

    aget-object v5, v5, v6

    iget-object v6, v7, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-eqz v6, :cond_48

    iget-object v6, v7, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    iget-object v6, v6, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    :goto_1b
    iget-object v8, v5, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-eqz v8, :cond_49

    iget-object v8, v5, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    iget-object v9, v8, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    :goto_1c
    move-object/from16 v0, v17

    if-ne v0, v4, :cond_4c

    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    aget-object v7, v5, v15

    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    add-int/lit8 v8, v15, 0x1

    aget-object v5, v5, v8

    move-object v10, v5

    move-object v8, v7

    :goto_1d
    if-eqz v6, :cond_2a

    if-eqz v9, :cond_2a

    invoke-virtual {v8}, Landroid/support/constraint/a/a/c;->ay()I

    move-result v7

    if-nez v4, :cond_4b

    :goto_1e
    move-object/from16 v0, v16

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    add-int/lit8 v5, v15, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/support/constraint/a/a/c;->ay()I

    move-result v11

    iget-object v5, v8, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    const/high16 v8, 0x3f000000    # 0.5f

    iget-object v10, v10, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    const/4 v12, 0x5

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v12}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;IFLandroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    :cond_2a
    add-int/lit8 v4, v26, 0x1

    move/from16 v26, v4

    goto/16 :goto_1

    :cond_2b
    const/4 v6, 0x0

    goto/16 :goto_17

    :cond_2c
    const/4 v9, 0x0

    goto/16 :goto_18

    :cond_2d
    move-object/from16 v0, v23

    iget v8, v0, Landroid/support/constraint/a/a/d;->gP:F

    goto/16 :goto_19

    :cond_2e
    if-eqz v22, :cond_3d

    if-eqz v17, :cond_3d

    move-object/from16 v12, v17

    move-object/from16 v19, v17

    :goto_1f
    if-eqz v19, :cond_3c

    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->hd:[Landroid/support/constraint/a/a/d;

    aget-object v20, v4, p2

    if-nez v20, :cond_2f

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_35

    :cond_2f
    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    aget-object v7, v4, v15

    iget-object v5, v7, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    iget-object v4, v7, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-eqz v4, :cond_36

    iget-object v4, v7, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    iget-object v6, v4, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    :goto_20
    move-object/from16 v0, v19

    if-eq v12, v0, :cond_37

    iget-object v4, v12, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    add-int/lit8 v6, v15, 0x1

    aget-object v4, v4, v6

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    :goto_21
    move-object v6, v4

    :cond_30
    const/4 v4, 0x0

    invoke-virtual {v7}, Landroid/support/constraint/a/a/c;->ay()I

    move-result v7

    move-object/from16 v0, v19

    iget-object v8, v0, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    add-int/lit8 v9, v15, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroid/support/constraint/a/a/c;->ay()I

    move-result v11

    if-eqz v20, :cond_3a

    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    aget-object v8, v4, v15

    iget-object v9, v8, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    iget-object v4, v8, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-eqz v4, :cond_39

    iget-object v4, v8, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    :goto_22
    move-object v10, v4

    :goto_23
    if-eqz v8, :cond_31

    invoke-virtual {v8}, Landroid/support/constraint/a/a/c;->ay()I

    move-result v4

    add-int/2addr v11, v4

    :cond_31
    if-eqz v12, :cond_32

    iget-object v4, v12, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    add-int/lit8 v8, v15, 0x1

    aget-object v4, v4, v8

    invoke-virtual {v4}, Landroid/support/constraint/a/a/c;->ay()I

    move-result v4

    add-int/2addr v7, v4

    :cond_32
    if-eqz v5, :cond_35

    if-eqz v6, :cond_35

    if-eqz v9, :cond_35

    if-eqz v10, :cond_35

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_33

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    aget-object v4, v4, v15

    invoke-virtual {v4}, Landroid/support/constraint/a/a/c;->ay()I

    move-result v7

    :cond_33
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_34

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    add-int/lit8 v8, v15, 0x1

    aget-object v4, v4, v8

    invoke-virtual {v4}, Landroid/support/constraint/a/a/c;->ay()I

    move-result v11

    :cond_34
    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v12, 0x4

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v12}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;IFLandroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    :cond_35
    move-object/from16 v12, v19

    move-object/from16 v19, v20

    goto/16 :goto_1f

    :cond_36
    const/4 v6, 0x0

    goto :goto_20

    :cond_37
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_30

    move-object/from16 v0, v19

    if-ne v12, v0, :cond_30

    move-object/from16 v0, v24

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    aget-object v4, v4, v15

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-eqz v4, :cond_38

    move-object/from16 v0, v24

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    aget-object v4, v4, v15

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    goto/16 :goto_21

    :cond_38
    const/4 v4, 0x0

    goto/16 :goto_21

    :cond_39
    const/4 v4, 0x0

    goto :goto_22

    :cond_3a
    move-object/from16 v0, v16

    iget-object v8, v0, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    add-int/lit8 v9, v15, 0x1

    aget-object v8, v8, v9

    iget-object v8, v8, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-eqz v8, :cond_3b

    iget-object v4, v8, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    :cond_3b
    move-object/from16 v0, v19

    iget-object v9, v0, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    add-int/lit8 v10, v15, 0x1

    aget-object v9, v9, v10

    iget-object v10, v9, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    move-object v9, v4

    goto/16 :goto_23

    :cond_3c
    move-object/from16 v4, v18

    goto/16 :goto_1a

    :cond_3d
    if-eqz v21, :cond_46

    if-eqz v17, :cond_46

    move-object/from16 v12, v17

    move-object/from16 v20, v17

    :goto_24
    if-eqz v20, :cond_44

    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->hd:[Landroid/support/constraint/a/a/d;

    aget-object v4, v4, p2

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_4e

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_4e

    if-eqz v4, :cond_4e

    move-object/from16 v0, v18

    if-ne v4, v0, :cond_4d

    const/4 v4, 0x0

    move-object/from16 v19, v4

    :goto_25
    move-object/from16 v0, v20

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    aget-object v7, v4, v15

    iget-object v5, v7, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    iget-object v4, v12, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    add-int/lit8 v6, v15, 0x1

    aget-object v4, v4, v6

    iget-object v6, v4, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    const/4 v4, 0x0

    invoke-virtual {v7}, Landroid/support/constraint/a/a/c;->ay()I

    move-result v7

    move-object/from16 v0, v20

    iget-object v8, v0, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    add-int/lit8 v9, v15, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroid/support/constraint/a/a/c;->ay()I

    move-result v11

    if-eqz v19, :cond_42

    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    aget-object v8, v4, v15

    iget-object v9, v8, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    iget-object v4, v8, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-eqz v4, :cond_41

    iget-object v4, v8, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    iget-object v4, v4, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    :goto_26
    move-object v10, v4

    :goto_27
    if-eqz v8, :cond_3e

    invoke-virtual {v8}, Landroid/support/constraint/a/a/c;->ay()I

    move-result v4

    add-int/2addr v11, v4

    :cond_3e
    if-eqz v12, :cond_3f

    iget-object v4, v12, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    add-int/lit8 v8, v15, 0x1

    aget-object v4, v4, v8

    invoke-virtual {v4}, Landroid/support/constraint/a/a/c;->ay()I

    move-result v4

    add-int/2addr v7, v4

    :cond_3f
    if-eqz v5, :cond_40

    if-eqz v6, :cond_40

    if-eqz v9, :cond_40

    if-eqz v10, :cond_40

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v12, 0x4

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v12}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;IFLandroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    :cond_40
    :goto_28
    move-object/from16 v12, v20

    move-object/from16 v20, v19

    goto :goto_24

    :cond_41
    const/4 v4, 0x0

    goto :goto_26

    :cond_42
    move-object/from16 v0, v20

    iget-object v8, v0, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    add-int/lit8 v9, v15, 0x1

    aget-object v8, v8, v9

    iget-object v8, v8, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    if-eqz v8, :cond_43

    iget-object v4, v8, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    :cond_43
    move-object/from16 v0, v20

    iget-object v9, v0, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    add-int/lit8 v10, v15, 0x1

    aget-object v9, v9, v10

    iget-object v10, v9, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    move-object v9, v4

    goto :goto_27

    :cond_44
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    aget-object v4, v4, v15

    move-object/from16 v0, v24

    iget-object v5, v0, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    aget-object v5, v5, v15

    iget-object v6, v5, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    add-int/lit8 v7, v15, 0x1

    aget-object v19, v5, v7

    move-object/from16 v0, v16

    iget-object v5, v0, Landroid/support/constraint/a/a/d;->gw:[Landroid/support/constraint/a/a/c;

    add-int/lit8 v7, v15, 0x1

    aget-object v5, v5, v7

    iget-object v0, v5, Landroid/support/constraint/a/a/c;->fx:Landroid/support/constraint/a/a/c;

    move-object/from16 v20, v0

    if-eqz v6, :cond_45

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_47

    iget-object v5, v4, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    iget-object v6, v6, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    invoke-virtual {v4}, Landroid/support/constraint/a/a/c;->ay()I

    move-result v4

    const/4 v7, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6, v4, v7}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    :cond_45
    :goto_29
    if-eqz v20, :cond_46

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_46

    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    move-object/from16 v0, v20

    iget-object v5, v0, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    invoke-virtual/range {v19 .. v19}, Landroid/support/constraint/a/a/c;->ay()I

    move-result v6

    neg-int v6, v6

    const/4 v7, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/support/constraint/a/e;->c(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)Landroid/support/constraint/a/b;

    :cond_46
    move-object/from16 v4, v18

    goto/16 :goto_1a

    :cond_47
    if-eqz v20, :cond_45

    iget-object v5, v4, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    iget-object v6, v6, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    invoke-virtual {v4}, Landroid/support/constraint/a/a/c;->ay()I

    move-result v7

    const/high16 v8, 0x3f000000    # 0.5f

    move-object/from16 v0, v19

    iget-object v9, v0, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    move-object/from16 v0, v20

    iget-object v10, v0, Landroid/support/constraint/a/a/c;->fD:Landroid/support/constraint/a/h;

    invoke-virtual/range {v19 .. v19}, Landroid/support/constraint/a/a/c;->ay()I

    move-result v11

    const/4 v12, 0x5

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v12}, Landroid/support/constraint/a/e;->a(Landroid/support/constraint/a/h;Landroid/support/constraint/a/h;IFLandroid/support/constraint/a/h;Landroid/support/constraint/a/h;II)V

    goto :goto_29

    :cond_48
    const/4 v6, 0x0

    goto/16 :goto_1b

    :cond_49
    const/4 v9, 0x0

    goto/16 :goto_1c

    :cond_4a
    return-void

    :cond_4b
    move-object/from16 v16, v4

    goto/16 :goto_1e

    :cond_4c
    move-object v10, v5

    move-object v8, v7

    goto/16 :goto_1d

    :cond_4d
    move-object/from16 v19, v4

    goto/16 :goto_25

    :cond_4e
    move-object/from16 v19, v4

    goto/16 :goto_28

    :cond_4f
    move-object v6, v10

    move v8, v11

    goto/16 :goto_e

    :cond_50
    move-object/from16 v4, v17

    goto/16 :goto_a

    :cond_51
    move-object/from16 v5, v18

    move-object/from16 v4, v17

    goto/16 :goto_b

    :cond_52
    move-object/from16 v23, v24

    move-object/from16 v16, v24

    goto/16 :goto_5
.end method
