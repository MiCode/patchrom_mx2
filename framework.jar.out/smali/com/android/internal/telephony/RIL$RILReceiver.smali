.class Lcom/android/internal/telephony/RIL$RILReceiver;
.super Ljava/lang/Object;
.source "RIL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RILReceiver"
.end annotation


# instance fields
.field buffer:[B

.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .locals 1
    .parameter

    .prologue
    .line 583
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 584
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    .line 585
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/16 v14, 0x8

    .line 589
    const/4 v7, 0x0

    .line 592
    .local v7, retryCount:I
    :goto_0
    const/4 v8, 0x0

    .line 596
    .local v8, s:Landroid/net/LocalSocket;
    :try_start_0
    new-instance v9, Landroid/net/LocalSocket;

    invoke-direct {v9}, Landroid/net/LocalSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 597
    .end local v8           #s:Landroid/net/LocalSocket;
    .local v9, s:Landroid/net/LocalSocket;
    :try_start_1
    new-instance v3, Landroid/net/LocalSocketAddress;

    const-string/jumbo v11, "rild"

    sget-object v12, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v3, v11, v12}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 599
    .local v3, l:Landroid/net/LocalSocketAddress;
    invoke-virtual {v9, v3}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 632
    const/4 v7, 0x0

    .line 634
    :try_start_2
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iput-object v9, v11, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 635
    const-string v11, "RILJ"

    const-string v12, "Connected to \'rild\' socket"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 637
    const/4 v4, 0x0

    .line 639
    .local v4, length:I
    :try_start_3
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v11, v11, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v11}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 644
    .local v2, is:Ljava/io/InputStream;
    :goto_1
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    #calls: Lcom/android/internal/telephony/RIL;->readRilMessage(Ljava/io/InputStream;[B)I
    invoke-static {v2, v11}, Lcom/android/internal/telephony/RIL;->access$500(Ljava/io/InputStream;[B)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    move-result v4

    .line 646
    if-gez v4, :cond_5

    .line 669
    .end local v2           #is:Ljava/io/InputStream;
    :goto_2
    :try_start_4
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v11}, Lcom/android/internal/telephony/RIL;->isResetCompleted()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 670
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/RIL;->setResetCompleted(Z)V

    .line 671
    const-string v11, "RILJ"

    const-string v12, "acquire ResetWakeLock for reset procedure"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v11}, Lcom/android/internal/telephony/RIL;->acquireResetWakeLock()V

    .line 680
    :goto_3
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v11, v11, Lcom/android/internal/telephony/BaseCommands;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "airplane_mode_on"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 684
    .local v0, airplaneMode:I
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v11, v11, Lcom/android/internal/telephony/BaseCommands;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "disable_mobile_radio"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 687
    .local v5, mobileRadioMode:I
    if-gtz v5, :cond_0

    if-lez v0, :cond_1

    .line 688
    :cond_0
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v11}, Lcom/android/internal/telephony/RIL;->isResetCompleted()Z

    move-result v11

    if-nez v11, :cond_1

    .line 689
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/RIL;->setResetCompleted(Z)V

    .line 690
    const-string v11, "RILJ"

    const-string/jumbo v12, "release ResetWakeLock for mobileRadioMode"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v11}, Lcom/android/internal/telephony/RIL;->releaseResetWakeLock()V

    .line 696
    :cond_1
    const-string v11, "RILJ"

    const-string v12, "Disconnected from \'rild\' socket"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    sget-object v12, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 702
    :try_start_5
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v11, v11, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v11}, Landroid/net/LocalSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 706
    :goto_4
    :try_start_6
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v12, 0x0

    iput-object v12, v11, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 707
    invoke-static {}, Lcom/android/internal/telephony/RILRequest;->resetSerial()V

    .line 710
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v12, 0x1

    const/4 v13, 0x0

    #calls: Lcom/android/internal/telephony/RIL;->clearRequestsList(IZ)V
    invoke-static {v11, v12, v13}, Lcom/android/internal/telephony/RIL;->access$700(Lcom/android/internal/telephony/RIL;IZ)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 711
    .end local v0           #airplaneMode:I
    .end local v3           #l:Landroid/net/LocalSocketAddress;
    .end local v4           #length:I
    .end local v5           #mobileRadioMode:I
    :catch_0
    move-exception v10

    move-object v8, v9

    .line 712
    .end local v9           #s:Landroid/net/LocalSocket;
    .restart local v8       #s:Landroid/net/LocalSocket;
    .local v10, tr:Ljava/lang/Throwable;
    :goto_5
    const-string v11, "RILJ"

    const-string v12, "Uncaught exception"

    invoke-static {v11, v12, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 716
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v12, -0x1

    #calls: Lcom/android/internal/telephony/RIL;->notifyRegistrantsRilConnectionChanged(I)V
    invoke-static {v11, v12}, Lcom/android/internal/telephony/RIL;->access$800(Lcom/android/internal/telephony/RIL;I)V

    .line 717
    return-void

    .line 600
    .end local v10           #tr:Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 602
    .local v1, ex:Ljava/io/IOException;
    :goto_6
    if-eqz v8, :cond_2

    .line 603
    :try_start_7
    invoke-virtual {v8}, Landroid/net/LocalSocket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    .line 612
    :cond_2
    :goto_7
    if-ne v7, v14, :cond_4

    .line 613
    :try_start_8
    const-string v11, "RILJ"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Couldn\'t find \'rild\' socket after "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " times, continuing to retry silently"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    .line 624
    :cond_3
    :goto_8
    const-wide/16 v11, 0xfa0

    :try_start_9
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2

    .line 628
    :goto_9
    add-int/lit8 v7, v7, 0x1

    .line 629
    goto/16 :goto_0

    .line 617
    :cond_4
    if-lez v7, :cond_3

    if-ge v7, v14, :cond_3

    .line 618
    :try_start_a
    const-string v11, "RILJ"

    const-string v12, "Couldn\'t find \'rild\' socket; retrying after timeout"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_8

    .line 711
    .end local v1           #ex:Ljava/io/IOException;
    :catch_2
    move-exception v10

    goto :goto_5

    .line 651
    .end local v8           #s:Landroid/net/LocalSocket;
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v3       #l:Landroid/net/LocalSocketAddress;
    .restart local v4       #length:I
    .restart local v9       #s:Landroid/net/LocalSocket;
    :cond_5
    :try_start_b
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 652
    .local v6, p:Landroid/os/Parcel;
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    const/4 v12, 0x0

    invoke-virtual {v6, v11, v12, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 653
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 657
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    #calls: Lcom/android/internal/telephony/RIL;->processResponse(Landroid/os/Parcel;)V
    invoke-static {v11, v6}, Lcom/android/internal/telephony/RIL;->access$600(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)V

    .line 658
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_1

    .line 660
    .end local v2           #is:Ljava/io/InputStream;
    .end local v6           #p:Landroid/os/Parcel;
    :catch_3
    move-exception v1

    .line 661
    .restart local v1       #ex:Ljava/io/IOException;
    :try_start_c
    const-string v11, "RILJ"

    const-string v12, "\'rild\' socket closed"

    invoke-static {v11, v12, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 663
    .end local v1           #ex:Ljava/io/IOException;
    :catch_4
    move-exception v10

    .line 664
    .restart local v10       #tr:Ljava/lang/Throwable;
    const-string v11, "RILJ"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Uncaught exception read length="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "Exception:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 674
    .end local v10           #tr:Ljava/lang/Throwable;
    :cond_6
    const-string v11, "RILJ"

    const-string/jumbo v12, "release and acquire resetWakeLock again for interruptted reset procedure"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v11}, Lcom/android/internal/telephony/RIL;->releaseResetWakeLock()V

    .line 676
    iget-object v11, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v11}, Lcom/android/internal/telephony/RIL;->acquireResetWakeLock()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_3

    .line 605
    .end local v3           #l:Landroid/net/LocalSocketAddress;
    .end local v4           #length:I
    .end local v9           #s:Landroid/net/LocalSocket;
    .restart local v1       #ex:Ljava/io/IOException;
    .restart local v8       #s:Landroid/net/LocalSocket;
    :catch_5
    move-exception v11

    goto/16 :goto_7

    .line 625
    :catch_6
    move-exception v11

    goto :goto_9

    .line 703
    .end local v1           #ex:Ljava/io/IOException;
    .end local v8           #s:Landroid/net/LocalSocket;
    .restart local v0       #airplaneMode:I
    .restart local v3       #l:Landroid/net/LocalSocketAddress;
    .restart local v4       #length:I
    .restart local v5       #mobileRadioMode:I
    .restart local v9       #s:Landroid/net/LocalSocket;
    :catch_7
    move-exception v11

    goto/16 :goto_4

    .line 600
    .end local v0           #airplaneMode:I
    .end local v3           #l:Landroid/net/LocalSocketAddress;
    .end local v4           #length:I
    .end local v5           #mobileRadioMode:I
    :catch_8
    move-exception v1

    move-object v8, v9

    .end local v9           #s:Landroid/net/LocalSocket;
    .restart local v8       #s:Landroid/net/LocalSocket;
    goto/16 :goto_6
.end method
