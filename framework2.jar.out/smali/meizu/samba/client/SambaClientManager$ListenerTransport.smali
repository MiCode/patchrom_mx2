.class Lmeizu/samba/client/SambaClientManager$ListenerTransport;
.super Lmeizu/samba/client/ISambaStatusListener$Stub;
.source "SambaClientManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmeizu/samba/client/SambaClientManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListenerTransport"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmeizu/samba/client/SambaClientManager$ListenerTransport$ScanResults;
    }
.end annotation


# static fields
.field private static final TYPE_MOUNT_CHANGED:I = 0x1

.field private static final TYPE_SCAN_RESULTS:I = 0x2


# instance fields
.field private mListener:Lmeizu/samba/client/SambaStatusListener;

.field private final mListenerHandler:Landroid/os/Handler;

.field final synthetic this$0:Lmeizu/samba/client/SambaClientManager;


# direct methods
.method public constructor <init>(Lmeizu/samba/client/SambaClientManager;Lmeizu/samba/client/SambaStatusListener;Landroid/os/Looper;)V
    .locals 1
    .parameter
    .parameter "listener"
    .parameter "looper"

    .prologue
    .line 73
    iput-object p1, p0, Lmeizu/samba/client/SambaClientManager$ListenerTransport;->this$0:Lmeizu/samba/client/SambaClientManager;

    invoke-direct {p0}, Lmeizu/samba/client/ISambaStatusListener$Stub;-><init>()V

    .line 74
    iput-object p2, p0, Lmeizu/samba/client/SambaClientManager$ListenerTransport;->mListener:Lmeizu/samba/client/SambaStatusListener;

    .line 76
    if-nez p3, :cond_0

    .line 77
    new-instance v0, Lmeizu/samba/client/SambaClientManager$ListenerTransport$1;

    invoke-direct {v0, p0, p1}, Lmeizu/samba/client/SambaClientManager$ListenerTransport$1;-><init>(Lmeizu/samba/client/SambaClientManager$ListenerTransport;Lmeizu/samba/client/SambaClientManager;)V

    iput-object v0, p0, Lmeizu/samba/client/SambaClientManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    .line 91
    :goto_0
    return-void

    .line 84
    :cond_0
    new-instance v0, Lmeizu/samba/client/SambaClientManager$ListenerTransport$2;

    invoke-direct {v0, p0, p3, p1}, Lmeizu/samba/client/SambaClientManager$ListenerTransport$2;-><init>(Lmeizu/samba/client/SambaClientManager$ListenerTransport;Landroid/os/Looper;Lmeizu/samba/client/SambaClientManager;)V

    iput-object v0, p0, Lmeizu/samba/client/SambaClientManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method private _handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 116
    const-string v4, "SambaClientManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 131
    :goto_0
    return-void

    .line 119
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 120
    .local v0, b:Landroid/os/Bundle;
    const-string v4, "point"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, point:Ljava/lang/String;
    const-string v4, "status"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 122
    .local v3, status:Ljava/lang/String;
    iget-object v4, p0, Lmeizu/samba/client/SambaClientManager$ListenerTransport;->mListener:Lmeizu/samba/client/SambaStatusListener;

    invoke-interface {v4, v1, v3}, Lmeizu/samba/client/SambaStatusListener;->onMountPointChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 125
    .end local v0           #b:Landroid/os/Bundle;
    .end local v1           #point:Ljava/lang/String;
    .end local v3           #status:Ljava/lang/String;
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lmeizu/samba/client/SambaClientManager$ListenerTransport$ScanResults;

    .line 126
    .local v2, results:Lmeizu/samba/client/SambaClientManager$ListenerTransport$ScanResults;
    iget-object v4, p0, Lmeizu/samba/client/SambaClientManager$ListenerTransport;->mListener:Lmeizu/samba/client/SambaStatusListener;

    iget-object v5, v2, Lmeizu/samba/client/SambaClientManager$ListenerTransport$ScanResults;->addr:Ljava/lang/String;

    iget-object v6, v2, Lmeizu/samba/client/SambaClientManager$ListenerTransport$ScanResults;->folderList:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Lmeizu/samba/client/SambaStatusListener;->onScanResults(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$000(Lmeizu/samba/client/SambaClientManager$ListenerTransport;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lmeizu/samba/client/SambaClientManager$ListenerTransport;->_handleMessage(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public onMountPointChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "point"
    .parameter "status"

    .prologue
    .line 94
    const-string v2, "SambaClientManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMountPointChanged:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 96
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 97
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 98
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "point"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v2, "status"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 101
    iget-object v2, p0, Lmeizu/samba/client/SambaClientManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 102
    return-void
.end method

.method public onScanResults(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "remoteAddresses"
    .parameter "folderList"

    .prologue
    .line 105
    const-string v2, "SambaClientManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onScanResults:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 107
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v0, Landroid/os/Message;->what:I

    .line 108
    new-instance v1, Lmeizu/samba/client/SambaClientManager$ListenerTransport$ScanResults;

    invoke-direct {v1, p0}, Lmeizu/samba/client/SambaClientManager$ListenerTransport$ScanResults;-><init>(Lmeizu/samba/client/SambaClientManager$ListenerTransport;)V

    .line 109
    .local v1, results:Lmeizu/samba/client/SambaClientManager$ListenerTransport$ScanResults;
    iput-object p1, v1, Lmeizu/samba/client/SambaClientManager$ListenerTransport$ScanResults;->addr:Ljava/lang/String;

    .line 110
    iput-object p2, v1, Lmeizu/samba/client/SambaClientManager$ListenerTransport$ScanResults;->folderList:Ljava/lang/String;

    .line 111
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 112
    iget-object v2, p0, Lmeizu/samba/client/SambaClientManager$ListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 113
    return-void
.end method
