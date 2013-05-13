.class Lcom/android/server/pm/ShutdownThread$2$1;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/ShutdownThread$2;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/ShutdownThread$2;


# direct methods
.method constructor <init>(Lcom/android/server/pm/ShutdownThread$2;)V
    .locals 0
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/server/pm/ShutdownThread$2$1;->this$0:Lcom/android/server/pm/ShutdownThread$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 243
    :try_start_0
    invoke-static {}, Lcom/android/server/pm/ShutdownThread;->access$400()Landroid/content/Context;

    move-result-object v1

    const-string v2, "file:///system/media/audio/ui/shutdown_chinaunicom.mp3"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/ShutdownThread;->access$302(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 246
    invoke-static {}, Lcom/android/server/pm/ShutdownThread;->access$300()Landroid/media/MediaPlayer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 247
    invoke-static {}, Lcom/android/server/pm/ShutdownThread;->access$300()Landroid/media/MediaPlayer;

    move-result-object v1

    const/high16 v2, 0x3e80

    const/high16 v3, 0x3e80

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 248
    invoke-static {}, Lcom/android/server/pm/ShutdownThread;->access$300()Landroid/media/MediaPlayer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 249
    invoke-static {}, Lcom/android/server/pm/ShutdownThread;->access$300()Landroid/media/MediaPlayer;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/ShutdownThread$2$1$1;

    invoke-direct {v2, p0}, Lcom/android/server/pm/ShutdownThread$2$1$1;-><init>(Lcom/android/server/pm/ShutdownThread$2$1;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 255
    invoke-static {}, Lcom/android/server/pm/ShutdownThread;->access$300()Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ShutdownThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shutdown creat music ex"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
