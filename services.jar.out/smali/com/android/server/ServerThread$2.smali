.class Lcom/android/server/ServerThread$2;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ServerThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ServerThread;


# direct methods
.method constructor <init>(Lcom/android/server/ServerThread;)V
    .locals 0
    .parameter

    .prologue
    .line 1044
    iput-object p1, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1047
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v3, 0x32

    if-ge v1, v3, :cond_1

    .line 1048
    const/4 v2, 0x0

    .line 1049
    .local v2, snt:I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    #calls: Lcom/android/server/ServerThread;->isWifiTestMode()Z
    invoke-static {v3}, Lcom/android/server/ServerThread;->access$000(Lcom/android/server/ServerThread;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1050
    invoke-static {}, Lcom/android/server/SystemServer;->setAdbName()I

    move-result v2

    .line 1053
    :cond_0
    if-ltz v2, :cond_2

    .line 1054
    const-string v3, "SystemServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set adb sn successful! i =: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    iget-object v3, p0, Lcom/android/server/ServerThread$2;->this$0:Lcom/android/server/ServerThread;

    #calls: Lcom/android/server/ServerThread;->resetAdb()V
    invoke-static {v3}, Lcom/android/server/ServerThread;->access$100(Lcom/android/server/ServerThread;)V

    .line 1064
    .end local v2           #snt:I
    :cond_1
    :goto_1
    return-void

    .line 1058
    .restart local v2       #snt:I
    :cond_2
    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4}, Lcom/android/server/ServerThread$2;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1047
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1060
    :catch_0
    move-exception v0

    .line 1062
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
