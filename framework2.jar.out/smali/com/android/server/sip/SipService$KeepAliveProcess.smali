.class Lcom/android/server/sip/SipService$KeepAliveProcess;
.super Ljava/lang/Object;
.source "SipService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeepAliveProcess"
.end annotation


# static fields
.field private static final INTERVAL:I = 0x384

.field private static final INTERVAL_MOBILE_NET:I = 0x122

.field private static final TAG:Ljava/lang/String; = "\\KEEPALIVE/"


# instance fields
.field private mKeepAliveLockSync:Ljava/lang/Object;

.field private mRunning:Z

.field private mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

.field final synthetic this$0:Lcom/android/server/sip/SipService;


# direct methods
.method public constructor <init>(Lcom/android/server/sip/SipService;Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;)V
    .locals 1
    .parameter
    .parameter "session"

    .prologue
    .line 1172
    iput-object p1, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->this$0:Lcom/android/server/sip/SipService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->mRunning:Z

    .line 1171
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->mKeepAliveLockSync:Ljava/lang/Object;

    .line 1173
    iput-object p2, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 1174
    return-void
.end method


# virtual methods
.method public getInterval()I
    .locals 3

    .prologue
    .line 1176
    const/16 v0, 0x384

    .line 1177
    .local v0, interval:I
    iget-object v2, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mMobileConnected:Z
    invoke-static {v2}, Lcom/android/server/sip/SipService;->access$1200(Lcom/android/server/sip/SipService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1200
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v1

    .line 1201
    .local v1, proxyHost:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1202
    iget-object v2, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mKeepAliveInterval:I
    invoke-static {v2}, Lcom/android/server/sip/SipService;->access$700(Lcom/android/server/sip/SipService;)I

    move-result v0

    .line 1203
    const/16 v2, 0x384

    if-le v0, v2, :cond_1

    .line 1204
    const/16 v0, 0x384

    .line 1210
    .end local v1           #proxyHost:Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .line 1205
    .restart local v1       #proxyHost:Ljava/lang/String;
    :cond_1
    const/16 v2, 0x122

    if-ge v0, v2, :cond_0

    .line 1206
    const/16 v0, 0x122

    goto :goto_0
.end method

.method public run()V
    .locals 9

    .prologue
    const/16 v8, 0x122

    const/16 v7, 0x384

    .line 1222
    iget-object v4, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->mKeepAliveLockSync:Ljava/lang/Object;

    monitor-enter v4

    .line 1223
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->mRunning:Z

    if-nez v3, :cond_0

    monitor-exit v4

    .line 1264
    :goto_0
    return-void

    .line 1225
    :cond_0
    iget-object v3, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->this$0:Lcom/android/server/sip/SipService;

    #calls: Lcom/android/server/sip/SipService;->isSipLogEnable()Z
    invoke-static {v3}, Lcom/android/server/sip/SipService;->access$600(Lcom/android/server/sip/SipService;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "\\KEEPALIVE/"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "~~~ keepalive: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v6}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    :cond_1
    iget-object v3, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v3}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->duplicate()Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1229
    .local v1, session:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :try_start_1
    iget-object v3, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->this$0:Lcom/android/server/sip/SipService;

    invoke-virtual {v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->sendKeepAlive()Z

    move-result v5

    #setter for: Lcom/android/server/sip/SipService;->mSendOptionSuccess:Z
    invoke-static {v3, v5}, Lcom/android/server/sip/SipService;->access$1302(Lcom/android/server/sip/SipService;Z)Z

    .line 1230
    iget-object v3, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mSendOptionSuccess:Z
    invoke-static {v3}, Lcom/android/server/sip/SipService;->access$1300(Lcom/android/server/sip/SipService;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mAdustIntervalUp:Z
    invoke-static {v3}, Lcom/android/server/sip/SipService;->access$1400(Lcom/android/server/sip/SipService;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1231
    iget-object v3, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->this$0:Lcom/android/server/sip/SipService;

    const/4 v5, 0x0

    #setter for: Lcom/android/server/sip/SipService;->mNeedAdustInterval:Z
    invoke-static {v3, v5}, Lcom/android/server/sip/SipService;->access$1502(Lcom/android/server/sip/SipService;Z)Z

    .line 1232
    iget-object v3, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->this$0:Lcom/android/server/sip/SipService;

    #calls: Lcom/android/server/sip/SipService;->isSipLogEnable()Z
    invoke-static {v3}, Lcom/android/server/sip/SipService;->access$600(Lcom/android/server/sip/SipService;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "\\KEEPALIVE/"

    const-string v5, "mNeedAdustInterval = false;"

    invoke-static {v3, v5}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    :cond_2
    iget-object v3, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mSendOptionSuccess:Z
    invoke-static {v3}, Lcom/android/server/sip/SipService;->access$1300(Lcom/android/server/sip/SipService;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mNeedAdustInterval:Z
    invoke-static {v3}, Lcom/android/server/sip/SipService;->access$1500(Lcom/android/server/sip/SipService;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1235
    iget-object v3, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->this$0:Lcom/android/server/sip/SipService;

    const/4 v5, 0x1

    #setter for: Lcom/android/server/sip/SipService;->mAdustIntervalUp:Z
    invoke-static {v3, v5}, Lcom/android/server/sip/SipService;->access$1402(Lcom/android/server/sip/SipService;Z)Z

    .line 1236
    iget-object v3, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mKeepAliveInterval:I
    invoke-static {v3}, Lcom/android/server/sip/SipService;->access$700(Lcom/android/server/sip/SipService;)I

    move-result v3

    if-ne v3, v7, :cond_5

    .line 1237
    iget-object v3, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->this$0:Lcom/android/server/sip/SipService;

    const/4 v5, 0x0

    #setter for: Lcom/android/server/sip/SipService;->mNeedAdustInterval:Z
    invoke-static {v3, v5}, Lcom/android/server/sip/SipService;->access$1502(Lcom/android/server/sip/SipService;Z)Z

    .line 1253
    :cond_3
    :goto_1
    invoke-virtual {v1}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->isReRegisterRequired()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1256
    iget-object v3, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->this$0:Lcom/android/server/sip/SipService;

    const/4 v5, 0x1

    #setter for: Lcom/android/server/sip/SipService;->mReregister:Z
    invoke-static {v3, v5}, Lcom/android/server/sip/SipService;->access$1602(Lcom/android/server/sip/SipService;Z)Z

    .line 1257
    iget-object v3, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mMyWakeLock:Lcom/android/server/sip/SipWakeLock;
    invoke-static {v3}, Lcom/android/server/sip/SipService;->access$400(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeLock;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v3, v5}, Lcom/android/server/sip/SipWakeLock;->acquire(Ljava/lang/Object;)V

    .line 1258
    iget-object v3, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    const/16 v5, 0xe10

    invoke-virtual {v3, v5}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->register(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1263
    :cond_4
    :goto_2
    :try_start_2
    monitor-exit v4

    goto/16 :goto_0

    .end local v1           #session:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1239
    .restart local v1       #session:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;
    :cond_5
    :try_start_3
    iget-object v3, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mKeepAliveInterval:I
    invoke-static {v3}, Lcom/android/server/sip/SipService;->access$700(Lcom/android/server/sip/SipService;)I

    move-result v3

    if-ge v3, v8, :cond_6

    .line 1240
    iget-object v3, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->this$0:Lcom/android/server/sip/SipService;

    const/16 v5, 0x122

    #setter for: Lcom/android/server/sip/SipService;->mKeepAliveInterval:I
    invoke-static {v3, v5}, Lcom/android/server/sip/SipService;->access$702(Lcom/android/server/sip/SipService;I)I

    .line 1242
    :cond_6
    iget-object v3, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->this$0:Lcom/android/server/sip/SipService;

    const/16 v5, 0x3c

    invoke-static {v3, v5}, Lcom/android/server/sip/SipService;->access$712(Lcom/android/server/sip/SipService;I)I

    .line 1243
    iget-object v3, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mKeepAliveInterval:I
    invoke-static {v3}, Lcom/android/server/sip/SipService;->access$700(Lcom/android/server/sip/SipService;)I

    move-result v3

    if-le v3, v7, :cond_7

    .line 1244
    iget-object v3, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->this$0:Lcom/android/server/sip/SipService;

    const/16 v5, 0x384

    #setter for: Lcom/android/server/sip/SipService;->mKeepAliveInterval:I
    invoke-static {v3, v5}, Lcom/android/server/sip/SipService;->access$702(Lcom/android/server/sip/SipService;I)I

    .line 1246
    :cond_7
    iget-object v3, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mTimer:Lcom/android/server/sip/SipWakeupTimer;
    invoke-static {v3}, Lcom/android/server/sip/SipService;->access$300(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeupTimer;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/server/sip/SipWakeupTimer;->cancel(Ljava/lang/Runnable;)V

    .line 1247
    invoke-virtual {p0}, Lcom/android/server/sip/SipService$KeepAliveProcess;->getInterval()I

    move-result v0

    .line 1249
    .local v0, period:I
    iget-object v3, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mTimer:Lcom/android/server/sip/SipWakeupTimer;
    invoke-static {v3}, Lcom/android/server/sip/SipService;->access$300(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeupTimer;

    move-result-object v3

    mul-int/lit16 v5, v0, 0x3e8

    invoke-virtual {v3, v5, p0}, Lcom/android/server/sip/SipWakeupTimer;->set(ILjava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 1260
    .end local v0           #period:I
    :catch_0
    move-exception v2

    .line 1261
    .local v2, t:Ljava/lang/Throwable;
    :try_start_4
    iget-object v3, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->this$0:Lcom/android/server/sip/SipService;

    #calls: Lcom/android/server/sip/SipService;->isSipLogEnable()Z
    invoke-static {v3}, Lcom/android/server/sip/SipService;->access$600(Lcom/android/server/sip/SipService;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "\\KEEPALIVE/"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "keepalive error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/net/sip/Utility;->WriteLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public start()V
    .locals 3

    .prologue
    .line 1213
    iget-boolean v1, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->mRunning:Z

    if-eqz v1, :cond_0

    .line 1218
    :goto_0
    return-void

    .line 1214
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->mRunning:Z

    .line 1215
    invoke-virtual {p0}, Lcom/android/server/sip/SipService$KeepAliveProcess;->getInterval()I

    move-result v0

    .line 1217
    .local v0, period:I
    iget-object v1, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mTimer:Lcom/android/server/sip/SipWakeupTimer;
    invoke-static {v1}, Lcom/android/server/sip/SipService;->access$300(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeupTimer;

    move-result-object v1

    mul-int/lit16 v2, v0, 0x3e8

    invoke-virtual {v1, v2, p0}, Lcom/android/server/sip/SipWakeupTimer;->set(ILjava/lang/Runnable;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->this$0:Lcom/android/server/sip/SipService;

    #calls: Lcom/android/server/sip/SipService;->isSipLogEnable()Z
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$600(Lcom/android/server/sip/SipService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    if-eqz v0, :cond_0

    const-string v0, "\\KEEPALIVE/"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop keepalive:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    invoke-virtual {v2}, Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;->getLocalProfile()Landroid/net/sip/SipProfile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->mRunning:Z

    .line 1270
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->mSession:Lcom/android/server/sip/SipSessionGroup$SipSessionImpl;

    .line 1271
    iget-object v0, p0, Lcom/android/server/sip/SipService$KeepAliveProcess;->this$0:Lcom/android/server/sip/SipService;

    #getter for: Lcom/android/server/sip/SipService;->mTimer:Lcom/android/server/sip/SipWakeupTimer;
    invoke-static {v0}, Lcom/android/server/sip/SipService;->access$300(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipWakeupTimer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/sip/SipWakeupTimer;->cancel(Ljava/lang/Runnable;)V

    .line 1272
    return-void
.end method
