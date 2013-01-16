.class abstract Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$CheckSimPin;
.super Ljava/lang/Thread;
.source "PasswordAndSimUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CheckSimPin"
.end annotation


# instance fields
.field private final mPin:Ljava/lang/String;

.field final synthetic this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;


# direct methods
.method protected constructor <init>(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "pin"

    .prologue
    .line 787
    iput-object p1, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$CheckSimPin;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 788
    iput-object p2, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$CheckSimPin;->mPin:Ljava/lang/String;

    .line 789
    return-void
.end method


# virtual methods
.method abstract onSimLockChangedResponse(Z)V
.end method

.method public run()V
    .locals 4

    .prologue
    .line 796
    :try_start_0
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$CheckSimPin;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/meizu/internal/policy/impl/LockViewBaseSe;->mIsChecking:Z

    .line 797
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$CheckSimPin;->mPin:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->supplyPin(Ljava/lang/String;)Z

    move-result v1

    .line 799
    .local v1, result:Z
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$CheckSimPin;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    new-instance v3, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$CheckSimPin$1;

    invoke-direct {v3, p0, v1}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$CheckSimPin$1;-><init>(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$CheckSimPin;Z)V

    invoke-virtual {v2, v3}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 811
    .end local v1           #result:Z
    :goto_0
    return-void

    .line 804
    :catch_0
    move-exception v0

    .line 805
    .local v0, e:Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$CheckSimPin;->this$0:Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;

    new-instance v3, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$CheckSimPin$2;

    invoke-direct {v3, p0}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$CheckSimPin$2;-><init>(Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen$CheckSimPin;)V

    invoke-virtual {v2, v3}, Lcom/meizu/internal/policy/impl/PasswordAndSimUnlockScreen;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
