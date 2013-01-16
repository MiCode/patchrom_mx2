.class Landroid/media/dlna/DlnaClient$3;
.super Landroid/os/Handler;
.source "DlnaClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/dlna/DlnaClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/dlna/DlnaClient;


# direct methods
.method constructor <init>(Landroid/media/dlna/DlnaClient;)V
    .locals 0
    .parameter

    .prologue
    .line 473
    iput-object p1, p0, Landroid/media/dlna/DlnaClient$3;->this$0:Landroid/media/dlna/DlnaClient;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 29
    .parameter "msg"

    .prologue
    .line 476
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v24, v0

    .line 477
    .local v24, what:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, [B

    move-object/from16 v7, v25

    check-cast v7, [B

    .line 479
    .local v7, data:[B
    sparse-switch v24, :sswitch_data_0

    .line 636
    :cond_0
    :goto_0
    return-void

    .line 481
    :sswitch_0
    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    .line 482
    .local v8, errCode:I
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    .line 484
    .local v6, cookie:I
    if-nez v6, :cond_1

    .line 485
    if-eqz v8, :cond_0

    .line 486
    const-string v25, "DlnaClient"

    const-string v26, "ERROR, uncaught remote call failed"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 489
    :cond_1
    invoke-static {}, Landroid/media/dlna/DlnaClient;->access$600()Ljava/util/Map;

    move-result-object v25

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    invoke-interface/range {v25 .. v26}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 490
    .local v13, obj:Ljava/lang/Object;
    if-nez v13, :cond_2

    .line 491
    const-string v25, "DlnaClient"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Callback pool ERROR, listener not found, pool size = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-static {}, Landroid/media/dlna/DlnaClient;->access$600()Ljava/util/Map;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Map;->size()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 494
    :cond_2
    invoke-static {}, Landroid/media/dlna/DlnaClient;->access$600()Ljava/util/Map;

    move-result-object v25

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    invoke-interface/range {v25 .. v26}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    const-string v25, "DlnaClient"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "call back pool size = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-static {}, Landroid/media/dlna/DlnaClient;->access$600()Ljava/util/Map;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Map;->size()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    invoke-static {v7}, Landroid/media/dlna/DlnaClient;->getActionResultDom([B)Ljava/util/Map;

    move-result-object v18

    .line 501
    .local v18, result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    instance-of v0, v13, Landroid/media/dlna/DlnaClient$RemoteCallListener;

    move/from16 v25, v0

    if-eqz v25, :cond_5

    move-object/from16 v17, v13

    .line 502
    check-cast v17, Landroid/media/dlna/DlnaClient$RemoteCallListener;

    .line 504
    .local v17, remote:Landroid/media/dlna/DlnaClient$RemoteCallListener;
    const-string v9, " "

    .line 505
    .local v9, errMsg:Ljava/lang/String;
    const-string v25, "u:errorDescription"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_4

    .line 506
    const-string v25, "u:errorDescription"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #errMsg:Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .line 511
    .restart local v9       #errMsg:Ljava/lang/String;
    :cond_3
    :goto_1
    move-object/from16 v0, v17

    invoke-interface {v0, v8, v9}, Landroid/media/dlna/DlnaClient$RemoteCallListener;->onActionEnd(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 508
    :cond_4
    const-string v25, "errorDescription"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 509
    const-string v25, "errorDescription"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #errMsg:Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .restart local v9       #errMsg:Ljava/lang/String;
    goto :goto_1

    .line 514
    .end local v9           #errMsg:Ljava/lang/String;
    .end local v17           #remote:Landroid/media/dlna/DlnaClient$RemoteCallListener;
    :cond_5
    instance-of v0, v13, Landroid/media/dlna/DlnaClient$PlaybackInfoListener;

    move/from16 v25, v0

    if-eqz v25, :cond_e

    move-object v5, v13

    .line 515
    check-cast v5, Landroid/media/dlna/DlnaClient$PlaybackInfoListener;

    .line 516
    .local v5, callback:Landroid/media/dlna/DlnaClient$PlaybackInfoListener;
    const-string v25, "CurrentVolume"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_6

    .line 517
    const-string v25, "CurrentVolume"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 519
    .local v23, volume:I
    invoke-static {}, Landroid/media/dlna/DlnaClient;->access$700()I

    move-result v25

    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_b

    .line 520
    invoke-static/range {v23 .. v23}, Landroid/media/dlna/DlnaClient;->access$802(I)I

    .line 521
    const/16 v25, -0x1

    invoke-static/range {v25 .. v25}, Landroid/media/dlna/DlnaClient;->access$702(I)I

    .line 522
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v25, v0

    const/high16 v26, 0x42c8

    div-float v25, v25, v26

    move/from16 v0, v25

    invoke-interface {v5, v0}, Landroid/media/dlna/DlnaClient$PlaybackInfoListener;->onVolumeMessage(F)V

    .line 533
    .end local v23           #volume:I
    :cond_6
    :goto_2
    const-string v25, "RelTime"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_8

    .line 534
    const-string v25, "RelTime"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 535
    .local v19, rt:Ljava/lang/String;
    const-string v25, "([\\d]+):([\\d]+):([\\d]+)"

    invoke-static/range {v25 .. v25}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v14

    .line 536
    .local v14, p:Ljava/util/regex/Pattern;
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 537
    .local v11, m:Ljava/util/regex/Matcher;
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v25

    if-eqz v25, :cond_8

    .line 538
    const/16 v25, 0x3

    move/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 539
    .local v20, sec:I
    const/16 v25, 0x2

    move/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 540
    .local v12, min:I
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 541
    .local v10, hour:I
    mul-int/lit8 v25, v12, 0x3c

    add-int v25, v25, v20

    mul-int/lit8 v26, v10, 0x3c

    mul-int/lit8 v26, v26, 0x3c

    add-int v25, v25, v26

    move/from16 v0, v25

    int-to-long v15, v0

    .line 543
    .local v15, position:J
    invoke-static {}, Landroid/media/dlna/DlnaClient;->access$1000()J

    move-result-wide v25

    cmp-long v25, v15, v25

    if-eqz v25, :cond_8

    .line 544
    invoke-static/range {v15 .. v16}, Landroid/media/dlna/DlnaClient;->access$1002(J)J

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/dlna/DlnaClient$3;->this$0:Landroid/media/dlna/DlnaClient;

    move-object/from16 v25, v0

    #getter for: Landroid/media/dlna/DlnaClient;->mSeeking:Z
    invoke-static/range {v25 .. v25}, Landroid/media/dlna/DlnaClient;->access$300(Landroid/media/dlna/DlnaClient;)Z

    move-result v25

    if-nez v25, :cond_7

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/dlna/DlnaClient$3;->this$0:Landroid/media/dlna/DlnaClient;

    move-object/from16 v25, v0

    const-wide/16 v26, -0x1

    #setter for: Landroid/media/dlna/DlnaClient;->mPositionToSeek:J
    invoke-static/range {v25 .. v27}, Landroid/media/dlna/DlnaClient;->access$1102(Landroid/media/dlna/DlnaClient;J)J

    .line 548
    :cond_7
    move-wide v0, v15

    invoke-interface {v5, v0, v1}, Landroid/media/dlna/DlnaClient$PlaybackInfoListener;->onPositionMessage(J)V

    .line 553
    .end local v10           #hour:I
    .end local v11           #m:Ljava/util/regex/Matcher;
    .end local v12           #min:I
    .end local v14           #p:Ljava/util/regex/Pattern;
    .end local v15           #position:J
    .end local v19           #rt:Ljava/lang/String;
    .end local v20           #sec:I
    :cond_8
    const-string v25, "CurrentTransportState"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_a

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/dlna/DlnaClient$3;->this$0:Landroid/media/dlna/DlnaClient;

    move-object/from16 v26, v0

    const-string v25, "CurrentTransportState"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    #calls: Landroid/media/dlna/DlnaClient;->stateToInt(Ljava/lang/String;)I
    invoke-static {v0, v1}, Landroid/media/dlna/DlnaClient;->access$1200(Landroid/media/dlna/DlnaClient;Ljava/lang/String;)I

    move-result v21

    .line 555
    .local v21, state:I
    invoke-static {}, Landroid/media/dlna/DlnaClient;->access$1300()I

    move-result v25

    move/from16 v0, v21

    move/from16 v1, v25

    if-eq v0, v1, :cond_a

    .line 556
    invoke-static/range {v21 .. v21}, Landroid/media/dlna/DlnaClient;->access$1302(I)I

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/dlna/DlnaClient$3;->this$0:Landroid/media/dlna/DlnaClient;

    move-object/from16 v25, v0

    #getter for: Landroid/media/dlna/DlnaClient;->mPositionToSeek:J
    invoke-static/range {v25 .. v25}, Landroid/media/dlna/DlnaClient;->access$1100(Landroid/media/dlna/DlnaClient;)J

    move-result-wide v25

    const-wide/16 v27, 0x0

    cmp-long v25, v25, v27

    if-ltz v25, :cond_9

    invoke-static {}, Landroid/media/dlna/DlnaClient;->access$1300()I

    move-result v25

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/dlna/DlnaClient$3;->this$0:Landroid/media/dlna/DlnaClient;

    move-object/from16 v25, v0

    #getter for: Landroid/media/dlna/DlnaClient;->mSeeking:Z
    invoke-static/range {v25 .. v25}, Landroid/media/dlna/DlnaClient;->access$300(Landroid/media/dlna/DlnaClient;)Z

    move-result v25

    if-nez v25, :cond_9

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/dlna/DlnaClient$3;->this$0:Landroid/media/dlna/DlnaClient;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/dlna/DlnaClient$3;->this$0:Landroid/media/dlna/DlnaClient;

    move-object/from16 v26, v0

    #getter for: Landroid/media/dlna/DlnaClient;->mPositionToSeek:J
    invoke-static/range {v26 .. v26}, Landroid/media/dlna/DlnaClient;->access$1100(Landroid/media/dlna/DlnaClient;)J

    move-result-wide v26

    #calls: Landroid/media/dlna/DlnaClient;->seekLong(J)Z
    invoke-static/range {v25 .. v27}, Landroid/media/dlna/DlnaClient;->access$1400(Landroid/media/dlna/DlnaClient;J)Z

    .line 562
    :cond_9
    invoke-static {}, Landroid/media/dlna/DlnaClient;->access$1300()I

    move-result v25

    move/from16 v0, v25

    invoke-interface {v5, v0}, Landroid/media/dlna/DlnaClient$PlaybackInfoListener;->onPlaybackStateMessage(I)V

    .line 566
    .end local v21           #state:I
    :cond_a
    const-string v25, "TrackURI"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 567
    const-string v25, "TrackURI"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 568
    .local v22, uri:Ljava/lang/String;
    if-eqz v22, :cond_0

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/dlna/DlnaClient$3;->this$0:Landroid/media/dlna/DlnaClient;

    move-object/from16 v25, v0

    #getter for: Landroid/media/dlna/DlnaClient;->mUriSent:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Landroid/media/dlna/DlnaClient;->access$1500(Landroid/media/dlna/DlnaClient;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_d

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/dlna/DlnaClient$3;->this$0:Landroid/media/dlna/DlnaClient;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    #setter for: Landroid/media/dlna/DlnaClient;->mLastUri:Ljava/lang/String;
    invoke-static/range {v25 .. v26}, Landroid/media/dlna/DlnaClient;->access$1602(Landroid/media/dlna/DlnaClient;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 524
    .end local v22           #uri:Ljava/lang/String;
    .restart local v23       #volume:I
    :cond_b
    invoke-static {}, Landroid/media/dlna/DlnaClient;->access$700()I

    move-result v25

    if-ltz v25, :cond_c

    invoke-static {}, Landroid/media/dlna/DlnaClient;->access$700()I

    move-result v25

    move/from16 v0, v23

    move/from16 v1, v25

    if-eq v0, v1, :cond_c

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/dlna/DlnaClient$3;->this$0:Landroid/media/dlna/DlnaClient;

    move-object/from16 v25, v0

    invoke-static {}, Landroid/media/dlna/DlnaClient;->access$700()I

    move-result v26

    #calls: Landroid/media/dlna/DlnaClient;->setVolumeInt(I)Z
    invoke-static/range {v25 .. v26}, Landroid/media/dlna/DlnaClient;->access$900(Landroid/media/dlna/DlnaClient;I)Z

    goto/16 :goto_2

    .line 527
    :cond_c
    invoke-static {}, Landroid/media/dlna/DlnaClient;->access$700()I

    move-result v25

    if-gez v25, :cond_6

    invoke-static {}, Landroid/media/dlna/DlnaClient;->access$800()I

    move-result v25

    move/from16 v0, v23

    move/from16 v1, v25

    if-eq v0, v1, :cond_6

    .line 528
    invoke-static/range {v23 .. v23}, Landroid/media/dlna/DlnaClient;->access$802(I)I

    .line 529
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v25, v0

    const/high16 v26, 0x42c8

    div-float v25, v25, v26

    move/from16 v0, v25

    invoke-interface {v5, v0}, Landroid/media/dlna/DlnaClient$PlaybackInfoListener;->onVolumeMessage(F)V

    goto/16 :goto_2

    .line 572
    .end local v23           #volume:I
    .restart local v22       #uri:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/dlna/DlnaClient$3;->this$0:Landroid/media/dlna/DlnaClient;

    move-object/from16 v25, v0

    #getter for: Landroid/media/dlna/DlnaClient;->mLastUri:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Landroid/media/dlna/DlnaClient;->access$1600(Landroid/media/dlna/DlnaClient;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_0

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/dlna/DlnaClient$3;->this$0:Landroid/media/dlna/DlnaClient;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    #setter for: Landroid/media/dlna/DlnaClient;->mUriSent:Ljava/lang/String;
    invoke-static/range {v25 .. v26}, Landroid/media/dlna/DlnaClient;->access$1502(Landroid/media/dlna/DlnaClient;Ljava/lang/String;)Ljava/lang/String;

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/dlna/DlnaClient$3;->this$0:Landroid/media/dlna/DlnaClient;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    #setter for: Landroid/media/dlna/DlnaClient;->mLastUri:Ljava/lang/String;
    invoke-static/range {v25 .. v26}, Landroid/media/dlna/DlnaClient;->access$1602(Landroid/media/dlna/DlnaClient;Ljava/lang/String;)Ljava/lang/String;

    .line 575
    move-object/from16 v0, v22

    invoke-interface {v5, v0}, Landroid/media/dlna/DlnaClient$PlaybackInfoListener;->onPlayerTrackUriChanged(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 583
    .end local v5           #callback:Landroid/media/dlna/DlnaClient$PlaybackInfoListener;
    .end local v22           #uri:Ljava/lang/String;
    :cond_e
    const-string v25, "DlnaClient"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "not known listener, "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    const-string v25, "DlnaClient"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "result = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    new-instance v27, Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 603
    .end local v6           #cookie:I
    .end local v8           #errCode:I
    .end local v13           #obj:Ljava/lang/Object;
    .end local v18           #result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/dlna/DlnaClient$3;->this$0:Landroid/media/dlna/DlnaClient;

    move-object/from16 v25, v0

    #calls: Landroid/media/dlna/DlnaClient;->requestState()Z
    invoke-static/range {v25 .. v25}, Landroid/media/dlna/DlnaClient;->access$1700(Landroid/media/dlna/DlnaClient;)Z

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/dlna/DlnaClient$3;->this$0:Landroid/media/dlna/DlnaClient;

    move-object/from16 v25, v0

    #calls: Landroid/media/dlna/DlnaClient;->requestVolume()Z
    invoke-static/range {v25 .. v25}, Landroid/media/dlna/DlnaClient;->access$1800(Landroid/media/dlna/DlnaClient;)Z

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/dlna/DlnaClient$3;->this$0:Landroid/media/dlna/DlnaClient;

    move-object/from16 v25, v0

    #calls: Landroid/media/dlna/DlnaClient;->requestPosition()Z
    invoke-static/range {v25 .. v25}, Landroid/media/dlna/DlnaClient;->access$1900(Landroid/media/dlna/DlnaClient;)Z

    .line 607
    const/16 v25, 0x65

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/media/dlna/DlnaClient$3;->removeMessages(I)V

    .line 608
    const/16 v25, 0x65

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/dlna/DlnaClient$3;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 609
    .local v11, m:Landroid/os/Message;
    invoke-static {}, Landroid/media/dlna/DlnaClient;->access$1300()I

    move-result v25

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/dlna/DlnaClient$3;->this$0:Landroid/media/dlna/DlnaClient;

    move-object/from16 v25, v0

    #getter for: Landroid/media/dlna/DlnaClient;->mPositionToSeek:J
    invoke-static/range {v25 .. v25}, Landroid/media/dlna/DlnaClient;->access$1100(Landroid/media/dlna/DlnaClient;)J

    move-result-wide v25

    const-wide/16 v27, 0x0

    cmp-long v25, v25, v27

    if-ltz v25, :cond_f

    const-wide/16 v25, 0x12c

    :goto_3
    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-virtual {v0, v11, v1, v2}, Landroid/media/dlna/DlnaClient$3;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_f
    const-wide/16 v25, 0x3e8

    goto :goto_3

    .line 479
    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_1
        0xc8 -> :sswitch_0
    .end sparse-switch
.end method
