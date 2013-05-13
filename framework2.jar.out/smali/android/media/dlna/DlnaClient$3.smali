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
    .line 469
    iput-object p1, p0, Landroid/media/dlna/DlnaClient$3;->this$0:Landroid/media/dlna/DlnaClient;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 36
    .parameter "msg"

    .prologue
    .line 472
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v31, v0

    .line 473
    .local v31, what:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, [B

    move-object/from16 v10, v32

    check-cast v10, [B

    .line 475
    .local v10, data:[B
    sparse-switch v31, :sswitch_data_0

    .line 671
    :cond_0
    :goto_0
    return-void

    .line 477
    :sswitch_0
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    .line 478
    .local v11, errCode:I
    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg2:I

    .line 481
    .local v9, cookie:I
    invoke-static {v10}, Landroid/media/dlna/DlnaClient;->getActionResultDom([B)Ljava/util/Map;

    move-result-object v23

    .line 482
    .local v23, result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v12, "error desc not exists"

    .line 490
    .local v12, errMsg:Ljava/lang/String;
    invoke-interface/range {v23 .. v23}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v27

    .line 491
    .local v27, set:Ljava/util/Set;
    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 492
    .local v15, it:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_2

    .line 493
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 494
    .local v25, s:Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v32

    const-string v33, "errordesc"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v32

    if-lez v32, :cond_1

    .line 495
    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .end local v12           #errMsg:Ljava/lang/String;
    check-cast v12, Ljava/lang/String;

    .line 501
    .end local v25           #s:Ljava/lang/String;
    .restart local v12       #errMsg:Ljava/lang/String;
    :cond_2
    if-nez v9, :cond_3

    .line 502
    if-eqz v11, :cond_0

    .line 503
    const-string v32, "DlnaClient"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "ERROR, uncaught remote call failed: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 506
    :cond_3
    if-eqz v11, :cond_4

    .line 507
    const-string v7, "unknown action"

    .line 508
    .local v7, actionName:Ljava/lang/String;
    if-nez v10, :cond_a

    .line 509
    const-string v32, "DlnaClient"

    const-string v33, "action callback data is NULL !"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :goto_1
    const-string v32, "DlnaClient"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "*** "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "  ERROR "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " !!! "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " <== XXXXXXXXXXXXXXXXXXXXXXXXX"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    .end local v7           #actionName:Ljava/lang/String;
    :cond_4
    const/16 v32, 0x3e7

    move/from16 v0, v32

    if-ne v9, v0, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/dlna/DlnaClient$3;->this$0:Landroid/media/dlna/DlnaClient;

    move-object/from16 v32, v0

    #getter for: Landroid/media/dlna/DlnaClient;->mPlaybackInfoListener:Landroid/media/dlna/DlnaClient$PlaybackInfoListener;
    invoke-static/range {v32 .. v32}, Landroid/media/dlna/DlnaClient;->access$400(Landroid/media/dlna/DlnaClient;)Landroid/media/dlna/DlnaClient$PlaybackInfoListener;

    move-result-object v32

    if-eqz v32, :cond_11

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/dlna/DlnaClient$3;->this$0:Landroid/media/dlna/DlnaClient;

    move-object/from16 v32, v0

    #getter for: Landroid/media/dlna/DlnaClient;->mPlaybackInfoListener:Landroid/media/dlna/DlnaClient$PlaybackInfoListener;
    invoke-static/range {v32 .. v32}, Landroid/media/dlna/DlnaClient;->access$400(Landroid/media/dlna/DlnaClient;)Landroid/media/dlna/DlnaClient$PlaybackInfoListener;

    move-result-object v8

    .line 529
    .local v8, callback:Landroid/media/dlna/DlnaClient$PlaybackInfoListener;
    const-string v32, "CurrentVolume"

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_5

    .line 530
    const-string v32, "CurrentVolume"

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    invoke-static/range {v32 .. v32}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v32

    move/from16 v0, v32

    float-to-int v0, v0

    move/from16 v30, v0

    .line 532
    .local v30, volume:I
    invoke-static {}, Landroid/media/dlna/DlnaClient;->access$500()I

    move-result v32

    move/from16 v0, v30

    move/from16 v1, v32

    if-ne v0, v1, :cond_e

    .line 533
    invoke-static/range {v30 .. v30}, Landroid/media/dlna/DlnaClient;->access$102(I)I

    .line 534
    const/16 v32, -0x1

    invoke-static/range {v32 .. v32}, Landroid/media/dlna/DlnaClient;->access$502(I)I

    .line 535
    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v32, v0

    const/high16 v33, 0x42c8

    div-float v32, v32, v33

    move/from16 v0, v32

    invoke-interface {v8, v0}, Landroid/media/dlna/DlnaClient$PlaybackInfoListener;->onVolumeMessage(F)V

    .line 546
    .end local v30           #volume:I
    :cond_5
    :goto_2
    const-string v32, "RelTime"

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_7

    .line 547
    const-string v32, "RelTime"

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 548
    .local v24, rt:Ljava/lang/String;
    const-string v32, "([\\d]+):([\\d]+):([\\d]+)"

    invoke-static/range {v32 .. v32}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v19

    .line 549
    .local v19, p:Ljava/util/regex/Pattern;
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v16

    .line 550
    .local v16, m:Ljava/util/regex/Matcher;
    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->find()Z

    move-result v32

    if-eqz v32, :cond_7

    .line 551
    const/16 v32, 0x3

    move-object/from16 v0, v16

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 552
    .local v26, sec:I
    const/16 v32, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 553
    .local v17, min:I
    const/16 v32, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 554
    .local v13, hour:I
    mul-int/lit8 v32, v17, 0x3c

    add-int v32, v32, v26

    mul-int/lit8 v33, v13, 0x3c

    mul-int/lit8 v33, v33, 0x3c

    add-int v32, v32, v33

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v20, v0

    .line 556
    .local v20, position:J
    invoke-static {}, Landroid/media/dlna/DlnaClient;->access$700()J

    move-result-wide v32

    cmp-long v32, v20, v32

    if-eqz v32, :cond_7

    .line 557
    invoke-static/range {v20 .. v21}, Landroid/media/dlna/DlnaClient;->access$702(J)J

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/dlna/DlnaClient$3;->this$0:Landroid/media/dlna/DlnaClient;

    move-object/from16 v32, v0

    #getter for: Landroid/media/dlna/DlnaClient;->mSeeking:Z
    invoke-static/range {v32 .. v32}, Landroid/media/dlna/DlnaClient;->access$300(Landroid/media/dlna/DlnaClient;)Z

    move-result v32

    if-nez v32, :cond_6

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/dlna/DlnaClient$3;->this$0:Landroid/media/dlna/DlnaClient;

    move-object/from16 v32, v0

    const-wide/16 v33, -0x1

    #setter for: Landroid/media/dlna/DlnaClient;->mPositionToSeek:J
    invoke-static/range {v32 .. v34}, Landroid/media/dlna/DlnaClient;->access$802(Landroid/media/dlna/DlnaClient;J)J

    .line 561
    :cond_6
    move-wide/from16 v0, v20

    invoke-interface {v8, v0, v1}, Landroid/media/dlna/DlnaClient$PlaybackInfoListener;->onPositionMessage(J)V

    .line 566
    .end local v13           #hour:I
    .end local v16           #m:Ljava/util/regex/Matcher;
    .end local v17           #min:I
    .end local v19           #p:Ljava/util/regex/Pattern;
    .end local v20           #position:J
    .end local v24           #rt:Ljava/lang/String;
    .end local v26           #sec:I
    :cond_7
    const-string v32, "CurrentTransportState"

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_9

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/dlna/DlnaClient$3;->this$0:Landroid/media/dlna/DlnaClient;

    move-object/from16 v33, v0

    const-string v32, "CurrentTransportState"

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    #calls: Landroid/media/dlna/DlnaClient;->stateToInt(Ljava/lang/String;)I
    invoke-static {v0, v1}, Landroid/media/dlna/DlnaClient;->access$900(Landroid/media/dlna/DlnaClient;Ljava/lang/String;)I

    move-result v28

    .line 568
    .local v28, state:I
    invoke-static {}, Landroid/media/dlna/DlnaClient;->access$1000()I

    move-result v32

    move/from16 v0, v28

    move/from16 v1, v32

    if-eq v0, v1, :cond_8

    .line 569
    invoke-static/range {v28 .. v28}, Landroid/media/dlna/DlnaClient;->access$1002(I)I

    .line 570
    const-string v32, "DlnaClient"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "****************** "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/dlna/DlnaClient$3;->this$0:Landroid/media/dlna/DlnaClient;

    move-object/from16 v34, v0

    invoke-static {}, Landroid/media/dlna/DlnaClient;->access$1000()I

    move-result v35

    #calls: Landroid/media/dlna/DlnaClient;->stateToString(I)Ljava/lang/String;
    invoke-static/range {v34 .. v35}, Landroid/media/dlna/DlnaClient;->access$1100(Landroid/media/dlna/DlnaClient;I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " ******************** "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    invoke-static {}, Landroid/media/dlna/DlnaClient;->access$1000()I

    move-result v32

    move/from16 v0, v32

    invoke-interface {v8, v0}, Landroid/media/dlna/DlnaClient$PlaybackInfoListener;->onPlaybackStateMessage(I)V

    .line 574
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/dlna/DlnaClient$3;->this$0:Landroid/media/dlna/DlnaClient;

    move-object/from16 v32, v0

    #getter for: Landroid/media/dlna/DlnaClient;->mPositionToSeek:J
    invoke-static/range {v32 .. v32}, Landroid/media/dlna/DlnaClient;->access$800(Landroid/media/dlna/DlnaClient;)J

    move-result-wide v32

    const-wide/16 v34, 0x0

    cmp-long v32, v32, v34

    if-ltz v32, :cond_9

    invoke-static {}, Landroid/media/dlna/DlnaClient;->access$1000()I

    move-result v32

    const/16 v33, 0x8

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_9

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/dlna/DlnaClient$3;->this$0:Landroid/media/dlna/DlnaClient;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/dlna/DlnaClient$3;->this$0:Landroid/media/dlna/DlnaClient;

    move-object/from16 v33, v0

    #getter for: Landroid/media/dlna/DlnaClient;->mPositionToSeek:J
    invoke-static/range {v33 .. v33}, Landroid/media/dlna/DlnaClient;->access$800(Landroid/media/dlna/DlnaClient;)J

    move-result-wide v33

    #calls: Landroid/media/dlna/DlnaClient;->seekLong(J)Z
    invoke-static/range {v32 .. v34}, Landroid/media/dlna/DlnaClient;->access$1200(Landroid/media/dlna/DlnaClient;J)Z

    .line 579
    .end local v28           #state:I
    :cond_9
    const-string v32, "TrackURI"

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_0

    .line 580
    const-string v32, "TrackURI"

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    .line 581
    .local v29, uri:Ljava/lang/String;
    if-eqz v29, :cond_0

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/dlna/DlnaClient$3;->this$0:Landroid/media/dlna/DlnaClient;

    move-object/from16 v32, v0

    #getter for: Landroid/media/dlna/DlnaClient;->mUriSent:Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Landroid/media/dlna/DlnaClient;->access$1300(Landroid/media/dlna/DlnaClient;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_10

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/dlna/DlnaClient$3;->this$0:Landroid/media/dlna/DlnaClient;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    #setter for: Landroid/media/dlna/DlnaClient;->mLastUri:Ljava/lang/String;
    invoke-static/range {v32 .. v33}, Landroid/media/dlna/DlnaClient;->access$1402(Landroid/media/dlna/DlnaClient;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 512
    .end local v8           #callback:Landroid/media/dlna/DlnaClient$PlaybackInfoListener;
    .end local v29           #uri:Ljava/lang/String;
    .restart local v7       #actionName:Ljava/lang/String;
    :cond_a
    new-instance v25, Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-direct {v0, v10}, Ljava/lang/String;-><init>([B)V

    .line 513
    .restart local v25       #s:Ljava/lang/String;
    const-string v32, "u:"

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 514
    .local v5, a0:I
    if-gez v5, :cond_b

    const-string v32, "m:"

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 515
    :cond_b
    const-string v32, "Response "

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 517
    .local v6, a1:I
    if-ltz v5, :cond_c

    if-gez v6, :cond_d

    .line 518
    :cond_c
    const-string v32, "DlnaClient"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "BAD action result: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 521
    :cond_d
    sub-int v32, v6, v5

    move-object/from16 v0, v25

    move/from16 v1, v32

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 537
    .end local v5           #a0:I
    .end local v6           #a1:I
    .end local v7           #actionName:Ljava/lang/String;
    .end local v25           #s:Ljava/lang/String;
    .restart local v8       #callback:Landroid/media/dlna/DlnaClient$PlaybackInfoListener;
    .restart local v30       #volume:I
    :cond_e
    invoke-static {}, Landroid/media/dlna/DlnaClient;->access$500()I

    move-result v32

    if-ltz v32, :cond_f

    invoke-static {}, Landroid/media/dlna/DlnaClient;->access$500()I

    move-result v32

    move/from16 v0, v30

    move/from16 v1, v32

    if-eq v0, v1, :cond_f

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/dlna/DlnaClient$3;->this$0:Landroid/media/dlna/DlnaClient;

    move-object/from16 v32, v0

    invoke-static {}, Landroid/media/dlna/DlnaClient;->access$500()I

    move-result v33

    #calls: Landroid/media/dlna/DlnaClient;->setVolumeInt(I)Z
    invoke-static/range {v32 .. v33}, Landroid/media/dlna/DlnaClient;->access$600(Landroid/media/dlna/DlnaClient;I)Z

    goto/16 :goto_2

    .line 540
    :cond_f
    invoke-static {}, Landroid/media/dlna/DlnaClient;->access$500()I

    move-result v32

    if-gez v32, :cond_5

    invoke-static {}, Landroid/media/dlna/DlnaClient;->access$100()I

    move-result v32

    move/from16 v0, v30

    move/from16 v1, v32

    if-eq v0, v1, :cond_5

    .line 541
    invoke-static/range {v30 .. v30}, Landroid/media/dlna/DlnaClient;->access$102(I)I

    .line 542
    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v32, v0

    const/high16 v33, 0x42c8

    div-float v32, v32, v33

    move/from16 v0, v32

    invoke-interface {v8, v0}, Landroid/media/dlna/DlnaClient$PlaybackInfoListener;->onVolumeMessage(F)V

    goto/16 :goto_2

    .line 585
    .end local v30           #volume:I
    .restart local v29       #uri:Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/dlna/DlnaClient$3;->this$0:Landroid/media/dlna/DlnaClient;

    move-object/from16 v32, v0

    #getter for: Landroid/media/dlna/DlnaClient;->mLastUri:Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Landroid/media/dlna/DlnaClient;->access$1400(Landroid/media/dlna/DlnaClient;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_0

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/dlna/DlnaClient$3;->this$0:Landroid/media/dlna/DlnaClient;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    #setter for: Landroid/media/dlna/DlnaClient;->mUriSent:Ljava/lang/String;
    invoke-static/range {v32 .. v33}, Landroid/media/dlna/DlnaClient;->access$1302(Landroid/media/dlna/DlnaClient;Ljava/lang/String;)Ljava/lang/String;

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/dlna/DlnaClient$3;->this$0:Landroid/media/dlna/DlnaClient;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    #setter for: Landroid/media/dlna/DlnaClient;->mLastUri:Ljava/lang/String;
    invoke-static/range {v32 .. v33}, Landroid/media/dlna/DlnaClient;->access$1402(Landroid/media/dlna/DlnaClient;Ljava/lang/String;)Ljava/lang/String;

    .line 588
    move-object/from16 v0, v29

    invoke-interface {v8, v0}, Landroid/media/dlna/DlnaClient$PlaybackInfoListener;->onPlayerTrackUriChanged(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 594
    .end local v8           #callback:Landroid/media/dlna/DlnaClient$PlaybackInfoListener;
    .end local v29           #uri:Ljava/lang/String;
    :cond_11
    const/16 v32, 0x3e7

    move/from16 v0, v32

    if-eq v9, v0, :cond_0

    .line 595
    invoke-static {}, Landroid/media/dlna/DlnaClient;->access$1500()Ljava/util/Map;

    move-result-object v32

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v33

    invoke-interface/range {v32 .. v33}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 596
    .local v18, obj:Ljava/lang/Object;
    if-nez v18, :cond_12

    .line 597
    const-string v32, "DlnaClient"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "action "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " callback listener LOST, pool size = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-static {}, Landroid/media/dlna/DlnaClient;->access$1500()Ljava/util/Map;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Ljava/util/Map;->size()I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 601
    :cond_12
    invoke-static {}, Landroid/media/dlna/DlnaClient;->access$1500()Ljava/util/Map;

    move-result-object v32

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v33

    invoke-interface/range {v32 .. v33}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    invoke-static {}, Landroid/media/dlna/DlnaClient;->access$1500()Ljava/util/Map;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/util/Map;->size()I

    move-result v32

    const/16 v33, 0x5

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_13

    .line 603
    const-string v32, "DlnaClient"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "call back pool size = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-static {}, Landroid/media/dlna/DlnaClient;->access$1500()Ljava/util/Map;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Ljava/util/Map;->size()I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_13
    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/media/dlna/DlnaClient$RemoteCallListener;

    move/from16 v32, v0

    if-eqz v32, :cond_14

    move-object/from16 v22, v18

    .line 606
    check-cast v22, Landroid/media/dlna/DlnaClient$RemoteCallListener;

    .line 608
    .local v22, remote:Landroid/media/dlna/DlnaClient$RemoteCallListener;
    move-object/from16 v0, v22

    invoke-interface {v0, v11, v12}, Landroid/media/dlna/DlnaClient$RemoteCallListener;->onActionEnd(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 611
    .end local v22           #remote:Landroid/media/dlna/DlnaClient$RemoteCallListener;
    :cond_14
    const-string v32, "DlnaClient"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "not known listener, "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    const-string v32, "DlnaClient"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "result = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    new-instance v34, Ljava/lang/String;

    move-object/from16 v0, v34

    invoke-direct {v0, v10}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 631
    .end local v9           #cookie:I
    .end local v11           #errCode:I
    .end local v12           #errMsg:Ljava/lang/String;
    .end local v15           #it:Ljava/util/Iterator;
    .end local v18           #obj:Ljava/lang/Object;
    .end local v23           #result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v27           #set:Ljava/util/Set;
    :sswitch_1
    const/16 v14, 0x3e8

    .line 632
    .local v14, interval:I
    invoke-static {}, Landroid/media/dlna/DlnaClient;->access$1500()Ljava/util/Map;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/util/Map;->size()I

    move-result v32

    const/16 v33, 0x1e

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_15

    .line 633
    const/16 v14, 0xbb8

    .line 636
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/dlna/DlnaClient$3;->this$0:Landroid/media/dlna/DlnaClient;

    move-object/from16 v32, v0

    #calls: Landroid/media/dlna/DlnaClient;->requestState()Z
    invoke-static/range {v32 .. v32}, Landroid/media/dlna/DlnaClient;->access$1600(Landroid/media/dlna/DlnaClient;)Z

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/dlna/DlnaClient$3;->this$0:Landroid/media/dlna/DlnaClient;

    move-object/from16 v32, v0

    #calls: Landroid/media/dlna/DlnaClient;->requestPosition()Z
    invoke-static/range {v32 .. v32}, Landroid/media/dlna/DlnaClient;->access$1700(Landroid/media/dlna/DlnaClient;)Z

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/dlna/DlnaClient$3;->this$0:Landroid/media/dlna/DlnaClient;

    move-object/from16 v32, v0

    #calls: Landroid/media/dlna/DlnaClient;->requestVolume()Z
    invoke-static/range {v32 .. v32}, Landroid/media/dlna/DlnaClient;->access$1800(Landroid/media/dlna/DlnaClient;)Z

    .line 641
    const/16 v32, 0x65

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/media/dlna/DlnaClient$3;->removeMessages(I)V

    .line 642
    const/16 v32, 0x65

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    move-object/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/dlna/DlnaClient$3;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v16

    .line 643
    .local v16, m:Landroid/os/Message;
    int-to-long v0, v14

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-wide/from16 v2, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/dlna/DlnaClient$3;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 475
    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_1
        0xc8 -> :sswitch_0
    .end sparse-switch
.end method
