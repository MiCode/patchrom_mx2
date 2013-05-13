.class final Lcom/android/internal/policy/impl/PhoneWindowManager$DoubleKeyThread;
.super Ljava/lang/Thread;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DoubleKeyThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 2
    .parameter

    .prologue
    .line 6256
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$DoubleKeyThread;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 6258
    const-string v0, "WindowManager"

    const-string v1, "Start DoubleKeyThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6259
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$DoubleKeyThread;->start()V

    .line 6260
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 6265
    const-wide/16 v2, 0xe6

    :try_start_0
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$DoubleKeyThread;->sleep(J)V

    .line 6267
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v2, 0x1e

    if-ge v1, v2, :cond_0

    .line 6268
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$DoubleKeyThread;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mDoubleKeyWaitAgain:Z

    if-eqz v2, :cond_0

    .line 6269
    const-wide/16 v2, 0x14

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$DoubleKeyThread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6267
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6275
    .end local v1           #i:I
    :catch_0
    move-exception v0

    .line 6278
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "WindowManager"

    const-string v3, "Interrupt the DoubleKeyThread"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6281
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    const-string v2, "WindowManager"

    const-string v3, "End DoubleKeyThread"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6282
    return-void
.end method
