.class Lcom/android/server/MountService$1$1;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/MountService$1;


# direct methods
.method constructor <init>(Lcom/android/server/MountService$1;)V
    .locals 0
    .parameter

    .prologue
    .line 595
    iput-object p1, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 34

    .prologue
    .line 607
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v29, v0

    #getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;
    invoke-static/range {v29 .. v29}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v30

    monitor-enter v30
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v29, v0

    #getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;
    invoke-static/range {v29 .. v29}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v13

    .line 609
    .local v13, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v13}, Ljava/util/Set;->size()I

    move-result v6

    .line 610
    .local v6, count:I
    new-array v0, v6, [Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-interface {v13, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Ljava/lang/String;

    .line 611
    .local v21, paths:[Ljava/lang/String;
    new-array v0, v6, [Ljava/lang/String;

    move-object/from16 v25, v0

    .line 612
    .local v25, states:[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v6, :cond_0

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v29, v0

    #getter for: Lcom/android/server/MountService;->mVolumeStates:Ljava/util/HashMap;
    invoke-static/range {v29 .. v29}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v29

    aget-object v31, v21, v9

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    aput-object v29, v25, v9

    .line 612
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 615
    :cond_0
    monitor-exit v30
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 617
    const/4 v9, 0x0

    :goto_1
    if-ge v9, v6, :cond_4

    .line 618
    :try_start_2
    aget-object v20, v21, v9

    .line 619
    .local v20, path:Ljava/lang/String;
    aget-object v24, v25, v9

    .line 621
    .local v24, state:Ljava/lang/String;
    const-string v29, "unmounted"

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_3

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    #calls: Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/server/MountService;->access$1000(Lcom/android/server/MountService;Ljava/lang/String;)I

    move-result v22

    .line 623
    .local v22, rc:I
    if-eqz v22, :cond_1

    .line 624
    const-string v29, "MountService"

    const-string v30, "Boot-time mount failed (%d)"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 617
    .end local v22           #rc:I
    :cond_1
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 615
    .end local v6           #count:I
    .end local v9           #i:I
    .end local v13           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v20           #path:Ljava/lang/String;
    .end local v21           #paths:[Ljava/lang/String;
    .end local v24           #state:Ljava/lang/String;
    .end local v25           #states:[Ljava/lang/String;
    :catchall_0
    move-exception v29

    :try_start_3
    monitor-exit v30
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v29
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 660
    :catch_0
    move-exception v8

    .line 661
    .local v8, ex:Ljava/lang/Exception;
    const-string v29, "MountService"

    const-string v30, "Boot-time mount exception"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 665
    .end local v8           #ex:Ljava/lang/Exception;
    :cond_2
    :goto_3
    :try_start_5
    const-string v24, "externalvolumeremoved"

    .line 666
    .restart local v24       #state:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v29, v0

    #getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static/range {v29 .. v29}, Lcom/android/server/MountService;->access$1400(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v29

    const-string v30, "externalvolume"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string v33, "listdisks"

    aput-object v33, v31, v32

    invoke-virtual/range {v29 .. v31}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v29

    const/16 v30, 0x6e

    invoke-static/range {v29 .. v30}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    move-result-object v27

    .line 669
    .local v27, vols:[Ljava/lang/String;
    const/4 v14, 0x0

    .line 670
    .local v14, label:Ljava/lang/String;
    move-object/from16 v5, v27

    .local v5, arr$:[Ljava/lang/String;
    array-length v15, v5

    .local v15, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_4
    if-ge v10, v15, :cond_b

    aget-object v28, v5, v10

    .line 671
    .local v28, volstr:Ljava/lang/String;
    const-string v29, " "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v26

    .line 673
    .local v26, tok:[Ljava/lang/String;
    const/16 v29, 0x0

    aget-object v14, v26, v29

    .line 674
    const/16 v29, 0x1

    aget-object v29, v26, v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 675
    .local v23, st:I
    if-nez v23, :cond_6

    .line 676
    const-string v24, "externalvolumeremoved"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 670
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 628
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v10           #i$:I
    .end local v14           #label:Ljava/lang/String;
    .end local v15           #len$:I
    .end local v23           #st:I
    .end local v26           #tok:[Ljava/lang/String;
    .end local v27           #vols:[Ljava/lang/String;
    .end local v28           #volstr:Ljava/lang/String;
    .restart local v6       #count:I
    .restart local v9       #i:I
    .restart local v13       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v20       #path:Ljava/lang/String;
    .restart local v21       #paths:[Ljava/lang/String;
    .restart local v25       #states:[Ljava/lang/String;
    :cond_3
    :try_start_6
    const-string v29, "shared"

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_1

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x7

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    move-object/from16 v2, v20

    move/from16 v3, v31

    move/from16 v4, v32

    #calls: Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/MountService;->access$800(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_2

    .line 645
    .end local v20           #path:Ljava/lang/String;
    .end local v24           #state:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v29, v0

    #getter for: Lcom/android/server/MountService;->mEmulateExternalStorage:Z
    invoke-static/range {v29 .. v29}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;)Z

    move-result v29

    if-eqz v29, :cond_5

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    const/16 v33, 0x4

    #calls: Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static/range {v29 .. v33}, Lcom/android/server/MountService;->access$800(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V

    .line 656
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v29, v0

    #getter for: Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z
    invoke-static/range {v29 .. v29}, Lcom/android/server/MountService;->access$1200(Lcom/android/server/MountService;)Z

    move-result v29

    if-eqz v29, :cond_2

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    #calls: Lcom/android/server/MountService;->sendUmsIntent(Z)V
    invoke-static/range {v29 .. v30}, Lcom/android/server/MountService;->access$1300(Lcom/android/server/MountService;Z)V

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    #setter for: Lcom/android/server/MountService;->mSendUmsConnectedOnBoot:Z
    invoke-static/range {v29 .. v30}, Lcom/android/server/MountService;->access$1202(Lcom/android/server/MountService;Z)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_3

    .line 677
    .end local v6           #count:I
    .end local v9           #i:I
    .end local v13           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v21           #paths:[Ljava/lang/String;
    .end local v25           #states:[Ljava/lang/String;
    .restart local v5       #arr$:[Ljava/lang/String;
    .restart local v10       #i$:I
    .restart local v14       #label:Ljava/lang/String;
    .restart local v15       #len$:I
    .restart local v23       #st:I
    .restart local v24       #state:Ljava/lang/String;
    .restart local v26       #tok:[Ljava/lang/String;
    .restart local v27       #vols:[Ljava/lang/String;
    .restart local v28       #volstr:Ljava/lang/String;
    :cond_6
    const/16 v29, 0x1

    move/from16 v0, v23

    move/from16 v1, v29

    if-ne v0, v1, :cond_7

    .line 678
    :try_start_7
    const-string v24, "externalvolumeunmounted"

    goto/16 :goto_5

    .line 679
    :cond_7
    const/16 v29, 0x4

    move/from16 v0, v23

    move/from16 v1, v29

    if-ne v0, v1, :cond_9

    .line 680
    const-string v24, "externalvolumemounted"

    .line 681
    const-string v29, "MountService"

    const-string v30, "Media already mounted on daemon connection"

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_5

    .line 711
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v10           #i$:I
    .end local v14           #label:Ljava/lang/String;
    .end local v15           #len$:I
    .end local v23           #st:I
    .end local v24           #state:Ljava/lang/String;
    .end local v26           #tok:[Ljava/lang/String;
    .end local v27           #vols:[Ljava/lang/String;
    .end local v28           #volstr:Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 712
    .local v7, e:Ljava/lang/Exception;
    const-string v29, "MountService"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "e = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    .end local v7           #e:Ljava/lang/Exception;
    :cond_8
    return-void

    .line 682
    .restart local v5       #arr$:[Ljava/lang/String;
    .restart local v10       #i$:I
    .restart local v14       #label:Ljava/lang/String;
    .restart local v15       #len$:I
    .restart local v23       #st:I
    .restart local v24       #state:Ljava/lang/String;
    .restart local v26       #tok:[Ljava/lang/String;
    .restart local v27       #vols:[Ljava/lang/String;
    .restart local v28       #volstr:Ljava/lang/String;
    :cond_9
    const/16 v29, 0x5

    move/from16 v0, v23

    move/from16 v1, v29

    if-ne v0, v1, :cond_a

    .line 683
    :try_start_8
    const-string v24, "externalvolumeunmounting"

    goto/16 :goto_5

    .line 685
    :cond_a
    new-instance v29, Ljava/lang/Exception;

    const-string v30, "Unexpected state %d"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v29

    .line 689
    .end local v23           #st:I
    .end local v26           #tok:[Ljava/lang/String;
    .end local v28           #volstr:Ljava/lang/String;
    :cond_b
    if-eqz v24, :cond_c

    if-eqz v14, :cond_c

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v29, v0

    #getter for: Lcom/android/server/MountService;->mDiskList:Ljava/util/ArrayList;
    invoke-static/range {v29 .. v29}, Lcom/android/server/MountService;->access$1500(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v29

    add-int/lit8 v11, v29, 0x1

    .line 691
    .local v11, index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v29, v0

    #getter for: Lcom/android/server/MountService;->mContext:Landroid/content/Context;
    invoke-static/range {v29 .. v29}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v29

    const v30, 0x1040597

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    aput-object v33, v31, v32

    invoke-virtual/range {v29 .. v31}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 692
    .local v17, name:Ljava/lang/String;
    new-instance v12, Landroid/os/storage/DiskInfo;

    move-object/from16 v0, v17

    invoke-direct {v12, v0, v14}, Landroid/os/storage/DiskInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    .local v12, info:Landroid/os/storage/DiskInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v29, v0

    #getter for: Lcom/android/server/MountService;->mDiskList:Ljava/util/ArrayList;
    invoke-static/range {v29 .. v29}, Lcom/android/server/MountService;->access$1500(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    move-object/from16 v2, v24

    #calls: Lcom/android/server/MountService;->updateExternalVolumeState(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/MountService;->access$1600(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    .end local v11           #index:I
    .end local v12           #info:Landroid/os/storage/DiskInfo;
    .end local v17           #name:Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v29, v0

    #getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static/range {v29 .. v29}, Lcom/android/server/MountService;->access$1400(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v29

    const-string v30, "externalvolume"

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const-string v33, "listpartitions"

    aput-object v33, v31, v32

    invoke-virtual/range {v29 .. v31}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v29

    const/16 v30, 0x6e

    invoke-static/range {v29 .. v30}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    move-result-object v18

    .line 700
    .local v18, parts:[Ljava/lang/String;
    const/16 v16, 0x0

    .line 701
    .local v16, mountPoint:Ljava/lang/String;
    move-object/from16 v5, v18

    array-length v15, v5

    const/4 v10, 0x0

    :goto_6
    if-ge v10, v15, :cond_8

    aget-object v19, v5, v10

    .line 702
    .local v19, partstr:Ljava/lang/String;
    const-string v29, " "

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v26

    .line 704
    .restart local v26       #tok:[Ljava/lang/String;
    const/16 v29, 0x0

    aget-object v14, v26, v29

    .line 705
    const/16 v29, 0x1

    aget-object v16, v26, v29

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    #calls: Lcom/android/server/MountService;->findDiskIndex(Ljava/lang/String;)I
    invoke-static {v0, v14}, Lcom/android/server/MountService;->access$1700(Lcom/android/server/MountService;Ljava/lang/String;)I

    move-result v11

    .line 707
    .restart local v11       #index:I
    const/16 v29, -0x1

    move/from16 v0, v29

    if-eq v11, v0, :cond_d

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    move-object/from16 v29, v0

    #getter for: Lcom/android/server/MountService;->mDiskList:Ljava/util/ArrayList;
    invoke-static/range {v29 .. v29}, Lcom/android/server/MountService;->access$1500(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/os/storage/DiskInfo;

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/storage/DiskInfo;->add(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 701
    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_6
.end method
